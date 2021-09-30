Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.0, y = 1.0, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true
Config.EnableNonFreemodePeds      = false
Config.EnableLicenses             = true

Config.EnableHandcuffTimer        = true
Config.HandcuffTimer              = 10 * 60000

Config.EnableJobBlip              = true

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.policeStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(424.36, -981.38, 30.71),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.7,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(461.823, -999.046, 30.689)
		
		},

		Armories = {
			vector3(461.57, -979.74, 30.69)
		},

		Vehicles = {
			{
				Spawner = vector3(449.072, -999.7164, 25.6997),
				InsideShop = vector3(463.43, -1090.79, 43.08),
				SpawnPoints = {
					{ coords = vector3(445.599, -994.253,25.699), heading = 271.03, radius = 6.0 }
				
				}
			}

			
		},

		Helicopters = {
			{
				Spawner = vector3(460.64, -980.39, 43.6),
				InsideShop = vector3(476.91, -1106.56, 43.08),
				SpawnPoints = {
					{ coords = vector3(449.51, -981.51, 43.69), heading = 84.32, radius = 10.0 },
					{ coords = vector3(481.56, -982.38, 41.01), heading = 268.31, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(459.887, -985.330, 30.728)
		}
	}

}

Config.AuthorizedWeapons = {
	recruit = {
	--		{ name = 'WEAPON_NIGHTSTICK',       price = 0 },
	--		{ name = 'WEAPON_COMBATPISTOL',     price = 0 },
	--		{ name = 'WEAPON_STUNGUN',          price = 0 },
	--		{ name = 'WEAPON_MachinePistol',    price = 0 },
	--		{ name = 'WEAPON_assaultsmg',  	    price = 0 },
	--		{ name = 'WEAPON_CarbineRifle',     price = 0 },
		
	},

	officer = {
		
	--	    { name = 'WEAPON_NIGHTSTICK',       price = 0 },
	--		{ name = 'WEAPON_COMBATPISTOL',     price = 0 },
	--		{ name = 'WEAPON_STUNGUN',          price = 0 },
	--		{ name = 'WEAPON_MachinePistol',    price = 0 },
	--		{ name = 'WEAPON_assaultsmg',  	    price = 0 },
	--		{ name = 'WEAPON_CarbineRifle',     price = 0 },
	},

	sergeant = {
		
	--		{ name = 'WEAPON_NIGHTSTICK',       price = 0 },
	--		{ name = 'WEAPON_COMBATPISTOL',     price = 0 },
	--		{ name = 'WEAPON_STUNGUN',          price = 0 },
	--		{ name = 'WEAPON_MachinePistol',    price = 0 },
	--		{ name = 'WEAPON_assaultsmg',  	    price = 0 },
	--		{ name = 'WEAPON_CarbineRifle',     price = 0 },
	},

	intendent = {
	--		{ name = 'WEAPON_NIGHTSTICK',       price = 0 },
	--		{ name = 'WEAPON_COMBATPISTOL',     price = 0 },
	--		{ name = 'WEAPON_STUNGUN',          price = 0 },
	--		{ name = 'WEAPON_MachinePistol',    price = 0 },
	--		{ name = 'WEAPON_assaultsmg',  	    price = 0 },
	--		{ name = 'WEAPON_CarbineRifle',     price = 0 },
		
	},

	lieutenant = {
		
	--		{ name = 'WEAPON_NIGHTSTICK',       price = 0 },
	--		{ name = 'WEAPON_COMBATPISTOL',     price = 0 },
	--		{ name = 'WEAPON_STUNGUN',          price = 0 },
	--		{ name = 'WEAPON_MachinePistol',    price = 0 },
	--		{ name = 'WEAPON_assaultsmg',  	    price = 0 },
	--		{ name = 'WEAPON_CarbineRifle',     price = 0 },
	},

	cheif = {
	--		{ name = 'WEAPON_NIGHTSTICK',       price = 0 },
	--		{ name = 'WEAPON_COMBATPISTOL',     price = 0 },
	--		{ name = 'WEAPON_STUNGUN',          price = 0 },
	--		{ name = 'WEAPON_MachinePistol',    price = 0 },
	--		{ name = 'WEAPON_assaultsmg',  	    price = 0 },
	--		{ name = 'WEAPON_CarbineRifle',     price = 0 },
		
	},

	boss = {
	--		{ name = 'WEAPON_NIGHTSTICK',       price = 0 },
	--		{ name = 'WEAPON_COMBATPISTOL',     price = 0 },
	--		{ name = 'WEAPON_STUNGUN',          price = 0 },
	--		{ name = 'WEAPON_MachinePistol',    price = 0 },
	--		{ name = 'WEAPON_assaultsmg',       price = 0 },
	--		{ name = 'WEAPON_CarbineRifle',     price = 0 },
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'police2', label = 'Patrulla Recluta', price = 1 },
--		{ model = 'sheriff', label = 'Patrulla Todoterreno', price = 1 },
--		{ model = 'policeb', label = 'Patrulla en Moto', price = 1 },
--		{ model = 'policeb1', label = 'Patrulla Hakuchou', price = 1 },
--		{ model = 'policeb2', label = 'Patrulla BF400', price = 1 }

	},

	recruit = {
	--	{ model = 'police2', label = 'Patrulla Recluta', price = 1 },
	---	{ model = 'sheriff', label = 'Patrulla Todoterreno', price = 1 },
	--	{ model = 'policeb', label = 'Patrulla en Moto', price = 1 },
	--	{ model = 'policeb1', label = 'Patrulla Hakuchou', price = 1 },
	--	{ model = 'policeb2', label = 'Patrulla BF400', price = 1 }
	},

	officer = {
	--	{ model = 'police2', label = 'Patrulla Recluta', price = 1 },
	--	{ model = 'sheriff', label = 'Patrulla Todoterreno', price = 1 },
	--	{ model = 'policeb', label = 'Patrulla en Moto', price = 1 },
	--	{ model = 'police3', label = 'Patrulla Oficial', price = 1 },
	--	{ model = 'sheriff2', label = 'Patrulla Todoterreno oficial', price = 1 },
	--	{ model = 'policeb1', label = 'Patrulla Hakuchou', price = 1 },
	--	{ model = 'policeb2', label = 'Patrulla BF400', price = 1 }
		
	},

	sergeant = {
	--	{ model = 'police2', label = 'Patrulla Recluta', price = 1 },
	--	{ model = 'sheriff', label = 'Patrulla Todoterreno', price = 1 },
	--	{ model = 'policeb', label = 'Patrulla en Moto', price = 1 },
	--	{ model = 'police3', label = 'Patrulla Oficial', price = 1 },
	--	{ model = 'sheriff2', label = 'Patrulla Todoterreno oficial', price = 1 },
	--	{ model = 'fbi2', label = 'Mossos SWAT', price = 1 },
	--	{ model = '2015polstang', label = 'Patrulla Sargento', price = 1 },
	--	{ model = 'policeb1', label = 'Patrulla Hakuchou', price = 1 },
	--	{ model = 'policeb2', label = 'Patrulla BF400', price = 1 }
        },

	intendent = {
	--	{ model = 'police2', label = 'Patrulla Recluta', price = 1 },
	--	{ model = 'sheriff', label = 'Patrulla Todoterreno', price = 1 },
	--	{ model = 'policeb', label = 'Patrulla en Moto', price = 1 },
	--	{ model = 'police3', label = 'Patrulla Oficial', price = 1 },
	--	{ model = 'sheriff2', label = 'Patrulla Todoterreno oficial', price = 1 },
	--	{ model = 'fbi2', label = 'Mossos SWAT', price = 1 },
	--	{ model = '2015polstang', label = 'Patrulla Sargento', price = 1 },
	--	{ model = 'ghispo2', label = 'Patrulla Teniente', price = 1 },
	--	{ model = 'policeb1', label = 'Patrulla Hakuchou', price = 1 },
	--	{ model = 'policeb2', label = 'Patrulla BF400', price = 1 }
	},

	lieutenant = {
	--	{ model = 'police2', label = 'Patrulla Recluta', price = 1 },
	--	{ model = 'sheriff', label = 'Patrulla Todoterreno', price = 1 },
	--	{ model = 'policeb', label = 'Patrulla en Moto', price = 1 },
	--	{ model = 'police3', label = 'Patrulla Oficial', price = 1 },
	--	{ model = 'sheriff2', label = 'Patrulla Todoterreno oficial', price = 1 },
	--	{ model = 'fbi2', label = 'Mossos SWAT', price = 1 },
	--	{ model = '2015polstang', label = 'Patrulla Sargento', price = 1 },
	--	{ model = 'ghispo2', label = 'Patrulla Teniente', price = 1 },
	--	{ model = 'policeb1', label = 'Patrulla Hakuchou', price = 1 },
	--	{ model = 'policeb2', label = 'Patrulla BF400', price = 1 }
        },

	cheif = {
	--	{ model = 'police2', label = 'Patrulla Recluta', price = 1 },
	--	{ model = 'sheriff', label = 'Patrulla Todoterreno', price = 1 },
	--	{ model = 'policeb', label = 'Patrulla en Moto', price = 1 },
	--	{ model = 'police3', label = 'Patrulla Oficial', price = 1 },
	--	{ model = 'sheriff2', label = 'Patrulla Todoterreno oficial', price = 1 },
	--	{ model = 'fbi2', label = 'Mossos SWAT', price = 1 },
	--	{ model = '2015polstang', label = 'Patrulla Sargento', price = 1 },
	--	{ model = 'ghispo2', label = 'Patrulla Teniente', price = 1 },
	--	{ model = 'policeb1', label = 'Patrulla Hakuchou', price = 1 },
	--	{ model = 'policeb2', label = 'Patrulla BF400', price = 1 },
	--	{ model = 'challenger18', label = 'Patrulla Demon', price = 1 }
	},

	boss = {
	--	{ model = 'police2', label = 'Patrulla Recluta', price = 1 },
	--	{ model = 'sheriff', label = 'Patrulla Todoterreno', price = 1 },
	--	{ model = 'policeb', label = 'Patrulla en Moto', price = 1 },
	--	{ model = 'police3', label = 'Patrulla Oficial', price = 1 },
	--	{ model = 'sheriff2', label = 'Patrulla Todoterreno oficial', price = 1 },
	--	{ model = 'fbi2', label = 'Mossos SWAT', price = 1 },
	--	{ model = '2015polstang', label = 'Patrulla Sargento', price = 1 },
	--	{ model = 'ghispo2', label = 'Patrulla Teniente', price = 1 },
	--	{ model = 'challenger18', label = 'Patrulla Demon', price = 1 },
	--	{ model = 'policeb1', label = 'Patrulla Hakuchou', price = 1 },
	--	{ model = 'policeb2', label = 'Patrulla BF400', price = 1 }
	}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {},

	sergeant = {
--		{ model = 'polmav', label = 'police Maverick', livery = 0, price = 20 }
	},

	intendent = {
--		{ model = 'polmav', label = 'police Maverick', livery = 0, price = 20 }
	},

	lieutenant = {
--		{ model = 'polmav', label = 'police Maverick', livery = 0, price = 20 }
	},

	cheif = {
		{ model = 'polmav', label = 'police Maverick', livery = 0, price = 10 }
	--	{ model = 'ec145', label = 'police Heli', livery = 0, price = 10 }
	},

	boss = {
		{ model = 'polmav', label = 'police Maverick', livery = 0, price = 10 }
	--	{ model = 'ec145', label = 'police Heli', livery = 0, price = 10 }

	}
}

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 30,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
			
		},
		female = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 30,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 129,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 30,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
				
		},
		female = {
			['tshirt_1'] = 129,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 30,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 129,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 26,
			['pants_1'] = 24,   ['pants_2'] = 2,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 21,    ['chain_2'] = 11,
			['ears_1'] = -1,     ['ears_2'] = 0,
			
		},
		female = {
			['tshirt_1'] = 129,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 26,
			['pants_1'] = 24,   ['pants_2'] = 2,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 21,    ['chain_2'] = 11,
			['ears_1'] = -1,     ['ears_2'] = 0,
		}
	},
	
	intendent_wear = {
		male = {
			['tshirt_1'] = 130,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 26,
			['pants_1'] = 24,   ['pants_2'] = 2,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 21,    ['chain_2'] = 11,
			['ears_1'] = -1,     ['ears_2'] = 0,
			
		},
		female = {
			['tshirt_1'] = 130,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 26,
			['pants_1'] = 24,   ['pants_2'] = 2,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 21,    ['chain_2'] = 11,
			['ears_1'] = -1,     ['ears_2'] = 0,
		}
	},

	lieutenant_wear = {
		male = {
			['tshirt_1'] = 122,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 2,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 26,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 21,    ['chain_2'] = 11,
			['ears_1'] = -1,     ['ears_2'] = 0,
			
		},
		female = {
			['tshirt_1'] = 122,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 2,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 26,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 21,    ['chain_2'] = 11,
			['ears_1'] = -1,     ['ears_2'] = 0,
		}
	},
	chief_wear = {
		male = {
			['tshirt_1'] = 22,  ['tshirt_2'] = 0,
			['torso_1'] = 21,   ['torso_2'] = 3,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 33,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 36,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 24,    ['chain_2'] = 14,
			['ears_1'] = -1,     ['ears_2'] = 0,
			
		},
		female = {
			['tshirt_1'] = 22,  ['tshirt_2'] = 0,
			['torso_1'] = 21,   ['torso_2'] = 3,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 33,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 36,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 24,    ['chain_2'] = 14,
			['ears_1'] = -1,     ['ears_2'] = 0,
		}
	},
	boss_wear = {
		male = {
			['tshirt_1'] = 21,  ['tshirt_2'] = 4,
			['torso_1'] = 4,   ['torso_2'] = 3,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 33,
			['pants_1'] = 24,   ['pants_2'] = 1,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 38,    ['chain_2'] = 6,
			['ears_1'] = -1,     ['ears_2'] = 0,
			
		},
		female = {
			['tshirt_1'] = 21,  ['tshirt_2'] = 4,
			['torso_1'] = 4,   ['torso_2'] = 3,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 33,
			['pants_1'] = 24,   ['pants_2'] = 1,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 38,    ['chain_2'] = 6,
			['ears_1'] = -1,     ['ears_2'] = 0,
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 7,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 78,  ['tshirt_2'] = 3,
			['torso_1'] = 54,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 38,
			['pants_1'] = 59,   ['pants_2'] = 9,
			['shoes_1'] = 60,   ['shoes_2'] = 0,
			['helmet_1'] = 125,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
		},
		female = {
			['tshirt_1'] = 78,  ['tshirt_2'] = 3,
			['torso_1'] = 54,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 38,
			['pants_1'] = 59,   ['pants_2'] = 9,
			['shoes_1'] = 60,   ['shoes_2'] = 0,
			['helmet_1'] = 125,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0,
		}
	}

}
-----------------------------------------------------------------------------------------------------------------------------
----------------------------Police Vehicles Tracker F9------------------------------------------------------------------------
Config.openKey = 56 -- Button to open up the menu (see: https://docs.fivem.net/docs/game-references/controls/)
Config.removeTimer = 380 -- How long will you track the vehicle before the tracker expires (in seconds)
Config.maxTracker = 2 -- Max amount of vehicles to track at once
Config.inVehicle = true -- If you want the menu to be accessible only when inside of a vehicle