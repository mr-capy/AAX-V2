


-- Turn this to false if you want everyone to use this.
local OnlyPolicemen = true

local ReceiveAmmo = 250

-- You don't need to edit these if you don't want to.
local Armory = { ["x"] = 478.9717, ["y"] = -996.777, ["z"] = 30.691, ["h"] = 276.05 }
local ArmoryPed = { ["x"] = 480.469, ["y"] = -996.576, ["z"] = 30.689, ["h"] = 93.1, ["hash"] = "s_m_y_cop_01" }

-- This is the available weapons you can pick out.
local ArmoryWeapons = {
	{ ["hash"] = "weapon_nightstick", ["type"] = "pistol" },
	{ ["hash"] = "weapon_stungun", ["type"] = "pistol" },
	{ ["hash"] = "weapon_combatpistol", ["type"] = "pistol" },
	{ ["hash"] = "weapon_pumpshotgun", ["type"] = "rifle" },
	{ ["hash"] = "weapon_assaultsmg", ["type"] = "rifle" },
	{ ["hash"] = "weapon_specialcarbine", ["type"] = "rifle" },
	{ ["hash"] = "weapon_flashlight", ["type"] = "pistol" }
	
}



ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(5)

		TriggerEvent("esx:getSharedObject", function(library)
			ESX = library
		end)
    end

    if ESX.IsPlayerLoaded() then
		ESX.PlayerData = ESX.GetPlayerData()

		RefreshPed()
    end
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(response)
	ESX.PlayerData = response

	RefreshPed()
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(response)
	ESX.PlayerData["job"] = response
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)

	while true do
		local sleepThread = 500

		if not OnlyPolicemen or (OnlyPolicemen and ESX.PlayerData["job"] and ESX.PlayerData["job"]["name"] == "police") then

			local ped = PlayerPedId()
			local pedCoords = GetEntityCoords(ped)

			local dstCheck = GetDistanceBetweenCoords(pedCoords, Armory["x"], Armory["y"], Armory["z"], true)

			if dstCheck <= 5.0 then
				sleepThread = 5

				local text = "Armory"

				if dstCheck <= 0.5 then
					text = "[~g~E~s~] Armory"

					if IsControlJustPressed(0, 38) then
						OpenPoliceArmory()
					end
				end

				ESX.Game.Utils.DrawText3D(Armory, text, 0.6)
			end
		end

		Citizen.Wait(sleepThread)
	end
end)

OpenPoliceArmory = function()
	PlaySoundFrontend(-1, 'BACK', 'HUD_AMMO_SHOP_SOUNDSET', false)

	local elements = {
		{ ["label"] = "Weapon Storage", ["action"] = "weapon_storage" }
	}

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), "police_armory_menu",
		{
			title    = "Police Armory",
			align    = "center",
			elements = elements
		},
	function(data, menu)
		local action = data.current["action"]

		if action == "weapon_storage" then
			OpenWeaponStorage()
		end		
	end, function(data, menu)
		PlaySoundFrontend(-1, 'BACK', 'HUD_AMMO_SHOP_SOUNDSET', false)

		menu.close()
	end, function(data, menu)
		PlaySoundFrontend(-1, 'NAV', 'HUD_AMMO_SHOP_SOUNDSET', false)
	end)
end

