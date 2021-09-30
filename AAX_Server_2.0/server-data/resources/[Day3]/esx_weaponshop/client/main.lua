Keys = { ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18, ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182, ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81, ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178, ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173, ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118 }
ESX                           = nil

local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local Licenses                = {}

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('esx_weaponshop:loadLicenses')
AddEventHandler('esx_weaponshop:loadLicenses', function (licenses)
  for i = 1, #licenses, 1 do
    Licenses[licenses[i].type] = true
  end
end)

AddEventHandler('onClientMapStart', function()
  ESX.TriggerServerCallback('esx_weaponshop:requestDBItems', function(ShopItems)
    for k,v in pairs(ShopItems) do
      Config.Zones[k].Items = v
    end
  end)
end)

function OpenBuyLicenseMenu (zone)
  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'shop_license',
    {
      title = _U('buy_license'),
      elements = {
        { label = _U('yes') .. ' ($' .. Config.LicensePrice .. ')', value = 'yes' },
        { label = _U('no'), value = 'no' },
      }
    },
    function (data, menu)
      if data.current.value == 'yes' then
        TriggerServerEvent('esx_weaponshop:buyLicense')
      end

      menu.close()
    end,
    function (data, menu)
      menu.close()
    end
  )
end

function OpenShopMenu(zone)

  local elements = {}

  for i=1, #Config.Zones[zone].Items, 1 do

    local item = Config.Zones[zone].Items[i]

    table.insert(elements, {
      label     = item.label .. ' - <span style="color:green;">$' .. item.price .. ' </span>',
      realLabel = item.label,
      value     = item.name,
      price     = item.price
    })

  end


  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'shop',
    {
      title  = _U('shop'),
      elements = elements
    },
    function(data, menu)
      TriggerServerEvent('esx_weaponshop:buyItem', data.current.value, data.current.price, zone)
    end,
    function(data, menu)

      menu.close()

      CurrentAction     = 'shop_menu'
      CurrentActionMsg  = _U('shop_menu')
      CurrentActionData = {zone = zone}
    end
  )
end

AddEventHandler('esx_weaponshop:hasEnteredMarker', function(zone)

  CurrentAction     = 'shop_menu'
  CurrentActionMsg  = _U('shop_menu')
  CurrentActionData = {zone = zone}

end)

AddEventHandler('esx_weaponshop:hasExitedMarker', function(zone)

  CurrentAction = nil
  ESX.UI.Menu.CloseAll()

end)

-- Create Blips
Citizen.CreateThread(function()
  for k,v in pairs(Config.Zones) do
 
----Simple GunShop Blip 
  
  if v.legal==0 then
    for i = 1, #v.Pos, 1 do
    local blip = AddBlipForCoord(v.Pos[i].x, v.Pos[i].y, v.Pos[i].z)
    SetBlipSprite (blip, 110)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 0.7)
	SetBlipColour (blip, 81)
	SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(_U('map_blip_gunshop'))
    EndTextCommandSetBlipName(blip)
    end
    end
  
 --- Black Market Blip
 
  if v.legal==1 then

    for i = 1, #v.Pos, 1 do
    local blip = AddBlipForCoord(v.Pos[i].x, v.Pos[i].y, v.Pos[i].z)
    SetBlipSprite (blip, 432)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.7)
    SetBlipColour (blip, 1)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(_U('map_blip_BlackWeaponShop'))
    EndTextCommandSetBlipName(blip)
    end
    end
  end
  
  
end)

-- Display markers
Citizen.CreateThread(function()
  while true do
    Wait(0)
    local coords = GetEntityCoords(GetPlayerPed(-1))
    for k,v in pairs(Config.Zones) do
      for i = 1, #v.Pos, 1 do
        if(Config.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos[i].x, v.Pos[i].y, v.Pos[i].z, true) < Config.DrawDistance) then
          DrawMarker(Config.Type, v.Pos[i].x, v.Pos[i].y, v.Pos[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Size.x, Config.Size.y, Config.Size.z, Config.Color.r, Config.Color.g, Config.Color.b, 100, false, true, 2, false, false, false, false)
        end
      end
    end
  end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()
  while true do
    Wait(0)
    local coords      = GetEntityCoords(GetPlayerPed(-1))
    local isInMarker  = false
    local currentZone = nil

    for k,v in pairs(Config.Zones) do
      for i = 1, #v.Pos, 1 do
        if(GetDistanceBetweenCoords(coords, v.Pos[i].x, v.Pos[i].y, v.Pos[i].z, true) < Config.Size.x) then
          isInMarker  = true
          ShopItems   = v.Items
          currentZone = k
          LastZone    = k
        end
      end
    end
    if isInMarker and not HasAlreadyEnteredMarker then
      HasAlreadyEnteredMarker = true
      TriggerEvent('esx_weaponshop:hasEnteredMarker', currentZone)
    end
    if not isInMarker and HasAlreadyEnteredMarker then
      HasAlreadyEnteredMarker = false
      TriggerEvent('esx_weaponshop:hasExitedMarker', LastZone)
    end
  end
end)

