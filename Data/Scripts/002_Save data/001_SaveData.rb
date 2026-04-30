require 'digest/sha2'
require 'securerandom'
require 'stringio'

# The SaveData module is used to manipulate save data. It contains the {Value}s
# that make up the save data and {Conversion}s for resolving incompatibilities
# between Essentials and game versions.
# @see SaveData.register
# @see SaveData.register_conversion
module SaveData
  # ===========================================================================
  # Save file encryption (Pokemon: Shattered Crowns)
  # ---------------------------------------------------------------------------
  # Format:
  #   [8 bytes ] magic header  "SCSAVEV2"
  #   [16 bytes] random salt / nonce
  #   [N bytes ] ciphertext  (Marshal.dump XOR keystream)
  #   [32 bytes] HMAC-SHA256(salt || ciphertext) using MAC_KEY
  #
  # Construction (no OpenSSL dependency, mkxp-z compatible):
  #   * Stream cipher : SHA-256 in CTR mode
  #       block_i = SHA256(ENC_KEY || salt || u32be(i))
  #       keystream = block_0 || block_1 || ...
  #   * Integrity     : HMAC-SHA-256 with separate key (Encrypt-then-MAC)
  #
  # Goal: defeat generic Ruby-Marshal save editors (e.g. saveeditor.online)
  # and detect any byte-level tampering of the save file.
  # ===========================================================================
  SAVE_MAGIC_V2 = "SCSAVEV2".b.freeze
  # Master secret. Treat as obfuscation only — it lives in the (encrypted)
  # script archive of the shipped game and protects against casual editors.
  SAVE_MASTER_SECRET = "SC::ShatteredCrowns::SaveSeal::v2::4f8a1c93b07e".b.freeze
  ENC_KEY = Digest::SHA256.digest(SAVE_MASTER_SECRET + "|enc").freeze
  MAC_KEY = Digest::SHA256.digest(SAVE_MASTER_SECRET + "|mac").freeze
  SAVE_SALT_BYTES = 16
  SAVE_HMAC_BYTES = 32

  # Generates the SHA-256 CTR keystream and XORs it against +data+ in-place.
  def self.crypt_stream(data, salt)
    out = data.b
    len = out.bytesize
    blocks = (len + 31) / 32
    pos = 0
    blocks.times do |i|
      counter = [i].pack("N")  # 32-bit big-endian block counter
      block = Digest::SHA256.digest(ENC_KEY + salt + counter)
      take = [32, len - pos].min
      take.times { |j| out.setbyte(pos + j, out.getbyte(pos + j) ^ block.getbyte(j)) }
      pos += take
    end
    out
  end

  # HMAC-SHA-256 (RFC 2104). Implemented locally since OpenSSL isn't bundled.
  def self.hmac_sha256(key, message)
    block_size = 64
    k = key.bytesize > block_size ? Digest::SHA256.digest(key) : key.dup
    k = k + ("\x00".b * (block_size - k.bytesize)) if k.bytesize < block_size
    o_pad = String.new(capacity: block_size)
    i_pad = String.new(capacity: block_size)
    block_size.times do |i|
      kb = k.getbyte(i)
      o_pad << (kb ^ 0x5c).chr
      i_pad << (kb ^ 0x36).chr
    end
    Digest::SHA256.digest(o_pad + Digest::SHA256.digest(i_pad + message))
  end

  # Constant-time comparison — prevents timing attacks against the MAC.
  def self.secure_compare(a, b)
    return false if a.bytesize != b.bytesize
    diff = 0
    a.bytesize.times { |i| diff |= a.getbyte(i) ^ b.getbyte(i) }
    diff.zero?
  end

  # Wraps marshaled bytes into the encrypted SCSAVEV2 container.
  def self.encrypt_payload(marshaled)
    salt = SecureRandom.random_bytes(SAVE_SALT_BYTES)
    ciphertext = crypt_stream(marshaled, salt)
    mac = hmac_sha256(MAC_KEY, salt + ciphertext)
    SAVE_MAGIC_V2 + salt + ciphertext + mac
  end

  # Reverses {.encrypt_payload}. Raises if MAC verification fails.
  def self.decrypt_payload(blob)
    raise IOError, "Save file too small" if blob.bytesize < SAVE_MAGIC_V2.bytesize + SAVE_SALT_BYTES + SAVE_HMAC_BYTES
    body = blob.byteslice(SAVE_MAGIC_V2.bytesize..)
    salt = body.byteslice(0, SAVE_SALT_BYTES)
    mac  = body.byteslice(body.bytesize - SAVE_HMAC_BYTES, SAVE_HMAC_BYTES)
    ct   = body.byteslice(SAVE_SALT_BYTES, body.bytesize - SAVE_SALT_BYTES - SAVE_HMAC_BYTES)
    expected = hmac_sha256(MAC_KEY, salt + ct)
    raise IOError, "Save file integrity check failed (tampered or corrupted)." unless secure_compare(mac, expected)
    crypt_stream(ct, salt)
  end

  # Contains the file path of the save file.
  FILE_PATH = if File.directory?(System.data_directory)
                System.data_directory + "/Game.rxdata"
              else
                "./Game.rxdata"
              end

  # @return [Boolean] whether the save file exists
  def self.exists?
    return File.file?(FILE_PATH)
  end

  # Fetches the save data from the given file.
  # Returns an Array in the case of a pre-v19 save file.
  # Transparently decrypts SCSAVEV2 containers; falls back to legacy
  # plain-Marshal saves for backward compatibility.
  # @param file_path [String] path of the file to load from
  # @return [Hash, Array] loaded save data
  # @raise [IOError, SystemCallError] if file opening fails
  def self.get_data_from_file(file_path)
    validate file_path => String
    save_data = nil
    raw = File.binread(file_path)
    if raw.start_with?(SAVE_MAGIC_V2)
      data = Marshal.load(StringIO.new(decrypt_payload(raw)))
      save_data = data.is_a?(Hash) ? data : [data]
    else
      File.open(file_path, "rb") do |file|
        data = Marshal.load(file)
        if data.is_a?(Hash)
          save_data = data
          next
        end
        save_data = [data]
        save_data << Marshal.load(file) until file.eof?
      end
    end
    return save_data
  end

  # Fetches save data from the given file. If it needed converting, resaves it.
  # @param file_path [String] path of the file to read from
  # @return [Hash] save data in Hash format
  # @raise (see .get_data_from_file)
  def self.read_from_file(file_path)
    validate file_path => String
    save_data = get_data_from_file(file_path)
    save_data = to_hash_format(save_data) if save_data.is_a?(Array)
    if !save_data.empty? && run_conversions(save_data)
      File.binwrite(file_path, encrypt_payload(Marshal.dump(save_data)))
    end
    return save_data
  end

  # Compiles the save data and saves a marshaled version of it into
  # the given file.
  # @param file_path [String] path of the file to save into
  # @raise [InvalidValueError] if an invalid value is being saved
  def self.save_to_file(file_path)
    validate file_path => String
    save_data = self.compile_save_hash
    File.binwrite(file_path, encrypt_payload(Marshal.dump(save_data)))
  end

  # Deletes the save file (and a possible .bak backup file if one exists)
  # @raise [Error::ENOENT]
  def self.delete_file
    File.delete(FILE_PATH)
    File.delete(FILE_PATH + ".bak") if File.file?(FILE_PATH + ".bak")
  end

  # Converts the pre-v19 format data to the new format.
  # @param old_format [Array] pre-v19 format save data
  # @return [Hash] save data in new format
  def self.to_hash_format(old_format)
    validate old_format => Array
    hash = {}
    @values.each do |value|
      data = value.get_from_old_format(old_format)
      hash[value.id] = data unless data.nil?
    end
    return hash
  end
end
