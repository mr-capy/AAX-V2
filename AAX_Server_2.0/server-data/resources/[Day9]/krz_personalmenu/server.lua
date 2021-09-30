ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('ALERTAROBO')
AddEventHandler('ALERTAROBO', function(source)
TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Alguien acaba de encañoarte o dejado libre.',length = 8000})

	
end)


RegisterServerEvent('robo:jugador')
AddEventHandler('robo:jugador', function(targetid, playerheading, playerCoords,  playerlocation)
	_source = source



TriggerClientEvent('robo:getarrested', targetid, playerheading, playerCoords, playerlocation)
TriggerClientEvent('robo:doarrested', _source)


end)
ESX.RegisterServerCallback('krz_personalmenu:getOtherPlayerData', function(source, cb, target)

  local _target = target
  local xPlayer = ESX.GetPlayerFromId(_target)

    local data = {
      name        = GetPlayerName(_target),
      inventory   = xPlayer.inventory,
      accounts    = xPlayer.accounts,
      money       = xPlayer.get('money')

    }

      cb(data)

end)


RegisterServerEvent('krz_personalmenu:stealPlayerItem')
AddEventHandler('krz_personalmenu:stealPlayerItem', function(target, itemType, itemName, amount)

    local _source = source
    local _target = target
    local sourceXPlayer = ESX.GetPlayerFromId(_source)
    local targetXPlayer = ESX.GetPlayerFromId(_target)

    if itemType == 'item_standard' then

        local label = sourceXPlayer.getInventoryItem(itemName).label
        local itemLimit = sourceXPlayer.getInventoryItem(itemName).limit
        local sourceItemCount = sourceXPlayer.getInventoryItem(itemName).count
        local targetItemCount = targetXPlayer.getInventoryItem(itemName).count

        if amount > 0 and targetItemCount >= amount then
    
            if itemLimit ~= -1 and (sourceItemCount + amount) > itemLimit then
                TriggerClientEvent('esx:showNotification', targetXPlayer.source, _U('ex_inv_lim_target'))
                TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('ex_inv_lim_source'))
            else

                targetXPlayer.removeInventoryItem(itemName, amount)
                sourceXPlayer.addInventoryItem(itemName, amount)

                TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('you_stole') .. ' ~g~x' .. amount .. ' ' .. label .. ' ~w~' .. _U('from_your_target') )
                TriggerClientEvent('esx:showNotification', targetXPlayer.source, _U('someone_stole') .. ' ~r~x'  .. amount .. ' ' .. label )
				ESX.UI.Menu.CloseAll() ---FOr CLose Menu after loot one item
            end

        else
             TriggerClientEvent('esx:showNotification', _source, _U('invalid_quantity'))
        end

    end

  if itemType == 'item_money' then

    if amount > 0 and targetXPlayer.get('money') >= amount then

      targetXPlayer.removeMoney(amount)
      sourceXPlayer.addMoney(amount)

      TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('you_stole') .. ' ~g~$' .. amount .. ' ~w~' .. _U('from_your_target') )
      TriggerClientEvent('esx:showNotification', targetXPlayer.source, _U('someone_stole') .. ' ~r~$'  .. amount )

    else
      TriggerClientEvent('esx:showNotification', _source, _U('imp_invalid_amount'))
    end

  end

  if itemType == 'item_account' then

    if amount > 0 and targetXPlayer.getAccount(itemName).money >= amount then

        targetXPlayer.removeAccountMoney(itemName, amount)
        sourceXPlayer.addAccountMoney(itemName, amount)

        TriggerClientEvent('esx:showNotification', sourceXPlayer.source, _U('you_stole') .. ' ~g~$' .. amount .. ' ~w~' .. _U('of_black_money') .. ' ' .. _U('from_your_target') )
        TriggerClientEvent('esx:showNotification', targetXPlayer.source, _U('someone_stole') .. ' ~r~$'  .. amount .. ' ~w~' .. _U('of_black_money') )

    else
        TriggerClientEvent('esx:showNotification', _source, _U('imp_invalid_amount'))
    end

  end

end)