ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

AddEventHandler('esx:onAddInventoryItem', function(source, item, count)
	if item.name == 'gps' then
		TriggerClientEvent('chud:addGPS', source)
	end
end)

AddEventHandler('esx:onRemoveInventoryItem', function(source, item, count)
	if item.name == 'gps' and item.count < 1 then
		TriggerClientEvent('chud:removeGPS', source)
	end
end)