resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
this_is_a_map 'yes'
ui_page "html/index.html"
files { 
	'locale.js',
    'html/index.html', 
    'html/police.ttf',
    'html/style.css',
    'html/handler.js'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua',
	'server/policearmory_server.lua',
	'server/server_vehic_Reward_Disable.lua',
	'server/heli_server.lua',
	'server/server_vehicleTracker'

}

client_scripts {
	'@es_extended/locale.lua',
	'locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua',
	'client/policearmory_client.lua',
	'client/client_vehic_Reward_Disable.lua',
	'client/heli_client.lua',
	'client/client_vehicleTracker'

}

dependencies {
	'es_extended',
	'esx_billing'
}

----MLO FIles

---Interior

data_file 'PD_Interior_MLO/TIMECYCLEMOD_FILE' 'gabz_mrpd_timecycle.xml'
data_file 'PD_Interior_MLO/INTERIOR_PROXY_ORDER_FILE' 'interiorproxies.meta'
files {
	'PD_Interior_MLO/gabz_mrpd_timecycle.xml',
	'PD_Interior_MLO/interiorproxies.meta'
}
client_script {
    "PD_Interior_MLO/gabz_mrpd_entitysets.lua"
}