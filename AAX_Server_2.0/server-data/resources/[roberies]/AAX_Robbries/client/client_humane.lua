key_to_teleport = 38

local teleportpositions = {
    --[[
    {{Teleport1 X, Teleport1 Y, Teleport1 Z, Teleport1 Heading}, {Teleport2 X, Teleport 2Y, Teleport 2Z, Teleport2 Heading}, {Red, Green, Blue}, "Text for Teleport"}
    ]]
    {{138.994, -762.7271, 45.7520, 0}, {136.0658, -761.826, 234.151, 0},{0,0,255}, "Press E to Travel between Lifts..!"}, -- inside FBI Robery
	{{-1569.43, -3017.21, -74.41, 357.45}, {-20.83, 239.58, 109.55, 351.24},{0,0,255}, "Press E to Enter."}, --Night Club Party
	{{1865.72, 270.56, 164.27, 146.55}, {2155.18, 2921.60, -61.9, 95.6},{0,0,255}, "Press E to Enter."}, --AAX Facility Robbries
 
 
}
---------------------------------------------------------------------------------------------------------------------------
local holdingup = false
local bank = ""
local secondsRemaining = 0
local blipRobbery = nil
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

function drawTxt_humane(x,y ,width,height,scale, text, r,g,b,a, outline)
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

RegisterNetEvent('AAX_Robbries:currentlyrobbing_humane')
AddEventHandler('AAX_Robbries:currentlyrobbing_humane', function(robb)
	holdingup = true
	bank = robb
	secondsRemaining = 600
end)

RegisterNetEvent('AAX_Robbries:killblip_humane')
AddEventHandler('AAX_Robbries:killblip_humane', function()
    RemoveBlip(blipRobbery)
end)

RegisterNetEvent('AAX_Robbries:setblip_humane')
AddEventHandler('AAX_Robbries:setblip_humane', function(position)
    blipRobbery = AddBlipForCoord(position.x, position.y, position.z)
    SetBlipSprite(blipRobbery , 161)
    SetBlipScale(blipRobbery , 2.0)
    SetBlipColour(blipRobbery, 3)
    PulseBlip(blipRobbery)
end)

RegisterNetEvent('AAX_Robbries:toofar_humanelocal')
AddEventHandler('AAX_Robbries:toofar_humanelocal', function(robb)
	holdingup = false
	ESX.ShowNotification(_U('robbery_cancelled_humane'))
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)


RegisterNetEvent('AAX_Robbries:rob_humaneberycomplete')
AddEventHandler('AAX_Robbries:rob_humaneberycomplete', function(robb)
	holdingup = false
	ESX.ShowNotification(_U('robbery_complete_humane') .. Banks_humane[bank].reward)
	bank = ""
	secondsRemaining = 0
	incircle = false
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if holdingup then
			Citizen.Wait(1000)
			if(secondsRemaining > 0)then
				secondsRemaining = secondsRemaining - 1
			end
		end
	end
end)

Citizen.CreateThread(function()
	for k,v in pairs(Banks_humane)do
		local ve = v.position

		local blip = AddBlipForCoord(ve.x, ve.y, ve.z)
		SetBlipSprite(blip, 255)--156
		SetBlipScale(blip, 0.7)
		SetBlipColour(blip, 75)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('bank_robbery_humane'))
		EndTextCommandSetBlipName(blip)
	end
end)
incircle = false

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k,v in pairs(Banks_humane)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
				if not holdingup then
					DrawMarker(27, v.position.x, v.position.y, v.position.z - 1, 0, 0, 0, 0, 0, 0, 0.6, 0.6, 0.6, 255, 0, 0,255, 0, 0, 0,0)
					DrawMarker(29, v.position.x, v.position.y, (v.position.z+0.4) - 1, 0, 0, 0, 0, 0, 0, 0.6, 0.6, 0.6, 255, 0, 0,255, 0, 0, 0,0)
				
					if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 1.0)then
						if (incircle == false) then
							DisplayHelpText(_U('press_to_rob_humane') .. v.nameofbank)
						end
						incircle = true
						if IsControlJustReleased(1, 51) then
							TriggerServerEvent('AAX_Robbries:rob_humane', k)
						end
					elseif(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 1.0)then
						incircle = false
					end
				end
			end
		end

		if holdingup then

			drawTxt_humane(0.66, 1.44, 1.0,1.0,0.4, _U('robbery_of_humane') .. secondsRemaining .. _U('seconds_remaining_humane'), 255, 255, 255, 255)

			local pos2 = Banks_humane[bank].position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 7.5)then
				TriggerServerEvent('AAX_Robbries:toofar_humane', bank)
			end
		end

		Citizen.Wait(0)
	end
end)


-----------------------------------------------------------------------------
-------------------------Teleports-------------------------
-----------------------------------------------------------------------------

local player = GetPlayerPed(-1)

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(5)
        local player = GetPlayerPed(-1)
        local playerLoc = GetEntityCoords(player)

        for _,location in ipairs(teleportpositions) do
            teleport_text = location[4]
            loc1 = {
                x=location[1][1],
                y=location[1][2],
                z=location[1][3],
                heading=location[1][4]
            }
            loc2 = {
                x=location[2][1],
                y=location[2][2],
                z=location[2][3],
                heading=location[2][4]
            }
            Red = location[3][1]
            Green = location[3][2]
            Blue = location[3][3]

            DrawMarker(22, loc1.x, loc1.y, loc1.z, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, Red, Green, Blue, 200, 0, 0, 0, 0)
            DrawMarker(22, loc2.x, loc2.y, loc2.z, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, Red, Green, Blue, 200, 0, 0, 0, 0)

            if CheckPos_humane(playerLoc.x, playerLoc.y, playerLoc.z, loc1.x, loc1.y, loc1.z, 2) then 
                alert_humane(teleport_text)
                
                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc2.heading)
                    else
                        SetEntityCoords(player, loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(player, loc2.heading)
                    end
                end

            elseif CheckPos_humane(playerLoc.x, playerLoc.y, playerLoc.z, loc2.x, loc2.y, loc2.z, 2) then
                alert_humane(teleport_text)

                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc1.heading)
                    else
                        SetEntityCoords(player, loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(player, loc1.heading)
                    end
                end
            end            
        end
    end
end)

function CheckPos_humane(x, y, z, cx, cy, cz, radius)
    local t1 = x - cx
    local t12 = t1^2

    local t2 = y-cy
    local t21 = t2^2

    local t3 = z - cz
    local t31 = t3^2

    return (t12 + t21 + t31) <= radius^2
end

function alert_humane(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end