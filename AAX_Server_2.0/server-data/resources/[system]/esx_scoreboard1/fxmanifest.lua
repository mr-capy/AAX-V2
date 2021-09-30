fx_version 'bodacious'

game 'gta5'

description 'ESX Scoreboard'

version '1.0.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
}
server_script 'server/main.lua'

client_script 'client/main.lua'

ui_page 'html/scoreboard.html'

files {
	'html/scoreboard.html',
	'html/style.css',
	'html/listener.js',
	
	'html/img/logo.png',
	'html/img/ambulance.png',
	'html/img/clock.png',
	'html/img/players_icon.png',
	'html/img/police_icon.png',
	'html/img/bennys.png',
	'html/img/jandm.png',
	'html/img/cardealer.png',
	'html/img/disciplesdealership.png',
	'html/img/restart.png',
	'html/img/discord_icon.png',
	'html/img/time.png',
}
