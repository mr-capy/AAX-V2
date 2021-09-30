fx_version 'adamant'

game 'gta5'

description 'ESX Clothes Shop'

version '1.1.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua',
	'server/server_barbershop.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua',
	'client/client_barbershop.lua'
}

dependencies {
	'es_extended',
	'esx_skin'
}
