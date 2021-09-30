RegisterNetEvent("mythic_hospital:items:gauze")
AddEventHandler("mythic_hospital:items:gauze", function(item)
    
	
            TriggerEvent('mythic_hospital:client:FieldTreatBleed')
    
end)

RegisterNetEvent("mythic_hospital:items:bandage")
AddEventHandler("mythic_hospital:items:bandage", function(item)

            local maxHealth = GetEntityMaxHealth(PlayerPedId())
            local health = GetEntityHealth(PlayerPedId())
            local newHealth = math.min(maxHealth, math.floor(health + maxHealth / 16))
            SetEntityHealth(PlayerPedId(), newHealth)
    
end)

RegisterNetEvent("mythic_hospital:items:firstaid")
AddEventHandler("mythic_hospital:items:firstaid", function(item)
    
            local maxHealth = GetEntityMaxHealth(PlayerPedId())
            local health = GetEntityHealth(PlayerPedId())
            local newHealth = math.min(maxHealth, math.floor(health + maxHealth / 8))
            SetEntityHealth(PlayerPedId(), newHealth)
    
end)

RegisterNetEvent("mythic_hospital:items:medkit")
AddEventHandler("mythic_hospital:items:medkit", function(item)
    
            SetEntityHealth(PlayerPedId(), GetEntityMaxHealth(PlayerPedId()))
            TriggerEvent('mythic_hospital:client:FieldTreatLimbs')
   
end)

RegisterNetEvent("mythic_hospital:items:vicodin")
AddEventHandler("mythic_hospital:items:vicodin", function(item)
    
            TriggerEvent('mythic_hospital:client:UsePainKiller', 1)
    
end)

RegisterNetEvent("mythic_hospital:items:hydrocodone")
AddEventHandler("mythic_hospital:items:hydrocodone", function(item)
    
            TriggerEvent('mythic_hospital:client:UsePainKiller', 2)
   
end)

RegisterNetEvent("mythic_hospital:items:morphine")
AddEventHandler("mythic_hospital:items:morphine", function(item)
   
            TriggerEvent('mythic_hospital:client:UsePainKiller', 6)
    
end)