OpenWeaponStorage = function()
	PlaySoundFrontend(-1, 'BACK', 'HUD_AMMO_SHOP_SOUNDSET', false)

	local elements = {}

	local Location = Armory
	local PedLocation = ArmoryPed

	for i = 1, #ArmoryWeapons, 1 do
		local weapon = ArmoryWeapons[i]

		table.insert(elements, { ["label"] = ESX.GetWeaponLabel(weapon["hash"]), ["weapon"] = weapon })
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), "police_armory_weapon_menu",
		{
			title    = "Police Weapon Armory",
			align    = "center",
			elements = elements
		},
	function(data, menu)
		local anim = data.current["weapon"]["type"]
		local weaponHash = data.current["weapon"]["hash"]

		ESX.UI.Menu.CloseAll()

		local closestPed, closestPedDst = ESX.Game.GetClosestPed(PedLocation)

		if (DoesEntityExist(closestPed) and closestPedDst >= 5.0) or IsPedAPlayer(closestPed) then
			RefreshPed(true) -- failsafe if the ped somehow dissapear.

			ESX.ShowNotification("Please try again.")

			return
		end

		if IsEntityPlayingAnim(closestPed, "mp_cop_armoury", "pistol_on_counter_cop", 3) or IsEntityPlayingAnim(closestPed, "mp_cop_armoury", "rifle_on_counter_cop", 3) then
			ESX.ShowNotification("Please wait on your turn.")
			return
		end

		if not NetworkHasControlOfEntity(closestPed) then
			NetworkRequestControlOfEntity(closestPed)

			Citizen.Wait(1000)
		end

		SetEntityCoords(closestPed, PedLocation["x"], PedLocation["y"], PedLocation["z"] - 0.985)
		SetEntityHeading(closestPed, PedLocation["h"])

		SetEntityCoords(PlayerPedId(), Location["x"], Location["y"], Location["z"] - 0.985)
		SetEntityHeading(PlayerPedId(), Location["h"])
		SetCurrentPedWeapon(PlayerPedId(), GetHashKey("weapon_unarmed"), true)

		local animLib = "mp_cop_armoury"

		LoadModels({ animLib })

		if DoesEntityExist(closestPed) and closestPedDst <= 5.0 then
			TaskPlayAnim(closestPed, animLib, anim .. "_on_counter_cop", 1.0, -1.0, 1.0, 0, 0, 0, 0, 0)

			Citizen.Wait(1100)

			GiveWeaponToPed(closestPed, GetHashKey(weaponHash), 1, false, true)
			SetCurrentPedWeapon(closestPed, GetHashKey(weaponHash), true)

			TaskPlayAnim(PlayerPedId(), animLib, anim .. "_on_counter", 1.0, -1.0, 1.0, 0, 0, 0, 0, 0)

			Citizen.Wait(3100)

			RemoveWeaponFromPed(closestPed, GetHashKey(weaponHash))

			Citizen.Wait(15)

			GiveWeaponToPed(PlayerPedId(), GetHashKey(weaponHash), ReceiveAmmo, false, true)
			SetCurrentPedWeapon(PlayerPedId(), GetHashKey(weaponHash), true)

			ClearPedTasks(closestPed)

			TriggerServerEvent("esx_policejob:giveWeapon", weaponHash)
		end

		UnloadModels()
	end, function(data, menu)
		PlaySoundFrontend(-1, 'BACK', 'HUD_AMMO_SHOP_SOUNDSET', false)

		menu.close()
	end, function(data, menu)
		PlaySoundFrontend(-1, 'NAV', 'HUD_AMMO_SHOP_SOUNDSET', false)
	end)
end

RefreshPed = function(spawn)
	local Location = ArmoryPed

	ESX.TriggerServerCallback("esx_policejob:pedExists", function(Exists)
		if Exists and not spawn then
			return
		else
			LoadModels({ GetHashKey(Location["hash"]) })

			local pedId = CreatePed(5, Location["hash"], Location["x"], Location["y"], Location["z"] - 0.985, Location["h"], true)

			SetPedCombatAttributes(pedId, 46, true)                     
			SetPedFleeAttributes(pedId, 0, 0)                      
			SetBlockingOfNonTemporaryEvents(pedId, true)
			
			SetEntityAsMissionEntity(pedId, true, true)
			SetEntityInvincible(pedId, true)

			FreezeEntityPosition(pedId, true)
		end
	end)
end

local CachedModels = {}

LoadModels = function(models)
	for modelIndex = 1, #models do
		local model = models[modelIndex]

		table.insert(CachedModels, model)

		if IsModelValid(model) then
			while not HasModelLoaded(model) do
				RequestModel(model)
	
				Citizen.Wait(10)
			end
		else
			while not HasAnimDictLoaded(model) do
				RequestAnimDict(model)
	
				Citizen.Wait(10)
			end    
		end
	end
end

UnloadModels = function()
	for modelIndex = 1, #CachedModels do
		local model = CachedModels[modelIndex]

		if IsModelValid(model) then
			SetModelAsNoLongerNeeded(model)
		else
			RemoveAnimDict(model)   
		end

		table.remove(CachedModels, modelIndex)
	end
end