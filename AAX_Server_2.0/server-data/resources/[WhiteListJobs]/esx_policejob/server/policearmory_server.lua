-- This is how much ammo you should get per weapon you take out.
local ReceiveAmmo = 250

local ESX = nil

local CachedPedState = false

TriggerEvent("esx:getSharedObject", function(response)
    ESX = response
end)

ESX.RegisterServerCallback("esx_policejob:pedExists", function(source, cb)
    if CachedPedState then
        cb(true)
    else
        CachedPedState = true

        cb(false)
    end
end)

RegisterServerEvent("esx_policejob:giveWeapon")
AddEventHandler("esx_policejob:giveWeapon", function(weapon)
    local player = ESX.GetPlayerFromId(source)

    if player then
        player.addWeapon(weapon, ReceiveAmmo)

        TriggerClientEvent("esx:showNotification", source, "You just received 1x " .. ESX.GetWeaponLabel(weapon) .. " with " .. ReceiveAmmo .. "x ammo.")
    end
end)