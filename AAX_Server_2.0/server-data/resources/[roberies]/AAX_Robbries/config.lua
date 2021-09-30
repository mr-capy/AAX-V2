Config = {}
Config.Locale = 'en'
Config.NumberOfCopsRequired_mainbank = 4

--Main Bank
Banks_MainBank = {
	  
	
		["main_bank"] = {
		position = { ['x'] = 265.51, ['y'] = 213.38, ['z'] = 101.68 },
		reward = math.random(200000,250000),
		nameofbank = "Main Bank",
		lastrobbed = 0
	},

}

---HoldUp

Config.NumberOfCopsRequired_holdup = 2

Banks_holdup = {
	  
	
		["littleseoul_twentyfourseven"] = {
		position = { ['x'] = -709.17, ['y'] = -904.21, ['z'] = 19.3 },
		reward = math.random(9000,11000),
		nameofbank = "Little Seoul",
		lastrobbed = 0
	},
		["ocean_liquor"] = {
		position = { ['x'] = -2959.33, ['y'] = 388.21, ['z'] = 14.3 },
		reward = math.random(9000,11000),
		nameofbank = "Robs Liquor. (Great Ocean Highway)",
		lastrobbed = 0
	},
		["rancho_liquor"] = {
		position = { ['x'] = 1126.80, ['y'] = -980.40, ['z'] = 45.5},
		reward = math.random(9000,11000),
		nameofbank = "Robs Liquor. (El Rancho Blvd)",
		lastrobbed = 0
	},
		["sanandreas_liquor"] = {
		position = { ['x'] = -1219.85, ['y'] = -916.27, ['z'] = 11.5 },
		reward = math.random(9000,11000),
		nameofbank = "Robs Liquor. (San Andreas Avenue)",
		lastrobbed = 0
	},
		["grove_ltd"] = {
		position = { ['x'] = -43.40, ['y'] = -1749.20, ['z'] = 29.5 },
		reward = math.random(9000,11000),
		nameofbank =  "LTD Gasoline. (Grove Street)",
		lastrobbed = 0
	},
		["mirror_ltd"] = {
		position = { ['x'] = 1160.67, ['y'] = -314.40, ['z'] = 69.3 },
		reward = math.random(9000,11000),
		nameofbank = "LTD Gasoline. (Mirror Park Boulevard)",
		lastrobbed = 0
	},

}

---Humane Robbery
Config.NumberOfCopsRequired_humane = 5

Banks_humane = {
	  
	["humane_labs"] = {
		position = { ['x'] = 3536.17, ['y'] = 3660.11, ['z'] = 28.3 },
		reward = math.random(350000,400000),
		nameofbank = "Humane Labs",
		lastrobbed = 0
	},

        ["fbi_office"] = {
		position = { ['x'] = 121.807, ['y'] = -739.0840, ['z'] = 254.1523 },
		reward = math.random(350000,400000),
		nameofbank = "FBI Office",
		lastrobbed = 500
	},
	
        ["aax_facility"] = {
        position = { ['x'] = 2017.92, ['y'] = 3021.3, ['z'] = -72.71 },
        reward = math.random(350000,400000),
        nameofbank = "AAX Facility",
        lastrobbed = 6000
    }

}
----Jewels Robbery 
Config.RequiredCopsRobJewelry = 2
--Config.RequiredCopsSellJewelry = 0
Config.MinJewels = 5 
Config.MaxJewels = 20
Config.MaxWindows = 20
Config.SecBetwNextRobJewelry = 3600 --1 hour
--Config.MaxJewelsSell = 20
--Config.PriceForOneJewel = 500
Config.EnableMarker = true
Config.NeedBag = true

--Config.Borsoni = {40, 41, 44, 45}

Stores = {
	["jewelry"] = {
		position = { ['x'] = -629.99, ['y'] = -236.542, ['z'] = 38.05 },       
		nameofstore = "jewelry",
		lastrobbed = 0
	}
}


