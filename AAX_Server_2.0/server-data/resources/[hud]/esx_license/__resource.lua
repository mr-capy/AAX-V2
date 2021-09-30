resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX License'

version '1.0.1'
client_script {
	'client_capyhud.lua'
	
 }
server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'server/main.lua'
}


ui_page('html/index.html')
files({
	"html/script.js",
	"html/jquery.min.js",
	"html/jquery-ui.min.js",
	"html/styles.css",
	"html/img/*.svg",
	"html/index.html",
})
