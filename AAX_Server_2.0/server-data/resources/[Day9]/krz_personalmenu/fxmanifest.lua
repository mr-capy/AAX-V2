fx_version 'adamant'
games {'gta5'}


dependency 'es_extended'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/*.lua',
	'server.lua'
}

client_scripts {
	"NativeUI.lua",
	"dependencies/RMenu.lua",
	"dependencies/menu/RageUI.lua",
	"dependencies/menu/Menu.lua",
	"dependencies/menu/MenuController.lua",

	"dependencies/components/*.lua",

	"dependencies/menu/elements/*.lua",
	"dependencies/menu/items/*.lua"
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/*.lua',
	'client.lua'
	

}