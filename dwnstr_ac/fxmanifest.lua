fx_version 'adamant'
games {'gta5'}

description 'Dawnstar Anti-Cheat'

client_scripts {
	'client.lua',
}

server_scripts {
	'configs/*.lua',
	'tables/*.lua',
	'server.lua',
	'installer.lua',
	'@mysql-async/lib/MySQL.lua'
}