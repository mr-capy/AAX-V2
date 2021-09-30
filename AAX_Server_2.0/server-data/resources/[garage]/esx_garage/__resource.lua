-- James

resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

client_scripts {
	"@es_extended/locale.lua",
	"locales/en.lua",
	"config.lua",
	"client/client_vhdamage.lua",
	"client/functions.lua",
	"client/main.lua",
	"client/client_impound.lua",
	"json.lua",
	"client/client_carwash.lua"
	

}

server_scripts {
	"@es_extended/locale.lua",
	"locales/en.lua",
	"@mysql-async/lib/MySQL.lua",
	"config.lua",
	"server/server_vhdamage.lua",
	"server/main.lua",
	"server/functions.lua",
	"server/database.lua",	
	"server/server_impound.lua",
	"json.lua",
	"server/server_carwash.lua"
	
	
	
}

ui_page('web/index.html')
files {
    'config.json',
    'web/index.html',
    'web/script.js',
    'web/style.css'
}