fx_version 'adamant'

game 'gta5'

description 'ESX DMV School'

version '1.0.4'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua',
	'server/server_communityservice.lua'
}

client_scripts {
	'@es_extended/locale.lua',	
	'locales/en.lua',
	'config.lua',
	'client/main.lua',
	'client/client_communityservice.lua',
	'client/client_safezone.lua'
}

ui_page 'html/ui.html'

files {
	'html/ui.html',
	'html/logo.png',
	'html/dmv.png',
	'html/styles.css',
	'html/questions.js',
	'html/scripts.js',
	'html/debounce.min.js'
}

dependencies {
	'es_extended',
	'esx_license'
}
