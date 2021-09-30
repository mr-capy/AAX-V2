Config                            = {}
Config.Locale                     = 'en'

Config.DrawDistance               = 20.0 -- How close you need to be in order for the markers to be drawn (in GTA units).
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true -- Enable society managing.
Config.EnableSocietyOwnedVehicles = false

Config.NPCSpawnDistance           = 500.0
Config.NPCNextToDistance          = 25.0
Config.NPCJobEarnings             = { min = 0, max = 0 }

Config.Vehicles = {
	'towtruck',
	'towtruck',
	'towtruck',
	'towtruck',
	'sultan'
}

Config.Zones = {

	MechanicActions = {
		Pos   = { x = -215.794, y = -1318.826, z = 30.890 },
		Size  = { x = 0.5, y = 0.5, z = 0.5 },
		Color = { r = 0, g = 0, b = 255 },
		Type  = 21
	},

	Garage = {
		Pos   = { x = -325.228, y = -129.357, z = 39.009 },
		Size  = { x = 0.5, y = 0.5, z = 0.5 },
		Color = { r = 0, g = 0, b = 255 },
		Type  = 21
	},

	Craft = {
		Pos   = { x = -344.040, y = -139.3079, z = 39.009 },
		Size  = { x = 0.5, y = 0.5, z = 0.5 },
		Color = { r = 0, g = 0, b = 255 },
		Type  = 21
	},

	VehicleSpawnPoint = {
		Pos   = { x = -184.49, y = -1316.07, z = 31.3 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = -1
	},
  
	VehicleDeleter = {
		Pos   = { x = -180.02, y = -1316.29, z = 31.3 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Color = { r = 225, g = 0, b = 0 },
		Type  = -1
	},

	VehicleDelivery = {
		Pos   = { x = -382.925, y = -133.748, z = 37.685 },
		Size  = { x = 20.0, y = 20.0, z = 3.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = -1
	}
}

Config.Towables = {
--	vector3(-2480.9, -212.0, 17.4)
}

for k,v in ipairs(Config.Towables) do
	Config.Zones['Towable' .. k] = {
		Pos   = v,
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = -1
	}
end