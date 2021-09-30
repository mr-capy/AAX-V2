
	
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_drugs:start')
AddEventHandler('esx_drugs:start', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if xPlayer.getInventoryItem('acetone').count >= 5 and xPlayer.getInventoryItem('lithium').count >= 2 and xPlayer.getInventoryItem('methlab').count >= 1 then
		if xPlayer.getInventoryItem('meth').count >= 30 then
				TriggerClientEvent('esx_drugs:notify', _source, "~r~~h~You cant hold more meth")
		else
			TriggerClientEvent('esx_drugs:startprod', _source)
			xPlayer.removeInventoryItem('acetone', 5)
			xPlayer.removeInventoryItem('lithium', 2)
		end

		
		
	else
		TriggerClientEvent('esx_drugs:notify', _source, "~r~~h~Not enough supplies to start producing Meth")

	end
	
end)
RegisterServerEvent('esx_drugs:stopf')
AddEventHandler('esx_drugs:stopf', function(id)
local _source = source
	local xPlayers = ESX.GetPlayers()
	local xPlayer = ESX.GetPlayerFromId(_source)
	for i=1, #xPlayers, 1 do
		TriggerClientEvent('esx_drugs:stopfreeze', xPlayers[i], id)
	end
	
end)
RegisterServerEvent('esx_drugs:make')
AddEventHandler('esx_drugs:make', function(posx,posy,posz)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if xPlayer.getInventoryItem('methlab').count >= 1 then
	
		local xPlayers = ESX.GetPlayers()
		for i=1, #xPlayers, 1 do
			TriggerClientEvent('esx_drugs:smoke',xPlayers[i],posx,posy,posz, 'a') 
		end
		
	else
		TriggerClientEvent('esx_drugs:stop', _source)
	end
	
end)
RegisterServerEvent('esx_drugs:finish')
AddEventHandler('esx_drugs:finish', function(qualtiy)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	print(qualtiy)
	local rnd = math.random(-5, 5)
	TriggerEvent('KLevels:addXP', _source, 20)
	xPlayer.addInventoryItem('meth', math.floor(qualtiy / 2) + rnd)
	
end)

RegisterServerEvent('esx_drugs:blow')
AddEventHandler('esx_drugs:blow', function(posx, posy, posz)
	local _source = source
	local xPlayers = ESX.GetPlayers()
	local xPlayer = ESX.GetPlayerFromId(_source)
	for i=1, #xPlayers, 1 do
		TriggerClientEvent('esx_drugs:blowup', xPlayers[i],posx, posy, posz)
	end
	xPlayer.removeInventoryItem('methlab', 1)
end)

