local idVisable = true
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(2000)
	ESX.TriggerServerCallback('esx_scoreboard:getConnectedPlayers', function(connectedPlayers)
		UpdatePlayerTable(connectedPlayers)
	end)
end)

Citizen.CreateThread(function()
	Citizen.Wait(500)
	SendNUIMessage({
		action = 'updateServerInfo',

		maxPlayers = GetConvarInt('sv_maxclients', 32),
		uptime = 'unknown',
		playTime = '00h 00m'
	})
end)

RegisterNetEvent('esx_scoreboard:updateConnectedPlayers')
AddEventHandler('esx_scoreboard:updateConnectedPlayers', function(connectedPlayers)
	UpdatePlayerTable(connectedPlayers)
end)

RegisterNetEvent('esx_scoreboard:updatePing')
AddEventHandler('esx_scoreboard:updatePing', function(connectedPlayers)
	SendNUIMessage({
		action  = 'updatePing',
		players = connectedPlayers
	})
end)

RegisterNetEvent('esx_scoreboard:toggleID')
AddEventHandler('esx_scoreboard:toggleID', function(state)
	if state then
		idVisable = state
	else
		idVisable = not idVisable
	end

	SendNUIMessage({
		action = 'toggleID',
		state = idVisable
	})
end)

RegisterNetEvent('uptime:tick')
AddEventHandler('uptime:tick', function(uptime)
	SendNUIMessage({
		action = 'updateServerInfo',
		uptime = uptime
	})
end)

function UpdatePlayerTable(connectedPlayers)
    local formattedPlayerList, num = {}, 1
    local ems, police, taxi, mechanic, cardealer, estate, players = 0, 0, 0, 0, 0, 0, 0

    for k,v in pairs(connectedPlayers) do
		
		param = ""

		name = string.gsub( v.name,'%[','')
		name = string.gsub( name,'%]','')
		name = string.gsub( name,'%(','')
		name = string.gsub( name,'%)','')
		name = string.gsub( name,'%{','')
		name = string.gsub( name,'%}','')
		name = string.gsub( name,'%.','')
		name = string.gsub( name,'%/','')
		name = string.gsub( name,'%\\','')
		name = string.gsub( name,'%|','')

		if v.job ~= nil then
			if v.job == "ambulance" then
				param = "👨‍⚕️ <span style='color:tomato;'>"
			elseif v.job == "mafia" then
				param = "☠️ <span style='color:black;'>"
			elseif v.job == "police" then
				param = "👮🏻 <span style='color:dodgerblue;'>"
			elseif v.job == "cardealer" then
				param = "🚗 <span style='color:aqua;'>"
			elseif v.job == "mechanic" then
				param = "🔧 <span style='color:mintcream;'>"
			elseif v.job == "nawab" or v.job == "thepunishers" or v.job == "military" or v.job == "madleets" or v.job == "zero" or v.job == "mafia" or v.job == "joker" or v.job == "op" or v.job == "rebels" or v.job == "illegalcardealer" or v.job == "agent" or v.job == "psycho" then
				param = "["..string.upper(string.sub( v.job, 1, 1))..string.sub( v.job, 2, string.len(v.job)).."] <span style='color:PeachPuff;'>"
			else
				param = "<span style='color:PeachPuff;'>"
			end
		end

		param = param..name.."</span>"

        if num == 1 then
            table.insert(formattedPlayerList, ('<tr><td>%s</td><td>%s</td><td>%s</td>'):format(param, v.id, v.ping))
            num = 2
        elseif num == 2 then
            table.insert(formattedPlayerList, ('<td>%s</td><td>%s</td><td>%s</td></tr>'):format(param, v.id, v.ping))
            num = 1
		end
		
		players = players + 1

		if v.job == 'ambulance' then
			ems = ems + 1
		elseif v.job == 'police' then
			police = police + 1

		elseif v.job == 'mechanic' then
			mechanic = mechanic + 1
		elseif v.job == 'cardealer' then
			cardealer = cardealer + 1
		--[[elseif v.job == 'taxi' then
			taxi = taxi + 1
		elseif v.job == 'realestateagent' then
			estate = estate + 1]]--
		end
	end

	if num == 1 then
		table.insert(formattedPlayerList, '</tr>')
	end

	SendNUIMessage({
		action  = 'updatePlayerList',
		players = table.concat(formattedPlayerList)
	})

	SendNUIMessage({
		action = 'updatePlayerJobs',
		jobs   = {ems = ems, police = police, taxi = taxi, mechanic = mechanic, cardealer = cardealer, estate = estate, player_count = players}
	})
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if IsControlJustReleased(0, 57) and IsInputDisabled(0) then
			ToggleScoreBoard()
			Citizen.Wait(200)

		-- D-pad up on controllers works, too!
		elseif IsControlJustReleased(0, 172) and not IsInputDisabled(0) then
			ToggleScoreBoard()
			Citizen.Wait(200)
		end
	end
end)

-- Close scoreboard when game is paused
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(300)

		if IsPauseMenuActive() and not IsPaused then
			IsPaused = true
			SendNUIMessage({
				action  = 'close'
			})
		elseif not IsPauseMenuActive() and IsPaused then
			IsPaused = false
		end
	end
end)

function ToggleScoreBoard()
	SendNUIMessage({
		action = 'toggle'
	})
end

Citizen.CreateThread(function()
	local playMinute, playHour = 0, 0

	while true do
		Citizen.Wait(1000 * 60) -- every minute
		playMinute = playMinute + 1
	
		if playMinute == 60 then
			playMinute = 0
			playHour = playHour + 1
		end

		SendNUIMessage({
			action = 'updateServerInfo',
			playTime = string.format("%02dh %02dm", playHour, playMinute)
		})
	end
end)
