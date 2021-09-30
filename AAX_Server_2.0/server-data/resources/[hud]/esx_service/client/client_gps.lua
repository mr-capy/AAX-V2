ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer

	TriggerEvent('chud:removeGPS')

	for i=1, #PlayerData.inventory, 1 do
		if PlayerData.inventory[i].name == 'gps' then
			if PlayerData.inventory[i].count > 0 then
				TriggerEvent('chud:addGPS')
			end
		end
	end

end)

RegisterNetEvent('chud:addGPS')
AddEventHandler('chud:addGPS', function()
	DisplayRadar(true)
end)

RegisterNetEvent('chud:removeGPS')
AddEventHandler('chud:removeGPS', function()
	DisplayRadar(false)
end)