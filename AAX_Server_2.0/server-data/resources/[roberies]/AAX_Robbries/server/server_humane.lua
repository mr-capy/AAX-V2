local rob = false
local robbers = {}
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('AAX_Robbries:toofar_humane')
AddEventHandler('AAX_Robbries:toofar_humane', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at_humane') .. Banks_humane[robb].nameofbank)
			TriggerClientEvent('AAX_Robbries:killblip_humane', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('AAX_Robbries:toofar_humanelocal', source)
		robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, _U('robbery_has_cancelled_humane') .. Banks_humane[robb].nameofbank)
	end
end)

RegisterServerEvent('AAX_Robbries:rob_humane')
AddEventHandler('AAX_Robbries:rob_humane', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local pendrive = xPlayer.getInventoryItem('pendrive')
	local xPlayers = ESX.GetPlayers()
	
	if Banks_humane[robb] then

		local bank = Banks_humane[robb]

		if (os.time() - bank.lastrobbed) < 3600 and bank.lastrobbed ~= 0 then
			
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'info', text = 'This Bank has already been Robbed.Please wait ' .. (3600 - (os.time() - bank.lastrobbed)) .. 'Seconds', length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

			
--			TriggerClientEvent('esx:showNotification', source, _U('already_robbed') .. (3600 - (os.time() - bank.lastrobbed)) .. _U('seconds'))
			return
		end


		local cops = 0
		for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
				cops = cops + 1
			end
		end


		if rob == false then
		   
		  if xPlayer.getInventoryItem('pendrive').count >= 1 then
		     xPlayer.removeInventoryItem('pendrive', 1)

			if(cops >= Config.NumberOfCopsRequired_humane)then

				rob = true
				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					if xPlayer.job.name == 'police' then
							
							TriggerClientEvent('mythic_notify:client:SendAlert', xPlayers[i], { type = 'error', text = 'Robbery in progress ' .. bank.nameofbank, length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

							
				--			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog') .. bank.nameofbank)
							
							
							TriggerClientEvent('AAX_Robbries:setblip_humane', xPlayers[i], Banks_humane[robb].position)
					end
				end

				TriggerClientEvent('esx:showNotification', source, _U('started_to_rob_humane') .. bank.nameofbank .. _U('do_not_move_humane'))
				TriggerClientEvent('esx:showNotification', source, _U('alarm_triggered_humane'))
				TriggerClientEvent('esx:showNotification', source, _U('hold_pos_humane'))
				--TriggerClientEvent('esx_borrmaskin_yacht:startpendrive', source)
				TriggerClientEvent('AAX_Robbries:currentlyrobbing_humane', source, robb)
				Banks_humane[robb].lastrobbed = os.time()
				robbers[source] = robb
				local savedSource = source
				SetTimeout(600000, function()

					if(robbers[savedSource])then

						rob = false
						TriggerClientEvent('AAX_Robbries:rob_humaneberycomplete', savedSource, job)
						if(xPlayer)then

							xPlayer.addAccountMoney('black_money', bank.reward)
							local xPlayers = ESX.GetPlayers()
							for i=1, #xPlayers, 1 do
								local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
								if xPlayer.job.name == 'police' then
										TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_complete_at_humane') .. bank.nameofbank)
										TriggerClientEvent('AAX_Robbries:killblip_humane', xPlayers[i])
								end
							end
						end
					end
				end)
			else
				TriggerClientEvent('esx:showNotification', source, _U('min_two_police_humane') .. Config.NumberOfCopsRequired_humane)
			end
			else
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You Need a PenDrive To Start Rob.', length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

	--		TriggerClientEvent('esx:showNotification', source, 'You Need a pendrive To Start Rob.')
			
		end
		else
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'This Robbery Is Already in Progress', length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

		
	--		TriggerClientEvent('esx:showNotification', source, _U('robbery_already_humane'))
		end
	end
end)
