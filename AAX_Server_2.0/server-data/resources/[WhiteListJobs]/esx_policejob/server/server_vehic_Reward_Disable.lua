local Cops = {
	"steam:100000000000",
}

RegisterServerEvent("esx_policejob:askDropWeapon")
AddEventHandler("esx_policejob:askDropWeapon", function(wea)
	local isCop = false

	for _,k in pairs(Cops) do
		if(k == getPlayerID(source)) then
			isCop = true
			break;
		end
	end

	if(not isCop) then
		print(1)
		TriggerClientEvent("esx_policejob:drop", source, wea)
	end

end)


function getPlayerID(source)
    local identifiers = GetPlayerIdentifiers(source)
    local player = getIdentifiant(identifiers)
    return player
end

-- gets the actual player id unique to the player,
-- independent of whether the player changes their screen name
function getIdentifiant(id)
    for _, v in ipairs(id) do
        return v
    end
end