Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 0.5, y = 0.5, z = 0.5 }
Config.MarkerColor                = { r = 0, g = 0, b = 255 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true
Config.EnableNonFreemodePeds      = false
Config.EnableLicenses             = false

Config.EnableHandcuffTimer        = false
Config.HandcuffTimer              = 10 * 60000

Config.EnableJobBlip              = false

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.venomStations = {

	VENOM = {

		Blip = {
			Coords  = vector3(424.36, -981.38, 30.71),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(451.670, -992.986, 30.689)
			
		},

		Armories = {
			vector3(-109.37, 981.89, 235.78)
		},

		Vehicles = {
			{
				Spawner = vector3(-120.81, 1010.77, 235.75),
				InsideShop = vector3(-34.76, 941.55, 232.17),
				SpawnPoints = {
					{ coords = vector3(-123.3, 1004.32, 235.73), heading = 202.16, radius = 6.0 }
				
				}
			}

			
		},

		BossActions = {
			vector3(-58.13, 982.09, 234.58)
		}

	}

}


Config.AuthorizedVehicles = {
	Shared = {
--		{ model = 'venom2', label = 'Patrulla Recluta', price = 50000000000000000 },


	},

	recruit = {
	--	{ model = 'venom2', label = 'Patrulla Recluta', price = 50000000000000000 },

	},

	officer = {
	--	{ model = 'venom2', label = 'Patrulla Recluta', price = 50000000000000000 },

		
	},

	sergeant = {
	--	{ model = 'venom2', label = 'Patrulla Recluta', price = 50000000000000000 },

        },

	intendent = {
	--	{ model = 'venom2', label = 'Patrulla Recluta', price = 50000000000000000 },

	},

	lieutenant = {
	--	{ model = 'venom2', label = 'Patrulla Recluta', price = 50000000000000000 },

        },

	cheif = {
	--	{ model = 'venom2', label = 'Patrulla Recluta', price = 50000000000000000 },

	},

	boss = {
	--	{ model = 'venom2', label = 'Patrulla Recluta', price = 50000000000000000 },

	}
}

