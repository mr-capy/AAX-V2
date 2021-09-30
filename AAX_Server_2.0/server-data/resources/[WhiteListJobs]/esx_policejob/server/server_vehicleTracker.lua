local ESX = nil
local time_out = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent("esx_policejob")
AddEventHandler("esx_policejob", function(plate) 

    local xPlayers = ESX.GetPlayers()

    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])


        if xPlayer.getJob().name == 'police' then
            TriggerClientEvent("esx_policejob:plate", xPlayers[i], plate)

        end

    end
end)

RegisterServerEvent("esx_policejob:setActivePlates")
AddEventHandler("esx_policejob:setActivePlates", function(plate)
    time_out[plate] = false
end)

RegisterServerEvent("esx_policejob:removeActivePlate")
AddEventHandler("esx_policejob:removeActivePlate", function(plate)
    time_out[plate] = time_out[nil]
    local xPlayers = ESX.GetPlayers()

    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])


        if xPlayer.getJob().name == 'police' then
            TriggerClientEvent("esx_policejob:updateActivePlate", xPlayers[i], plate)
        end

    end

end)

RegisterServerEvent("esx_policejob:getActivePlates")
AddEventHandler("esx_policejob:getActivePlates", function()
    TriggerClientEvent("esx_policejob:getActivePlates", source, time_out)
end)


RegisterServerEvent("esx_policejob:triggerTimer")
AddEventHandler("esx_policejob:triggerTimer", function(plate)
    local xPlayers = ESX.GetPlayers()
    local startTimer = os.time() + Config.removeTimer
    Citizen.CreateThread(function()
        while os.time() < startTimer and time_out[plate] ~= nil do 
            Citizen.Wait(5)
        end

        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
    
    
            if xPlayer.getJob().name == 'police' then
                TriggerClientEvent("esx_policejob:updateTimer", xPlayers[i], plate)
            end
    
        end
    
    end)
end)

