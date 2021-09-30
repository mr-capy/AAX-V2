Config = {}

Config.Locale = 'en'

Config.Delays = {
	WeedProcessing = 1000 * 10,
}

Config.DrugDealerItems = {
	marijuana = 800,
	coke_pooch = 1000,
	meth = 800,
	jewels = 200,
	dairymilk = 40000,
	
}


Config.MoneyWashLicenseEnabled = false --Will Enable or Disable the need for a MoneyWash License.

Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 15000}
}

Config.Licenses = {
	moneywash = 75000,
	
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	--Weed
	WeedField = {coords = vector3(2224.64, 5577.03, 53.85), name = _U('blip_WeedFarm'), color = 25, sprite = 496, radius = 100.0},
	WeedProcessing = {coords = vector3(2329.12, 2571.86, 46.68), name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = 100.0},
	
	

	--DrugDealer Lester
	DrugDealer = {coords = vector3(707.02, -966.92, 30.41), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 25.0},
	
	
	--MoneyWash
	MoneyWash = {coords = vector3(-595.61, -1597.78, 27.01), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 25.0},
}
---------------------------------------------------------------------------------------------------------------------------------------------------
-----------========Coke Drug Config Start =================================-------------------------------------------------------------------------

Config.PickupBlip = {x = -1833.4  , y = 2176.7 ,z = 107.2}
Config.Processing = {x = 2434.2  , y = 4968.6, z =41.3}
