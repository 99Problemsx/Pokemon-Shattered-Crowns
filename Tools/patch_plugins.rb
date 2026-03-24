require 'zlib'
data = Marshal.load(File.binread('Data/PluginScripts.rxdata'))
sc = data[12]
cfg = File.read('Plugins/[SC] Script System/000_Config.rb')
ldr = File.read('Plugins/[SC] Script System/020_ScriptLoader.rb')
sc[2][0] = [sc[2][0][0], Zlib::Deflate.deflate(cfg)]
sc[2][23] = [sc[2][23][0], Zlib::Deflate.deflate(ldr)]
File.binwrite('Data/PluginScripts.rxdata', Marshal.dump(data))
puts "OK size=#{File.size('Data/PluginScripts.rxdata')}"
puts "has_sc_data_bundle=#{ldr.include?('sc_data_bundle')}"
puts "has_load_data=#{ldr.include?('load_data')}"
puts "no_old_manifest=#{!ldr.include?('file_manifest')}"
