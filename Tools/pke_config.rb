# PKE Configuration
# Change these settings before encrypting your game assets

PKE_CONFIG = {
  # IMPORTANT: Change this to a unique secret key for your game!
  # Use a mix of letters, numbers, and symbols. Minimum 16 characters recommended.
  encryption_key: "720sgt3+",
  
  # Salt for key derivation (change this too for extra security)
  key_salt: "720sgt3+",
  
  # Folders to encrypt (relative to game root)
  # Only encrypt custom/important assets - icons and battle sprites are standard
  include_folders: [
    "Graphics/Tilesets",      # Custom map tiles
    "Graphics/Titles",        # Title screens
    "Graphics/Characters",    # Character sprites (overworld)
    "Graphics/Pictures",      # Custom UI and cutscene images
    "Audio/BGM",              # Custom music
    "Audio/ME"                # Custom music effects
  ],
  
  # File patterns to exclude from encryption
  exclude_patterns: [
    "**/*.txt",                    # Skip text files
    "**/*.md",                     # Skip markdown files
    "**/Thumbs.db",                # Skip Windows thumbnails
    "**/.DS_Store"                 # Skip Mac files
  ],
  
  # Compression level (1-9, higher = smaller but slower)
  compression_level: 6,
  
  # Output folder for encrypted archives
  output_folder: "EncryptedData",
  
  # Create separate archives per subfolder (better for large games)
  split_archives: true,
  
  # Maximum archive size in MB (0 = no limit)
  max_archive_size: 0
}
