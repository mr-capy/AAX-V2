resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'


ui_page 'ui.html'


client_scripts {
	
	'client.lua',
	'client_es_ui.lua',
	'client_afk',
	'@es_extended/locale.lua',
	'client/client_blips.lua',
	'config.lua',
	'client/fuel_client.lua',
}
server_script {
	
	'server.lua',
	'server_afk',
	'@es_extended/locale.lua',
	'config.lua',
	'server/fuel_server.lua',
}
exports {
	'GetFuel',
	'SetFuel'
}
-- NUI Files
files {
	'ui.html',
	'pdown.ttf',
	'html/index.html',
	'html/jquery.js',
	'html/init.js',
}