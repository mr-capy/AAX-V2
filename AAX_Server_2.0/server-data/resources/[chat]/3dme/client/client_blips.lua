
--=============Blips Client Only ====------------====================------------------------


	local blips = {
		-- Hospital
		 {title="Allied Hospital", colour=2, id=61, x=297.53, y=-584.00, z=43.26},
		 
		 
		--TwentyFourSeven
		 {title="shops", colour=2, id=52, x = 373.875,   y = 325.896,  z = 102.566},
		 {title="shops", colour=2, id=52, x = 2557.458,  y = 382.282,  z = 107.622},
		 {title="shops", colour=2, id=52, x = -3038.939, y = 585.954,  z = 6.908},
		 {title="shops", colour=2, id=52, x = -3241.927, y = 1001.462, z = 11.830},
		 {title="shops", colour=2, id=52, x = 547.431,   y = 2671.710, z = 41.156},
		 {title="shops", colour=2, id=52, x = 1961.464,  y = 3740.672, z = 31.343},
		 {title="shops", colour=2, id=52, x = 2678.916,  y = 3280.671, z = 54.241},
		 {title="shops", colour=2, id=52, x = 1729.216,  y = 6414.131, z = 34.037},
		
		--RobsLiquor
		 {title="shops", colour=2, id=52, x = 1135.808,  y = -982.281,  z = 45.415},
		 {title="shops", colour=2, id=52, x = -1222.915, y = -906.983,  z = 11.326},
		 {title="shops", colour=2, id=52, x = -1487.553, y = -379.107,  z = 39.163},
		 {title="shops", colour=2, id=52, x = -2968.243, y = 390.910,   z = 14.043},
		 {title="shops", colour=2, id=52, x = 1166.024,  y = 2708.930,  z = 37.157},
		 {title="shops", colour=2, id=52, x = 1392.562,  y = 3604.684,  z = 33.980},
		 {title="shops", colour=2, id=52, x = 25.723,   y = -1346.966, z = 28.497},
		 {title="shops", colour=2, id=52, x = -1393.409, y = -606.624,  z = 29.319},
		 {title="shops", colour=2, id=52, x = -1037.618,  y = -2737.399,   z = 19.169},
		 
		 
		--LTDgasoline
		 {title="shops", colour=2, id=52, x = -48.519,   y = -1757.514, z = 28.421},
		 {title="shops", colour=2, id=52, x = 1163.373,  y = -323.801,  z = 68.205},
		 {title="shops", colour=2, id=52, x = -707.501,  y = -914.260,  z = 18.215},
		 {title="shops", colour=2, id=52, x = -1820.523, y = 792.518,   z = 137.118},
		 {title="shops", colour=2, id=52, x = 1698.388,  y = 4924.404,  z = 41.063},
		 
		
		--Black item shops
		{title="Pawn Shop", colour=40, id=52, x = 412.37,   y = 314.62,  z = 103.02},
		
		--weed field
		{title="Weed Field", colour=2, id=140, x = 2224.64,   y = 5577.03,  z = 53.85},
		--Weed Processing
		{title="Weed Processing", colour=2, id=140, x = 2329.12,   y = 2571.86,  z = 46.68},
		--MoneyWash
		{title="Money Wash", colour=1, id=500, x = -595.61,   y = -1597.78,  z = 27.01},
		--DrugDealer Lester
		{title="Money Wash", colour=1, id=77, x = 707.02,   y = -966.92,  z = 30.41},

-----------GANGS

		--Gang Hideout 1 
		{title="Venom Hideout", colour=1, id=429, x = -98.982,   y = 994.098,  z = 235.782}, 
		--Gang Hideout 2
		{title="Gang Hideout 2", colour=1, id=429, x = -3224.115,   y = 798.9155,  z = 8.927},
		--Gang Hideout 3
		{title="Gang Hideout 3", colour=1, id=429, x = -1527.953,   y = 136.421,  z = 55.668},
		--gang Hideout 4
		{title="Gang Hideout 4", colour=1, id=429, x = 1400.075,   y = 1148.797,  z = 114.333},
		--gang Hideout 5
		{title="Gang Hideout 5", colour=1, id=429, x = -1884.17,   y = 2059.89,  z = 140.98},
		--gang Hideout 6
		{title="Gang Hideout 6", colour=1, id=429, x = -812.34,   y = 179.62,  z = 72.16},
		--gang Hideout 7
		{title="Gang Hideout 7", colour=1, id=429, x = -0.68,   y = 531.14,  z = 175.34},
		

		-------JOBS
		
		--Hunting job start point
		{title="Hunting", colour=0, id=141, x = -769.377,   y = 5595.700,  z = 33.485},
		--Hunting job Sell point
		{title="Meat Seller", colour=0, id=141, x = 969.163,   y = -2107.903,  z = 31.475},
		
		--Night Club
		{title="Night Club", colour=4, id=614, x = -20.83,   y = 239.58,  z = 109.55},
		--Faciliy Robbery
		{title="AAX Faciliy Robbery", colour=4, id=590, x = 1865.72,   y = 270.56,  z = 164.27},

	 
		}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


--============================------==Blips CLient End --============================================-----------------