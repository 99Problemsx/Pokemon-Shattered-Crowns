#===============================================================================
# PKE Loader Plugin - Pre-Decrypt at Startup (mkxp-z compatible)
# Decrypts all assets to temp folder before game loads
#===============================================================================

require 'openssl'
require 'zlib'
require 'json'
require 'fileutils'

module PKELoader
  # Configuration - MUST MATCH encrypt_assets.rb settings!
  ENCRYPTION_KEY = "720sgt3+"
  KEY_SALT = "720sgt3+"
  ENCRYPTED_FOLDER = "EncryptedData"
  TEMP_FOLDER = "GameData"  # Decrypted assets go here
  
  # Magic bytes for validation
  MAGIC = "PKE1"
  
  @archives = {}
  @file_index = {}
  @decrypted = false
  
  #-----------------------------------------------------------------------------
  # Key derivation (must match encryptor)
  #-----------------------------------------------------------------------------
  def self.derive_key
    return @derived_key if @derived_key
    @derived_key = OpenSSL::PKCS5.pbkdf2_hmac(
      ENCRYPTION_KEY, KEY_SALT, 10000, 32, OpenSSL::Digest::SHA256.new
    )
  end
  
  #-----------------------------------------------------------------------------
  # Decrypt data
  #-----------------------------------------------------------------------------
  def self.decrypt_data(encrypted_data)
    return nil if encrypted_data.nil? || encrypted_data.bytesize < 17
    cipher = OpenSSL::Cipher.new('AES-256-CBC')
    cipher.decrypt
    cipher.key = derive_key
    cipher.iv = encrypted_data[0, 16]
    begin
      cipher.update(encrypted_data[16..-1]) + cipher.final
    rescue OpenSSL::Cipher::CipherError
      nil
    end
  end
  
  #-----------------------------------------------------------------------------
  # Decompress data
  #-----------------------------------------------------------------------------
  def self.decompress_data(data)
    Zlib::Inflate.inflate(data)
  rescue Zlib::DataError
    nil
  end
  
  #-----------------------------------------------------------------------------
  # Load archive indices
  #-----------------------------------------------------------------------------
  def self.load_archives
    return if @archives.size > 0
    return unless File.directory?(ENCRYPTED_FOLDER)
    
    Dir.glob(File.join(ENCRYPTED_FOLDER, '*.pke')).each do |archive_path|
      load_archive_index(archive_path)
    end
  end
  
  #-----------------------------------------------------------------------------
  # Load archive file table
  #-----------------------------------------------------------------------------
  def self.load_archive_index(archive_path)
    File.open(archive_path, 'rb') do |f|
      magic = f.read(4)
      return unless magic == MAGIC
      
      version = f.read(1).unpack1('C')
      file_count = f.read(4).unpack1('V')
      table_size = f.read(4).unpack1('V')
      
      encrypted_table = f.read(table_size)
      decrypted = decrypt_data(encrypted_table)
      return unless decrypted
      
      decompressed = decompress_data(decrypted)
      return unless decompressed
      
      table = JSON.parse(decompressed)
      data_start = 4 + 1 + 4 + 4 + table_size
      
      archive_name = File.basename(archive_path)
      @archives[archive_name] = { path: archive_path, data_start: data_start }
      
      table.each do |entry|
        encrypted_name = [entry['n']].pack('H*')
        decrypted_name = decrypt_data(encrypted_name)
        next unless decrypted_name
        
        @file_index[decrypted_name] = {
          archive: archive_name,
          offset: entry['o'],
          length: entry['l'],
          original_size: entry['s']
        }
      end
    end
  rescue => e
    echoln "[PKE] Error: #{e.message}" if $DEBUG
  end
  
  #-----------------------------------------------------------------------------
  # Decrypt single file
  #-----------------------------------------------------------------------------
  def self.decrypt_file(filename, file_info)
    archive_info = @archives[file_info[:archive]]
    return nil unless archive_info
    
    encrypted_data = nil
    File.open(archive_info[:path], 'rb') do |f|
      f.seek(archive_info[:data_start] + file_info[:offset])
      encrypted_data = f.read(file_info[:length])
    end
    return nil unless encrypted_data
    
    decrypted = decrypt_data(encrypted_data)
    return nil unless decrypted
    
    decompress_data(decrypted)
  end
  
  #-----------------------------------------------------------------------------
  # Decrypt all assets to temp folder
  #-----------------------------------------------------------------------------
  def self.decrypt_all
    return if @decrypted
    return unless File.directory?(ENCRYPTED_FOLDER)
    
    load_archives
    return if @file_index.empty?
    
    total = @file_index.size
    current = 0
    
    # Show loading message
    if defined?(pbMessage)
      # We can't use pbMessage before Graphics loads
    end
    
    @file_index.each do |filename, file_info|
      current += 1
      
      # Update progress in window title
      if current % 100 == 0 || current == total
        progress = (current.to_f / total * 100).round
        Graphics.frame_reset if defined?(Graphics)
      end
      
      # Decrypt file
      data = decrypt_file(filename, file_info)
      next unless data
      
      # Write to temp folder
      output_path = File.join(TEMP_FOLDER, filename)
      output_dir = File.dirname(output_path)
      FileUtils.mkdir_p(output_dir) unless File.directory?(output_dir)
      
      File.binwrite(output_path, data)
    end
    
    @decrypted = true
    echoln "[PKE] Decrypted #{total} files to #{TEMP_FOLDER}" if $DEBUG
  end
  
  #-----------------------------------------------------------------------------
  # Check if encrypted data exists
  #-----------------------------------------------------------------------------
  def self.encrypted?
    File.directory?(ENCRYPTED_FOLDER) && Dir.glob(File.join(ENCRYPTED_FOLDER, '*.pke')).any?
  end
  
  #-----------------------------------------------------------------------------
  # Cleanup temp folder
  #-----------------------------------------------------------------------------
  def self.cleanup
    if File.directory?(TEMP_FOLDER)
      FileUtils.rm_rf(TEMP_FOLDER)
    end
  end
end

#===============================================================================
# Decrypt assets before anything else loads
# This happens at script initialization, before game graphics load
#===============================================================================
if PKELoader.encrypted?
  # Check if we need to decrypt (temp folder doesn't exist or is incomplete)
  need_decrypt = !File.directory?(PKELoader::TEMP_FOLDER)
  
  if need_decrypt
    # Create a simple loading window
    begin
      PKELoader.decrypt_all
    rescue => e
      echoln "[PKE] Decryption failed: #{e.message}" if $DEBUG
      raise "PKE Loader Error: Failed to decrypt game assets. #{e.message}"
    end
  end
end

#===============================================================================
# Cleanup on exit (optional - removes decrypted files)
# Comment out if you want to speed up subsequent launches
#===============================================================================
# at_exit { PKELoader.cleanup rescue nil }
