ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_clotheshop:paybarbershop')
AddEventHandler('esx_clotheshop:paybarbershop', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeMoney(Config.Pricebarbershop)
	TriggerClientEvent('esx:showNotification', source, _U('you_paid', ESX.Math.GroupDigits(Config.Pricebarbershop)))
end)

ESX.RegisterServerCallback('esx_clotheshop:checkMoneybarbershop', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	cb(xPlayer.getMoney() >= Config.Pricebarbershop)
end)
