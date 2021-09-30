Config                			= {}
Config.DrawDistance   			= 100
Config.Size           			= { x = 0.5, y = 0.5, z = 0.5 }
Config.Color          			= { r = 0, g = 0, b = 255 }
Config.Type           			= 21
Config.Locale         			= 'en'
Config.EnableLicense  			= false
Config.LicensePrice   			= 80000
Config.EnableClipGunShop		= true
Config.EnableClipBlackWeashop	= true

Config.EnableClip = {
	GunShop = {
		Price = 3000,
		Label = "Ammo Magazine"	
	},
	BlackWeashop = {
		Price = 2500,
		Label = "Ammo Magazine"	
	}
}

Config.Zones = {

    GunShop = {
        legal = 0,
        Items = {},
        Pos   = {
		
			{ x = 22.09,      y = -1107.28,   z = 29.5 }, --Inside City 1 near car dealer
			{ x = 252.068,     y = -50.0169,     z = 69.5}, --Inside City 2
			{ x = 1693.807,    y = 3759.502,    z = 34.5}, --Sandy Shore
		    { x = -330.0108,    y = 6083.483,    z = 31.3}, -- Other Side Map
		   

        }
    },

    BlackWeashop = {
        legal = 1,
        Items = {},
        Pos   = {
            { x = 145.81,   y = -2199.5,  z = 4.69},
        }
    },

}
