local rob = false
local robbers = {}
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('AAX_Robbries:toofar_mainbank')
AddEventHandler('AAX_Robbries:toofar_mainbank', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at_mainbank') .. Banks_MainBank[robb].nameofbank)
			TriggerClientEvent('AAX_Robbries:killblip_mainbank', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('AAX_Robbries:toofar_mainbanklocal', source)
		robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, _U('robbery_has_cancelled_mainbank') .. Banks_MainBank[robb].nameofbank)
	end
end)

RegisterServerEvent('AAX_Robbries:rob_mainbank')
AddEventHandler('AAX_Robbries:rob_mainbank', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local terminaldevice = xPlayer.getInventoryItem('terminaldevice')
	local xPlayers = ESX.GetPlayers()
	
	if Banks_MainBank[robb] then

		local bank = Banks_MainBank[robb]

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
		   
		  if xPlayer.getInventoryItem('terminaldevice').count >= 1 then
		     xPlayer.removeInventoryItem('terminaldevice', 1)

			if(cops >= Config.NumberOfCopsRequired_mainbank)then

				rob = true
				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					if xPlayer.job.name == 'police' then
							
							TriggerClientEvent('mythic_notify:client:SendAlert', xPlayers[i], { type = 'error', text = 'Robbery in progress ' .. bank.nameofbank, length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

							
				--			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog') .. bank.nameofbank)
							
							
							TriggerClientEvent('AAX_Robbries:setblip_mainbank', xPlayers[i], Banks_MainBank[robb].position)
					end
				end

				TriggerClientEvent('esx:showNotification', source, _U('started_to_rob_mainbank') .. bank.nameofbank .. _U('do_not_move_mainbank'))
				TriggerClientEvent('esx:showNotification', source, _U('alarm_triggered_mainbank'))
				TriggerClientEvent('esx:showNotification', source, _U('hold_pos_mainbank'))
				--TriggerClientEvent('esx_borrmaskin_yacht:startterminaldevice', source)
				TriggerClientEvent('AAX_Robbries:currentlyrobbing_mainbank', source, robb)
				Banks_MainBank[robb].lastrobbed = os.time()
				robbers[source] = robb
				local savedSource = source
				SetTimeout(300000, function()

					if(robbers[savedSource])then

						rob = false
						TriggerClientEvent('AAX_Robbries:rob_mainbankberycomplete', savedSource, job)
						if(xPlayer)then

							xPlayer.addAccountMoney('black_money', bank.reward)
							local xPlayers = ESX.GetPlayers()
							for i=1, #xPlayers, 1 do
								local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
								if xPlayer.job.name == 'police' then
										TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_complete_at_mainbank') .. bank.nameofbank)
										TriggerClientEvent('AAX_Robbries:killblip_mainbank', xPlayers[i])
								end
							end
						end
					end
				end)
			else
				TriggerClientEvent('esx:showNotification', source, _U('min_two_police_mainbank') .. Config.NumberOfCopsRequired_mainbank)
			end
			else
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You Need a Terminal Device To Start Rob.', length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

	--		TriggerClientEvent('esx:showNotification', source, 'You Need a terminaldevice To Start Rob.')
			
		end
		else
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'This Robbery Is Already in Progress', length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

		
	--		TriggerClientEvent('esx:showNotification', source, _U('robbery_already_mainbank'))
		end
	end
end)
