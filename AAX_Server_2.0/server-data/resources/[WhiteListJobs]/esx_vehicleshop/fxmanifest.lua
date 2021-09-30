fx_version 'adamant'

game 'gta5'

description 'ESX Vehicle Shop'

version '1.1.0'

this_is_a_map 'yes'
server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua',
	'server/server_givevehicle.lua',
	 'server/server_doorlock.lua',
	'server/server_carlock.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/utils.lua',
	'client/main.lua',
	'client/client_givevehicle.lua',
	'client/client_doorlock.lua',
   	'client/client_carlock.lua',
}

dependency 'es_extended'

export 'GeneratePlate'