-- Key Controls
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if CurrentAction ~= nil then

      SetTextComponentFormat('STRING')
      AddTextComponentString(CurrentActionMsg)
      DisplayHelpTextFromStringLabel(0, 0, 1, -1)

      if IsControlJustReleased(0, Keys['E']) then

        if CurrentAction == 'shop_menu' then
          if Config.EnableLicense == true then
            if Licenses['weapon'] ~= nil or Config.Zones[CurrentActionData.zone].legal == 1 then
              OpenShopMenu(CurrentActionData.zone)
            else
              OpenBuyLicenseMenu()
            end
          else
            OpenShopMenu(CurrentActionData.zone)
          end
        end

        CurrentAction = nil

      end

    end
  end
end)

-- thx to Pandorina for script
RegisterNetEvent('esx_weaponshop:clipcli')
AddEventHandler('esx_weaponshop:clipcli', function()
  ped = GetPlayerPed(-1)
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash~=nil then
      TriggerServerEvent('esx_weaponshop:remove')
      AddAmmoToPed(GetPlayerPed(-1), hash,25)
      ESX.ShowNotification("you used a Ammo Magazine")
    else
      ESX.ShowNotification("you have no weapon in hand")
    end
  else
    ESX.ShowNotification("This type of ammunition is not suitable")
  end
end)

--Armor Client side

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

RegisterNetEvent('esx_weaponshop:armor')
AddEventHandler('esx_weaponshop:armor', function()
	    local asrpPed = PlayerPedId()
		exports['progressBars']:startUI(5000, "Putting on vest")
		SetCurrentPedWeapon(asrpPed,GetHashKey("WEAPON_UNARMED"),true)
		Citizen.Wait(2000)
    ESX.Streaming.RequestAnimDict('clothingshirt', function()
        TaskPlayAnim(asrpPed, 'clothingshirt', 'try_shirt_positive_d', 8.0, -8, -1, 49, 0, 0, 0, 0)
      
        Citizen.Wait(3000)
        ClearPedSecondaryTask(asrpPed)
    end)

    SetPedArmour(asrpPed, 75)
end)

-----------------------------------------------------WEAPON ANIMATION--------------------------------------------------------
local weapons = {
	`WEAPON_KNIFE`,
	`WEAPON_NIGHTSTICK`,
	`WEAPON_HAMMER`,
	`WEAPON_BAT`,
	`WEAPON_GOLFCLUB`,
	`WEAPON_CROWBAR`,
	`WEAPON_BOTTLE`,
	`WEAPON_DAGGER`,
	`WEAPON_HATCHET`,
	`WEAPON_MACHETE`,
	`WEAPON_SWITCHBLADE`,
	`WEAPON_BATTLEAXE`,
	`WEAPON_POOLCUE`,
	`WEAPON_WRENCH`,
	`WEAPON_PISTOL`,
	`WEAPON_COMBATPISTOL`,
	`WEAPON_APPISTOL`,
	`WEAPON_PISTOL50`,
	`WEAPON_REVOLVER`,
	`WEAPON_SNSPISTOL`,
	`WEAPON_HEAVYPISTOL`,
	`WEAPON_VINTAGEPISTOL`,
	`WEAPON_MICROSMG`,
	`WEAPON_SMG`,
	`WEAPON_ASSAULTSMG`,
	`WEAPON_MINISMG`,
	`WEAPON_MACHINEPISTOL`,
	`WEAPON_COMBATPDW`,
	`WEAPON_PUMPSHOTGUN`,
	`WEAPON_SAWNOFFSHOTGUN`,
	`WEAPON_ASSAULTSHOTGUN`,
	`WEAPON_BULLPUPSHOTGUN`,
	`WEAPON_HEAVYSHOTGUN`,
	`WEAPON_ASSAULTRIFLE`,
	`WEAPON_CARBINERIFLE`,
	`WEAPON_ADVANCEDRIFLE`,
	`WEAPON_SPECIALCARBINE`,
	`WEAPON_BULLPUPRIFLE`,
	`WEAPON_COMPACTRIFLE`,
	`WEAPON_MG`,
	`WEAPON_COMBATMG`,
	`WEAPON_GUSENBERG`,
	`WEAPON_SNIPERRIFLE`,
	`WEAPON_HEAVYSNIPER`,
	`WEAPON_MARKSMANRIFLE`,
	`WEAPON_GRENADELAUNCHER`,
	`WEAPON_RPG`,
	`WEAPON_STINGER`,
	`WEAPON_MINIGUN`,
	`WEAPON_GRENADE`,
	`WEAPON_STICKYBOMB`,
	`WEAPON_SMOKEGRENADE`,
	`WEAPON_BZGAS`,
	`WEAPON_MOLOTOV`,
	`WEAPON_DIGISCANNER`,
	`WEAPON_FIREWORK`,
	`WEAPON_MUSKET`,
	`WEAPON_STUNGUN`,
	`WEAPON_HOMINGLAUNCHER`,
	`WEAPON_PROXMINE`,
	`WEAPON_FLAREGUN`,
	`WEAPON_MARKSMANPISTOL`,
	`WEAPON_RAILGUN`,
	`WEAPON_DBSHOTGUN`,
	`WEAPON_AUTOSHOTGUN`,
	`WEAPON_COMPACTLAUNCHER`,
	`WEAPON_PIPEBOMB`,
	
}

