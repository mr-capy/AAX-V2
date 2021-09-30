resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
  'config.lua',
  'client/client_fishing.lua',
  'client/client_hunting.lua',
  'client/farmer.lua',
  'client/client_farm.lua'
}
server_scripts { 
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/server_fishing.lua',
	'server/server_hunting.lua',
	'server/server_farm.lua'
}
