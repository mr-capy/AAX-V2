
client_script '@es_extended/locale.lua'
server_script '@es_extended/locale.lua'
server_script '@mysql-async/lib/MySQL.lua'
ui_page 'html/UI.html'


files {
    'html/UI.html',
    'html/style.css',
	'html/img/user.png',
	'html/img/phone.png',
	'html/img/fleeca.png',
	'html/img/clock.png',
	'html/img/receipt.png',
	'html/img/knife.png',
	'html/img/bank-icon.png',
	'html/pricedown.ttf',
}
client_script 'client.lua'
server_script 'server.lua'