local rob = false
local robbers = {}
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('AAX_Robbries:toofar_holdup')
AddEventHandler('AAX_Robbries:toofar_holdup', function(robb)
	local source = source
	local xPlayers = ESX.GetPlayers()
	rob = false
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		if xPlayer.job.name == 'police' then
			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_cancelled_at_holdup') .. Banks_holdup[robb].nameofbank)
			TriggerClientEvent('AAX_Robbries:killblip', xPlayers[i])
		end
	end
	if(robbers[source])then
		TriggerClientEvent('AAX_Robbries:toofar_holduplocal', source)
		robbers[source] = nil
		TriggerClientEvent('esx:showNotification', source, _U('robbery_has_cancelled_holdup') .. Banks_holdup[robb].nameofbank)
	end
end)

RegisterServerEvent('AAX_Robbries:rob_holdup')
AddEventHandler('AAX_Robbries:rob_holdup', function(robb)

	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local safecracker = xPlayer.getInventoryItem('safecracker')
	local xPlayers = ESX.GetPlayers()
	
	if Banks_holdup[robb] then

		local bank_holdup = Banks_holdup[robb]

		if (os.time() - bank_holdup.lastrobbed) < 3600 and bank_holdup.lastrobbed ~= 0 then
			
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'info', text = 'This Bank has already been Robbed.Please wait ' .. (3600 - (os.time() - bank_holdup.lastrobbed)) .. 'Seconds', length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

			
--			TriggerClientEvent('esx:showNotification', source, _U('already_robbed') .. (3600 - (os.time() - bank_holdup.lastrobbed)) .. _U('seconds'))
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
		   
		  if xPlayer.getInventoryItem('safecracker').count >= 1 then
		     xPlayer.removeInventoryItem('safecracker', 1)

			if(cops >= Config.NumberOfCopsRequired_holdup)then

				rob = true
				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					if xPlayer.job.name == 'police' then
							
							TriggerClientEvent('mythic_notify:client:SendAlert', xPlayers[i], { type = 'error', text = 'Robbery in progress ' .. bank_holdup.nameofbank, length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

							
				--			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('rob_in_prog') .. bank_holdup.nameofbank)
							
							
							TriggerClientEvent('AAX_Robbries:setblip_holdup', xPlayers[i], Banks_holdup[robb].position)
					end
				end

				TriggerClientEvent('esx:showNotification', source, _U('started_to_rob_holdup') .. bank_holdup.nameofbank .. _U('do_not_move_holdup'))
				TriggerClientEvent('esx:showNotification', source, _U('alarm_triggered_holdup'))
				TriggerClientEvent('esx:showNotification', source, _U('hold_pos_holdup'))
				--TriggerClientEvent('esx_borrmaskin_yacht:startsafecracker', source)
				TriggerClientEvent('AAX_Robbries:currentlyrobbing_holdup', source, robb)
				Banks_holdup[robb].lastrobbed = os.time()
				robbers[source] = robb
				local savedSource = source
				SetTimeout(180000, function()

					if(robbers[savedSource])then

						rob = false
						TriggerClientEvent('AAX_Robbries:rob_holdupberycomplete', savedSource, job)
						if(xPlayer)then

							xPlayer.addAccountMoney('black_money', bank_holdup.reward)
							local xPlayers = ESX.GetPlayers()
							for i=1, #xPlayers, 1 do
								local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
								if xPlayer.job.name == 'police' then
										TriggerClientEvent('esx:showNotification', xPlayers[i], _U('robbery_complete_at_holdup') .. bank_holdup.nameofbank)
										TriggerClientEvent('AAX_Robbries:killblip', xPlayers[i])
								end
							end
						end
					end
				end)
			else
				TriggerClientEvent('esx:showNotification', source, _U('min_two_police_holdup') .. Config.NumberOfCopsRequired_holdup)
			end
			else
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'You Need a Safe Cracker To Start Rob.', length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

	--		TriggerClientEvent('esx:showNotification', source, 'You Need a safecracker To Start Rob.')
			
		end
		else
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'This Robbery Is Already in Progress', length = 3000, style = { ['background-color'] = '#ff0000', ['color'] = '#ffffff' } })

		
	--		TriggerClientEvent('esx:showNotification', source, _U('robbery_already_holdup'))
		end
	end
end)
