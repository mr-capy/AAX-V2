Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 120, g = 120, b = 240 }
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = false -- use with EnablePlayerManagement disabled, or else it wont have any effects
Config.ResellPercentage           = 50

Config.Locale = 'en'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(-33.7, -1102.0, 26.2),
		Size  = {x = 0.5, y = 0.5, z = 0.5},
		Type  = 36
	},

	ShopInside = {
		Pos     = vector3(-91.576, -999.101, 104.262),
		Size    = {x = 0.5, y = 0.5, z = 0.5},
		Heading = 162.36,
		Type    = -1
	},

	ShopOutside = {
		Pos     = vector3(-14.352, -1101.1661, 26.672),
		Size    = {x = 0.5, y = 0.5, z = 0.5},
		Heading = 159.08,
		Type    = -1
	},

	BossActions = {
		Pos   = vector3(-32.0, -1114.2, 25.4),
		Size  = {x = 0.5, y = 0.5, z = 0.5},
		Type  = -1
	},

	GiveBackVehicle = {
		Pos   = vector3(-18.2, -1078.5, 25.6),
		Size  = {x = 0.5, y = 0.5, z = 0.5},
		Type  = (Config.EnablePlayerManagement and 1 or -1)
	},

	ResellVehicle = {
		Pos   = vector3(-44.6, -1080.7, 25.6),
		Size  = {x = 0.5, y = 0.5, z = 0.5},
		Type  = 1
	}

}


--Conifg Give Vehicle Keys
Config.ReceiveMsg = true

-- Allow below identifier player to execute commands
Config.AuthorizedRanks = {
  'superadmin',
--  
}
----------------------------------------------------------------------------------------------------------------------------------------
----Door lock Config Start --------------------------------------------------------------------------------------------------------------
Config.Doors = {

-------------------Gabz MrPD---------------------------------
--PD MAIn Door 2doors
		{
		textCoords = vector3( 434.71, -981.96, 30.69),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = false,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = 90.0,
				objCoords = vector3( 434.68, -982.4, 30.72)
			},

			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = -90.0,
				objCoords = vector3( 434.88, -981.4, 30.72)
			}
		}
	},

	
	--Garage Side Door 2doors
		{
		textCoords = vector3( 441.74, -998.62, 30.73),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = 0.0,
				objCoords = vector3( 441.44, -998.64, 30.72)
			},

			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = 180.0,
				objCoords = vector3( 442.36, -998.6, 30.72)
			}
		}
	},

	--Other Side Doors 2 Doors
	{
		textCoords = vector3( 457.12, -972.25, 30.71),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = 0.0,
				objCoords = vector3( 456.6, -972.4, 30.72)
			},

			{
				objName = 'gabz_mrpd_reception_entrancedoor',
				objYaw = 180.0,
				objCoords = vector3( 457.6, -972.4, 30.72)
			}
		}
	},
	--Pd Metting room near garage door
	
	{
		textCoords = vector3( 438.24, -995.09, 30.79),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'gabz_mrpd_door_01',
				objYaw = -90.0,
				objCoords = vector3( 438.4, -994.6, 30.8)
			},

			{
				objName = 'gabz_mrpd_door_01',
				objYaw = 90.0,
				objCoords = vector3( 438.28, -995.52, 30.8)
			}
		}
	},
	--roof top
	
	{
		objName = 'gabz_mrpd_door_03',
		objYaw = 90.0,
		objCoords  = vector3(464.48, -983.68, 43.76),
		textCoords = vector3(464.48, -983.68, 43.76),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	---IG / CAptain Room Door
		{
		objName = 'gabz_mrpd_door_05',
		objYaw = -90.0,
		objCoords  = vector3(458.75, -990.0, 30.79),
		textCoords = vector3(458.75, -990.0, 30.79),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	--Ground floor Middle Center Main Door
		{
		textCoords = vector3(469.52, -986.73, 30.79),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'gabz_mrpd_door_01',
				objYaw = 90.0,
				objCoords = vector3( 469.52, -986.73, 30.79)
			},

			{
				objName = 'gabz_mrpd_door_01',
				objYaw = -90.0,
				objCoords = vector3(469.35, -985.9, 30.79)
			}
		}
	},
