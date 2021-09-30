resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Skin'

version '1.1.0'

this_is_a_map "yes"

file 'v_int_40.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/v_int_40.ytyp'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua',
	'server/server_med.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua',
	'client/client_med.lua'
}

dependencies {
	'es_extended',
	'skinchanger'
}