local holstered = true
local canFire = true
local currWeapon = `WEAPON_UNARMED`

Citizen.CreateThread(function()
	currWeapon = GetSelectedPedWeapon(PlayerPedId())
	while true do
		Citizen.Wait(0)
		local player = PlayerPedId()
		if DoesEntityExist( player ) and not IsEntityDead( player ) and not IsPedInAnyVehicle(PlayerPedId(-1), true) and not IsPedInParachuteFreeFall(player) and GetPedParachuteState(player) == -1 then
			if currWeapon ~= GetSelectedPedWeapon(player) then
				pos = GetEntityCoords(player, true)
				rot = GetEntityHeading(player)

				local newWeap = GetSelectedPedWeapon(player)
				SetCurrentPedWeapon(player, currWeapon, true)
				loadAnimDict( "reaction@intimidation@1h" )

				if CheckWeapon(newWeap) then
					if holstered then
						canFire = false
						TaskPlayAnimAdvanced(player, "reaction@intimidation@1h", "intro", GetEntityCoords(player, true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1000)
						SetCurrentPedWeapon(player, newWeap, true)
						currWeapon = newWeap
						Citizen.Wait(2000)
						ClearPedTasks(player)
						holstered = false
						canFire = true
					elseif newWeap ~= currWeapon and CheckWeapon(currWeapon) then
						canFire = false
						TaskPlayAnimAdvanced(player, "reaction@intimidation@1h", "outro", GetEntityCoords(player, true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1600)
						SetCurrentPedWeapon(player, GetHashKey('WEAPON_UNARMED'), true)
						--ClearPedTasks(player)
						TaskPlayAnimAdvanced(player, "reaction@intimidation@1h", "intro", GetEntityCoords(player, true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1000)
						SetCurrentPedWeapon(player, newWeap, true)
						currWeapon = newWeap
						Citizen.Wait(2000)
						ClearPedTasks(player)
						holstered = false
						canFire = true
					else
						SetCurrentPedWeapon(player, GetHashKey('WEAPON_UNARMED'), true)
						--ClearPedTasks(player)
						TaskPlayAnimAdvanced(player, "reaction@intimidation@1h", "intro", GetEntityCoords(player, true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1000)
						SetCurrentPedWeapon(player, newWeap, true)
						currWeapon = newWeap
						Citizen.Wait(2000)
						ClearPedTasks(player)
						holstered = false
						canFire = true
					end
				else
					if not holstered and CheckWeapon(currWeapon) then
						canFire = false
						TaskPlayAnimAdvanced(player, "reaction@intimidation@1h", "outro", GetEntityCoords(player, true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1600)
						SetCurrentPedWeapon(player, GetHashKey('WEAPON_UNARMED'), true)
						ClearPedTasks(player)
						SetCurrentPedWeapon(player, newWeap, true)
						holstered = true
						canFire = true
						currWeapon = newWeap
					else
						SetCurrentPedWeapon(player, newWeap, true)
						holstered = false
						canFire = true
						currWeapon = newWeap
					end
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if not canFire then
			DisableControlAction(0, 25, true)
			DisablePlayerFiring(player, true)
		end
	end
end)

function CheckWeapon(newWeap)
	for i = 1, #weapons do
		if weapons[i] == newWeap then
			return true
		end
	end
	return false
end

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end