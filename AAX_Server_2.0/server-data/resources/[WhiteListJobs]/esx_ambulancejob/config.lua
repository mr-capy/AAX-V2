Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 21, x = 0.5, y = 0.5, z = 0.5, r = 0, g = 255, b = 0, a = 100, rotate = true }

Config.ReviveReward               = 5000  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 3 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 5 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = { coords = vector3(250.92, -561.57, 43.27), heading = 48.5 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(293.43, -581.63, 43.19),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(309.64, -602.94, 43.29)
		},

		Pharmacies = {
			vector3(316.81, -588.1, 43.29)
		},

		Vehicles = {
			{
				Spawner = vector3(295.77, -614.4, 43.41),
				InsideShop = vector3(446.7, -1355.6, 43.5),
				Marker = { type = 36, x = 0.5, y = 0.5, z = 0.5, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(285.06, -608.28, 43.21), heading = 74.96, radius = 4.0 },
					{ coords = vector3(285.45, -614.45, 43.45), heading = 69.62, radius = 4.0 },
					{ coords = vector3(286.7, -605.26, 43.18), heading = 69.72, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
			
				Spawner = vector3(339.39, -589.92, 74.16),
				InsideShop = vector3(-73.78, -817.66, 326.17),
				Marker = { type = 34, x = 0.5, y = 0.5, z = 0.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(356.70, -586.81, 74.16), heading = 39.8, radius = 10.0 },
					
				}
			}
		},

		FastTravels = {
		--[[
		{
				From = vector3(328.33, -599.77, 42.29),
				To = { coords = vector3(338.99, -583.94, 74.16), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			
			},

			{
				From = vector3(338.99, -583.94, 74.16),
				To = { coords = vector3(328.33, -599.77, 42.29), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(317.9, -1476.1, 28.9),
				To = { coords = vector3(238.6, -1368.4, 23.5), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			}
]]--		
},

		FastTravelsPrompt = {
			{
				From = vector3(328.33, -599.77, 43.29),
				To = { coords = vector3(338.99, -583.94, 74.16), heading = 0.0 },
				Marker = { type = 21, x = 0.5, y = 0.5, z = 0.5, r = 0, g = 0, b = 255, a = 100, rotate = true },
				Prompt = _U('fast_travel')
			},

			{
			
				From = vector3(338.99, -583.94, 74.16),
				To = { coords = vector3(299.096, -599.051, 43.292), heading = 0.0 },
				Marker = { type = 21, x = 0.5, y = 0.5, z = 0.5, r = 0, g = 0, b = 225, a = 100, rotate = true },
				Prompt = _U('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {

	ambulance = {

	},

	doctor = {

	},

	chief_doctor = {

	},

	boss = {
		{ model = 'Ambulance', label = 'EMS Ambulance', price = 500000000},
		{ model = 'dodgeEMS', label = 'Dodge EMS', price = 500000000}
		
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
--		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 150000 },
--		{ model = 'seasparrow', label = 'Sea Sparrow', price = 150000 }
	},

	chief_doctor = {
--		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 150000 },
--		{ model = 'seasparrow', label = 'Sea Sparrow', price = 150000 }
	},

	boss = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 150000 },
--		{ model = 'seasparrow', label = 'Sea Sparrow', price = 150000 }
	}

}
