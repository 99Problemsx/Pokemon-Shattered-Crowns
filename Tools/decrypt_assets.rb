#!/usr/bin/env ruby
#===============================================================================
# PKE Asset Decryption Tool - Standalone
# Run this BEFORE launching the game to decrypt assets
#===============================================================================

require 'openssl'
require 'zlib'
require 'json'
require 'fileutils'

# Load config
require_relative 'pke_config'

class PKEDecryptor
  MAGIC = "PKE1"
  
  def initialize(config)
    @config = config
    @key = derive_key(config[:encryption_key], config[:key_salt])
    @archives = {}
    @file_index = {}
  end
  
  def derive_key(password, salt)
    OpenSSL::PKCS5.pbkdf2_hmac(password, salt, 10000, 32, OpenSSL::Digest::SHA256.new)
  end
  
  def decrypt_data(data)
    return nil if data.nil? || data.bytesize < 17
    cipher = OpenSSL::Cipher.new('AES-256-CBC')
    cipher.decrypt
    cipher.key = @key
    cipher.iv = data[0, 16]
    cipher.update(data[16..-1]) + cipher.final
  rescue
    nil
  end
  
  def decompress_data(data)
    Zlib::Inflate.inflate(data)
  rescue
    nil
  end
  
  def load_archive_index(archive_path)
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
          length: entry['l']
        }
      end
    end
  end
  
  def decrypt_file(filename, file_info)
    archive_info = @archives[file_info[:archive]]
    return nil unless archive_info
    
    encrypted_data = nil
    File.open(archive_info[:path], 'rb') do |f|
      f.seek(archive_info[:data_start] + file_info[:offset])
      encrypted_data = f.read(file_info[:length])
    end
    
    decrypted = decrypt_data(encrypted_data)
    return nil unless decrypted
    
    decompress_data(decrypted)
  end
  
  def decrypt_all
    encrypted_folder = @config[:output_folder]
    output_folder = "GameData"
    
    puts "Scanning encrypted archives..."
    Dir.glob(File.join(encrypted_folder, '*.pke')).each do |archive|
      puts "  Loading: #{File.basename(archive)}"
      load_archive_index(archive)
    end
    
    total = @file_index.size
    puts "Found #{total} files to decrypt"
    puts
    
    current = 0
    start_time = Time.now
    
    @file_index.each do |filename, file_info|
      current += 1
      
      # Progress bar
      if current % 500 == 0 || current == total
        percent = (current.to_f / total * 100).round(1)
        elapsed = Time.now - start_time
        eta = elapsed / current * (total - current)
        print "\r  Progress: #{percent}% (#{current}/#{total}) - ETA: #{eta.round(0)}s   "
      end
      
      data = decrypt_file(filename, file_info)
      next unless data
      
      output_path = File.join(output_folder, filename)
      output_dir = File.dirname(output_path)
      FileUtils.mkdir_p(output_dir) unless File.directory?(output_dir)
      File.binwrite(output_path, data)
    end
    
    puts
    puts
    puts "Decryption complete!"
    puts "  Files: #{total}"
    puts "  Time: #{(Time.now - start_time).round(1)}s"
    puts "  Output: #{output_folder}/"
  end
end

# Main
if __FILE__ == $0
  unless File.directory?(PKE_CONFIG[:output_folder])
    puts "ERROR: Encrypted folder '#{PKE_CONFIG[:output_folder]}' not found!"
    exit 1
  end
  
  decryptor = PKEDecryptor.new(PKE_CONFIG)
  decryptor.decrypt_all
end
