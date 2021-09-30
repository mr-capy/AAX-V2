
---------------------------------------------------------------------------------------------------------------------------
local holdingup = false
local bank_holdup = ""
local secondsRemaining_holdup = 0
local blipRobbery_holdup = nil
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function drawTxt_holdup(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
	    SetTextOutline()
	end
    SetTextEntry("STRING")
    AddTextComponentString(text)
	DrawText(x - width/1.530, y - height/0.75)
end

RegisterNetEvent('AAX_Robbries:currentlyrobbing_holdup')
AddEventHandler('AAX_Robbries:currentlyrobbing_holdup', function(robb)
	holdingup = true
	bank_holdup = robb
	secondsRemaining_holdup = 180
end)

RegisterNetEvent('AAX_Robbries:killblip')
AddEventHandler('AAX_Robbries:killblip', function()
    RemoveBlip(blipRobbery_holdup)
end)

RegisterNetEvent('AAX_Robbries:setblip_holdup')
AddEventHandler('AAX_Robbries:setblip_holdup', function(position)
    blipRobbery_holdup = AddBlipForCoord(position.x, position.y, position.z)
    SetBlipSprite(blipRobbery_holdup , 161)
    SetBlipScale(blipRobbery_holdup , 2.0)
    SetBlipColour(blipRobbery_holdup, 3)
    PulseBlip(blipRobbery_holdup)
end)

RegisterNetEvent('AAX_Robbries:toofar_holduplocal')
AddEventHandler('AAX_Robbries:toofar_holduplocal', function(robb)
	holdingup = false
	ESX.ShowNotification(_U('robbery_cancelled_holdup'))
	robbingName = ""
	secondsRemaining_holdup = 0
	incircle = false
end)


RegisterNetEvent('AAX_Robbries:rob_holdupberycomplete')
AddEventHandler('AAX_Robbries:rob_holdupberycomplete', function(robb)
	holdingup = false
	ESX.ShowNotification(_U('robbery_complete_holdup') .. Banks_holdup[bank_holdup].reward)
	bank_holdup = ""
	secondsRemaining_holdup = 0
	incircle = false
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if holdingup then
			Citizen.Wait(1000)
			if(secondsRemaining_holdup > 0)then
				secondsRemaining_holdup = secondsRemaining_holdup - 1
			end
		end
	end
end)

Citizen.CreateThread(function()
	for k,v in pairs(Banks_holdup)do
		local ve = v.position

		local blip = AddBlipForCoord(ve.x, ve.y, ve.z)
		SetBlipSprite(blip, 255)--156
		SetBlipScale(blip, 0.2)
		SetBlipColour(blip, 75)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('bank_robbery_holdup'))
		EndTextCommandSetBlipName(blip)
	end
end)
incircle = false

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k,v in pairs(Banks_holdup)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
				if not holdingup then
					DrawMarker(27, v.position.x, v.position.y, v.position.z - 1, 0, 0, 0, 0, 0, 0, 0.6, 0.6, 0.6, 255, 0, 0,255, 0, 0, 0,0)
					DrawMarker(29, v.position.x, v.position.y, (v.position.z+0.4) - 1, 0, 0, 0, 0, 0, 0, 0.6, 0.6, 0.6, 255, 0, 0,255, 0, 0, 0,0)
				
					if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 1.0)then
						if (incircle == false) then
							DisplayHelpText(_U('press_to_rob_holdup') .. v.nameofbank)
						end
						incircle = true
						if IsControlJustReleased(1, 51) then
							TriggerServerEvent('AAX_Robbries:rob_holdup', k)
						end
					elseif(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 1.0)then
						incircle = false
					end
				end
			end
		end

		if holdingup then

			drawTxt_holdup(0.66, 1.44, 1.0,1.0,0.4, _U('robbery_of_holdup') .. secondsRemaining_holdup .. _U('seconds_remaining_holdup'), 255, 255, 255, 255)

			local pos2 = Banks_holdup[bank_holdup].position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 12.5)then
				TriggerServerEvent('AAX_Robbries:toofar_holdup', bank_holdup)
			end
		end

		Citizen.Wait(0)
	end
end)