--Cell Doors

	{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 180.0,
		objCoords  = vector3( 481.72, -1004.16, 26.32),
		textCoords = vector3( 481.72, -1004.16, 26.32),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
		{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 270.0,
		objCoords  = vector3( 476.56, -1008.0, 26.32),
		textCoords = vector3( 476.56, -1008.0, 26.32),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
		{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 0.0,
		objCoords  = vector3( 477.2, -1012.12, 26.32),
		textCoords = vector3( 477.2, -1012.12, 26.32),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
		{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 0.0,
		objCoords  = vector3( 480.2, -1012.04, 26.32),
		textCoords = vector3( 480.2, -1012.04, 26.32),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
		{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 0.0,
		objCoords  = vector3( 483.28, -1012.16, 26.32),
		textCoords = vector3( 483.28, -1012.16, 26.32),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
		{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 0.0,
		objCoords  = vector3( 486.04, -1011.96, 26.28),
		textCoords = vector3( 486.04, -1011.96, 26.28),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
		{
		objName = 'gabz_mrpd_cells_door',
		objYaw = 180.0,
		objCoords  = vector3( 484.92, -1007.68, 26.32),
		textCoords = vector3( 484.92, -1007.68, 26.32),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	--Back SIde Enterance Door
	{
		textCoords = vector3( 469.2, -1014.32, 26.44),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'gabz_mrpd_door_03',
				objYaw = 180.0,
				objCoords = vector3( 469.2, -1014.32, 26.44)
			},

			{
				objName = 'gabz_mrpd_door_03',
				objYaw = 0.0,
				objCoords = vector3( 468.12, -1014.32, 26.44)
			}
		}
	},
	--Parking Side small door
	{
		objName = 'gabz_mrpd_room13_parkingdoor',
		objYaw = 90.0,
		objCoords  = vector3( 464.32, -996.96, 26.36),
		textCoords = vector3( 464.32, -996.96, 26.36),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	--Parking side small door
	{
		objName = 'gabz_mrpd_room13_parkingdoor',
		objYaw = 270.0,
		objCoords  = vector3( 464.08, -975.52, 26.36),
		textCoords = vector3( 464.08, -975.52, 26.36),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	
	--PArking shatter door
		{
		objName = 'gabz_mrpd_garage_door',
--		objYaw = 0.0,
		objCoords  = vector3( 452.56, -1000.6, 25.68),
		textCoords = vector3( 452.56, -1000.6, 25.68),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 10,
	},
	
	--PArking shatter door
	{
		objName = 'gabz_mrpd_garage_door',
--		objYaw = 0.0,
		objCoords  = vector3( 432.4, -1000.36, 25.68),
		textCoords = vector3( 432.4, -1000.36, 25.68),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 10,
	},
	--investigation rooms
	{
		objName = 'gabz_mrpd_door_04',
		objYaw = 270.0,
		objCoords  = vector3(482.4, -996.44, 26.36),
		textCoords = vector3(482.4, -996.44, 26.36),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	--investigation rooms
	{
		objName = 'gabz_mrpd_door_04',
		objYaw = 270.0,
		objCoords  = vector3( 482.52, -992.96, 26.36),
		textCoords = vector3( 482.52, -992.96, 26.36),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	--investigation rooms
	{
		objName = 'gabz_mrpd_door_04',
		objYaw = 270.0,
		objCoords  = vector3( 482.68, -988.24, 26.36),
		textCoords = vector3( 482.68, -988.24, 26.36),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	--investigation rooms
	{
		objName = 'gabz_mrpd_door_04',
		objYaw = 270.0,
		objCoords  = vector3( 482.52, -984.64, 26.36),
		textCoords = vector3( 482.52, -984.64, 26.36),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	--pd enterance main left door
	{
		objName = 'gabz_mrpd_door_04',
		objYaw = 0.0,
		objCoords  = vector3( 441.32, -977.8, 30.8),
		textCoords = vector3( 441.32, -977.8, 30.8),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	
		--pd enterance main right door
	{
		objName = 'gabz_mrpd_door_05',
		objYaw = 180.0,
		objCoords  = vector3( 441.24, -986.08, 30.8),
		textCoords = vector3( 441.24, -986.08, 30.8),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	
	--Reception
	{
		objName = 'gabz_mrpd_door_04',
		objYaw = 90.0,
		objCoords  = vector3( 445.56, -983.48, 30.8),
		textCoords = vector3( 445.56, -983.48, 30.8),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	


--Benny Door locks end ------------------------------------------------
--Fbi Door locks start-----------------------------------------------
	--FBI ROBBERY Extra door locked Permanet
	{
		objName = 'v_ilev_fib_doorbrn',
		objYaw = 160.0,
		objCoords  = vector3( 141.5491, -766.9653, 250.3019),
		textCoords = vector3( 141.5491, -766.9653, 250.3019),
		authorizedJobs = {'AAXFamily','offAAXFamily'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 0.1,
	},
	--FBI ROBBERY Ground floor door
	{
		objName = 'v_ilev_fib_door1',
		objYaw = 340.0,
		objCoords  = vector3( 127.8489, -760.4548, 45.90111),
		textCoords = vector3( 127.8489, -760.4548, 45.90111),
		authorizedJobs = {'AAXFamily','offAAXFamily'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 0.1,
	},
--Fbi doors locks end ------------------------------------------------
----Main Bank Doors
--Vault Door

	{
		objName = 'v_ilev_bk_vaultdoor',
		objYaw = 340.0,
		objCoords  = vector3( 253.92, 224.56, 1101.88),
		textCoords = vector3( 253.92, 224.56, 1101.88),
		authorizedJobs = {'police','offpolice'},
		locking = false,
		locked = true,
		pickable = false,
		distance = 0.1,
	},



}
----------------------------------------------------------------------------------------------------------------------------------
----Door locks Config end