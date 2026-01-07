#!/usr/bin/env ruby
#===============================================================================
# PKE Asset Encryption Tool
# Encrypts game assets into custom .pke archives that standard tools cannot open
#===============================================================================

require 'openssl'
require 'zlib'
require 'fileutils'
require 'digest'
require 'json'

# Load configuration
require_relative 'pke_config'

#===============================================================================
# PKE Encryptor Class
#===============================================================================
class PKEEncryptor
  # Magic bytes identifying PKE format
  MAGIC = "PKE1"
  VERSION = 1
  
  def initialize(config)
    @config = config
    @key = derive_key(config[:encryption_key], config[:key_salt])
    @files_processed = 0
    @total_original_size = 0
    @total_encrypted_size = 0
  end
  
  #-----------------------------------------------------------------------------
  # Key Derivation using PBKDF2
  #-----------------------------------------------------------------------------
  def derive_key(password, salt)
    OpenSSL::PKCS5.pbkdf2_hmac(
      password,
      salt,
      10000,        # iterations
      32,           # key length (256 bits for AES-256)
      OpenSSL::Digest::SHA256.new
    )
  end
  
  #-----------------------------------------------------------------------------
  # Encrypt data using AES-256-CBC
  #-----------------------------------------------------------------------------
  def encrypt_data(data)
    cipher = OpenSSL::Cipher.new('AES-256-CBC')
    cipher.encrypt
    cipher.key = @key
    iv = cipher.random_iv
    
    encrypted = cipher.update(data) + cipher.final
    
    # Return IV + encrypted data
    iv + encrypted
  end
  
  #-----------------------------------------------------------------------------
  # Compress data using Zlib
  #-----------------------------------------------------------------------------
  def compress_data(data)
    Zlib::Deflate.deflate(data, @config[:compression_level])
  end
  
  #-----------------------------------------------------------------------------
  # Calculate file checksum
  #-----------------------------------------------------------------------------
  def checksum(data)
    Digest::SHA256.digest(data)
  end
  
  #-----------------------------------------------------------------------------
  # Check if file should be excluded
  #-----------------------------------------------------------------------------
  def excluded?(filepath)
    @config[:exclude_patterns].any? do |pattern|
      File.fnmatch?(pattern, filepath, File::FNM_PATHNAME | File::FNM_DOTMATCH)
    end
  end
  
  #-----------------------------------------------------------------------------
  # Collect all files to encrypt
  #-----------------------------------------------------------------------------
  def collect_files(base_path)
    files = []
    
    @config[:include_folders].each do |folder|
      folder_path = File.join(base_path, folder)
      next unless File.directory?(folder_path)
      
      Dir.glob(File.join(folder_path, '**', '*')).each do |filepath|
        next if File.directory?(filepath)
        relative_path = filepath.sub("#{base_path}/", '').sub("#{base_path}\\", '')
        next if excluded?(relative_path)
        
        files << {
          absolute: filepath,
          relative: relative_path,
          size: File.size(filepath)
        }
      end
    end
    
    files
  end
  
  #-----------------------------------------------------------------------------
  # Encrypt a single file
  #-----------------------------------------------------------------------------
  def encrypt_file(filepath)
    original_data = File.binread(filepath)
    @total_original_size += original_data.bytesize
    
    # Compress first, then encrypt
    compressed = compress_data(original_data)
    encrypted = encrypt_data(compressed)
    
    @total_encrypted_size += encrypted.bytesize
    @files_processed += 1
    
    {
      data: encrypted,
      original_size: original_data.bytesize,
      compressed_size: compressed.bytesize,
      checksum: checksum(original_data)
    }
  end
  
  #-----------------------------------------------------------------------------
  # Create PKE archive
  #-----------------------------------------------------------------------------
  def create_archive(files, output_path, archive_name)
    return if files.empty?
    
    archive_path = File.join(output_path, "#{archive_name}.pke")
    
    # Build file table
    file_table = []
    file_data_blocks = []
    current_offset = 0
    
    files.each_with_index do |file_info, index|
      print "\r  Encrypting: #{file_info[:relative]} (#{index + 1}/#{files.length})"
      
      encrypted = encrypt_file(file_info[:absolute])
      
      # Encrypt the filename too
      encrypted_name = encrypt_data(file_info[:relative])
      
      file_table << {
        name_data: encrypted_name,
        name_length: encrypted_name.bytesize,
        data_offset: current_offset,
        data_length: encrypted[:data].bytesize,
        original_size: encrypted[:original_size],
        checksum: encrypted[:checksum]
      }
      
      file_data_blocks << encrypted[:data]
      current_offset += encrypted[:data].bytesize
    end
    
    puts # New line after progress
    
    # Write archive
    File.open(archive_path, 'wb') do |f|
      # Header
      f.write(MAGIC)                              # 4 bytes: Magic
      f.write([VERSION].pack('C'))                # 1 byte: Version
      f.write([file_table.length].pack('V'))      # 4 bytes: File count
      
      # Calculate header size for offset calculation
      header_size = 4 + 1 + 4  # magic + version + count
      
      # File table (encrypted)
      table_json = JSON.generate(file_table.map { |entry|
        {
          n: entry[:name_data].unpack1('H*'),  # hex-encoded encrypted name
          o: entry[:data_offset],
          l: entry[:data_length],
          s: entry[:original_size],
          c: entry[:checksum].unpack1('H*')
        }
      })
      
      encrypted_table = encrypt_data(compress_data(table_json))
      f.write([encrypted_table.bytesize].pack('V'))  # 4 bytes: Table size
      f.write(encrypted_table)
      
      # File data blocks
      file_data_blocks.each { |block| f.write(block) }
    end
    
    puts "  Created: #{archive_path} (#{File.size(archive_path) / 1024} KB)"
  end
  
  #-----------------------------------------------------------------------------
  # Main encryption process
  #-----------------------------------------------------------------------------
  def encrypt_all(base_path)
    puts "=" * 60
    puts "PKE Asset Encryption Tool v#{VERSION}"
    puts "=" * 60
    puts
    
    output_path = File.join(base_path, @config[:output_folder])
    FileUtils.mkdir_p(output_path)
    
    # Collect files
    puts "Scanning folders..."
    all_files = collect_files(base_path)
    puts "Found #{all_files.length} files to encrypt"
    puts
    
    if @config[:split_archives]
      # Group by top-level folder
      grouped = all_files.group_by { |f| f[:relative].split(/[\/\\]/).first }
      
      grouped.each do |folder, files|
        puts "Processing #{folder}/..."
        create_archive(files, output_path, folder.downcase)
      end
    else
      # Single archive
      puts "Creating single archive..."
      create_archive(all_files, output_path, "assets")
    end
    
    # Create manifest (encrypted)
    create_manifest(output_path, all_files)
    
    # Summary
    puts
    puts "=" * 60
    puts "Encryption Complete!"
    puts "=" * 60
    puts "Files processed: #{@files_processed}"
    puts "Original size:   #{format_size(@total_original_size)}"
    puts "Encrypted size:  #{format_size(@total_encrypted_size)}"
    puts "Compression:     #{((1 - @total_encrypted_size.to_f / @total_original_size) * 100).round(1)}%"
    puts
    puts "Output folder: #{output_path}"
    puts
    puts "NEXT STEPS:"
    puts "1. Copy the '#{@config[:output_folder]}' folder to your game distribution"
    puts "2. Include the PKE Loader plugin in your Plugins folder"
    puts "3. Remove the original Graphics/, Audio/, Data/ folders from distribution"
  end
  
  #-----------------------------------------------------------------------------
  # Create encrypted manifest
  #-----------------------------------------------------------------------------
  def create_manifest(output_path, files)
    manifest = {
      version: VERSION,
      created: Time.now.utc.iso8601,
      file_count: files.length,
      archives: Dir.glob(File.join(output_path, '*.pke')).map { |p| File.basename(p) }
    }
    
    encrypted_manifest = encrypt_data(compress_data(JSON.generate(manifest)))
    
    File.open(File.join(output_path, 'manifest.dat'), 'wb') do |f|
      f.write(MAGIC)
      f.write(encrypted_manifest)
    end
  end
  
  #-----------------------------------------------------------------------------
  # Format bytes as human readable
  #-----------------------------------------------------------------------------
  def format_size(bytes)
    if bytes < 1024
      "#{bytes} B"
    elsif bytes < 1024 * 1024
      "#{(bytes / 1024.0).round(1)} KB"
    elsif bytes < 1024 * 1024 * 1024
      "#{(bytes / 1024.0 / 1024.0).round(1)} MB"
    else
      "#{(bytes / 1024.0 / 1024.0 / 1024.0).round(2)} GB"
    end
  end
  
  #-----------------------------------------------------------------------------
  # Test encryption/decryption round-trip
  #-----------------------------------------------------------------------------
  def self.test(config)
    puts "Running encryption test..."
    
    encryptor = new(config)
    
    # Test data
    test_data = "Hello, this is a test of the PKE encryption system! " * 100
    
    # Compress and encrypt
    compressed = encryptor.compress_data(test_data)
    encrypted = encryptor.encrypt_data(compressed)
    
    puts "Original size: #{test_data.bytesize} bytes"
    puts "Compressed:    #{compressed.bytesize} bytes"
    puts "Encrypted:     #{encrypted.bytesize} bytes"
    
    # Decrypt and decompress (simulating game-side)
    cipher = OpenSSL::Cipher.new('AES-256-CBC')
    cipher.decrypt
    cipher.key = encryptor.instance_variable_get(:@key)
    cipher.iv = encrypted[0, 16]  # First 16 bytes are IV
    
    decrypted = cipher.update(encrypted[16..-1]) + cipher.final
    decompressed = Zlib::Inflate.inflate(decrypted)
    
    if decompressed == test_data
      puts "✓ Test PASSED - Data matches after round-trip!"
    else
      puts "✗ Test FAILED - Data mismatch!"
      exit 1
    end
  end
end

#===============================================================================
# Main Entry Point
#===============================================================================
if __FILE__ == $0
  base_path = File.expand_path('..', __dir__)
  
  case ARGV[0]
  when '--test'
    PKEEncryptor.test(PKE_CONFIG)
  when '--help', '-h'
    puts "PKE Asset Encryption Tool"
    puts
    puts "Usage:"
    puts "  ruby encrypt_assets.rb          # Encrypt all assets"
    puts "  ruby encrypt_assets.rb --test   # Run encryption test"
    puts "  ruby encrypt_assets.rb --help   # Show this help"
    puts
    puts "Configuration: Edit pke_config.rb before running"
  else
    encryptor = PKEEncryptor.new(PKE_CONFIG)
    encryptor.encrypt_all(base_path)
  end
end
