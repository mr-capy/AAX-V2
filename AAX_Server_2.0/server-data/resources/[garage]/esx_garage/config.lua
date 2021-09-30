Config = {}

Config.VehicleMenu = true -- enable this if you wan't a vehicle menu.
Config.VehicleMenuButton = 344 -- change this to the key you want to open the menu with. buttons: https://docs.fivem.net/game-references/controls/
Config.RangeCheck = 25.0 -- this is the change you will be able to control the vehicle.

Config.Garages = {
    ["A"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-281.21, -888.22, 31.32)
            },
            ["vehicle"] = {
                ["position"] = vector3(-280.91, -902.52, 31.08), 
                ["heading"] = 335.09
            }
        },
        ["camera"] = {  -- camera is not needed just if you want cool effects.
            ["x"] = -287.57, 
            ["y"] = -897.66, 
            ["z"] = 34.61, 
            ["rotationX"] = -15.401574149728, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 243.40157422423 
        }
    },

    ["B"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(213.772, -809.539, 31.0)
            },
            ["vehicle"] = {
                ["position"] = vector3(228.16, -804.73, 30.55), 
                ["heading"] = 306.34
            }
        },
        ["camera"] = { 
            ["x"] = 239.01, 
            ["y"] = -793.52, 
            ["z"] = 36.55, 
            ["rotationX"] = -21.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 125.73228356242 
        }
    },


    ["C"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(1724.99, 3323.52, 41.22)
            },
            ["vehicle"] = {
                ["position"] = vector3(1732.8, 3304.99, 41.22), 
                ["heading"] = 194.0
            }
        },
        ["camera"] = { 
            ["x"] = 1727.58, 
            ["y"] = 3297.73, 
            ["z"] = 45.22, 
            ["rotationX"] = -39.496062710881, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -42.110235854983 
        }
    },

["Police Vehicle Garage"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(449.02, -999.56, 25.7)
            },
            ["vehicle"] = {
                ["position"] = vector3(445.75, -911.62, 25.7), 
                ["heading"] = 266
            }
        },
        ["camera"] = { 
           ["x"] = 1228.78, 
           ["y"] = -1100.59, 
            ["z"] = 33.00, 
            ["rotationX"] = -0.0, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -60.06 
        }
    },
["Police Helicopter Garage"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(462.46, -981.52, 43.69)
            },
            ["vehicle"] = {
                ["position"] = vector3(449.66, -981.2, 43.69), 
                ["heading"] = 88.35
            }
        },
        ["camera"] = { 
            ["x"] = -367.64, 
            ["y"] = -171.65, 
            ["z"] = 44.43, 
            ["rotationX"] = -39.496062710881, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -42.110235854983 
        }
    },
["EMS Vehicle Gargae"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(292.54, -616.42, 43.44)
            },
            ["vehicle"] = {
                ["position"] = vector3(292.19, -608.83, 43.36), 
                ["heading"] = 78.66
            }
        },
        ["camera"] = { 
            ["x"] = -2606.8, 
            ["y"] = 1680.66, 
            ["z"] = 143.0,
			
			
            ["rotationX"] = -0.0, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 43.01 
        }
    },
["D"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(109.98, 6373.98, 31.38)
            },
            ["vehicle"] = {
                ["position"] = vector3(109.35, 6387.2, 31.25), 
                ["heading"] = 47.74
            }
        },
        ["camera"] = { 
            ["x"] = -3211.67, 
            ["y"] = 838.52, 
            ["z"] = 10.93,
			
			
            ["rotationX"] = -0.0, 
            ["rotationY"] = -0.0, 
            ["rotationZ"] = -57.83 
        }
    },
--[[
    ["Police Garage"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1149.48, -852.52, 14.12)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1139.6, -855.33, 13.59), 
                ["heading"] = 93.68
            }
        },
        ["camera"] = { 
            ["x"] = -1146.71, 
            ["y"] = -866.54, 
            ["z"] = 21.91, 
            ["rotationX"] = -39.496062710881, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -42.110235854983 
        }
    }
]]--



}

Config.Labels = {   --FOr Garage
    ["menu"] = "~INPUT_CONTEXT~ Open garage %s.",
    ["vehicle"] = "~INPUT_CONTEXT~ Put back '%s' to your garage."
}

Config.Trim = function(value)
	if value then
		return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
	else
		return nil
	end
end

Config.AlignMenu = "right" -- this is where the menu is located [left, right, center, top-right, top-left etc.]

----------------------------------------------------------------------
--------------------CONFIG IMPOUND Gargae-----------------------------
----------------------------------------------------------------------

Config.Impound 			= {
	Name = "MissionRow",
	RetrieveLocation = { X = 457.600, Y = -1025.3018, Z = 28.4308 },
	StoreLocation = { X = 443.738, Y = -1020.305, Z = 28.588 }, --center of pd garage 
	SpawnLocations = {
		{ x = 449.4237, y = -1024.985, z = 28.583 , h = 6.62 },
		{ x = 446.0857, y = -1025.906, z = 28.583, h = 6.62 },
		{ x = 442.574, y = -1025.687, z = 28.711 , h = 6.62 },
		{ x = 438.982, y = -1026.320, z = 28.7788 , h = 6.62 },
		{ x = 435.4466, y = -1026.382, z = 28.8423 , h = 6.62 },
	},
	
	AdminTerminalLocations = {
		{ x = 444.111, y = -981.271, z = 30.689 }, --Reception inside pd
		{ x = 472.850, y = -1019.213, z = 28.118 } --near retriveal location
	}
}

Config.Rules = {   --------FOR IMPOUND
	maxWeeks		= 5,
	maxDays			= 6,
	maxHours		= 24,

	minFee			= 50,
	maxFee 			= 50000,

	minReasonLength	= 10,
}
--------------------------------------------------------------------------------
----------------------- SERVERS WITHOUT ESX_MIGRATE ----------------------------
---------------- This could work, it also could not work... --------------------
--------------------------------------------------------------------------------

-- Should be true if you still have an owned_vehicles table without plate column.
Config.NoPlateColumn = false
-- Only change when NoPlateColumn is true, menu's will take longer to show but otherwise you might not have any data.
-- Try increments of 250
Config.WaitTime = 250
-------------------------Impound END--------------------------------------------
-----------------------------------------------------------------------------
-------------------------REAL LIFE VEHICLE DAMAGE------------------------------
-------------------------------------------------------------------------------

-- Configuration For Real Vehicle Damage:

-- IMPORTANT: Some of these values MUST be defined as a floating point number. ie. 10.0 instead of 10

cfg = {
	deformationMultiplier = -1,					-- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch. Visual damage does not sync well to other players.
	deformationExponent = 0.4,					-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	collisionDamageExponent = 0.6,				-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.

	damageFactorEngine = 10.0,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorBody = 10.0,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorPetrolTank = 64.0,				-- Sane values are 1 to 200. Higher values means more damage to vehicle. A good starting point is 64
	engineDamageExponent = 0.6,					-- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	weaponsDamageMultiplier = 0.01,				-- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
	degradingHealthSpeedFactor = 10,			-- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will take about 2 minutes of clean driving. Higher values means faster degradation
	cascadingFailureSpeedFactor = 8.0,			-- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies. Higher values means faster failure. A good starting point is 8

	degradingFailureThreshold = 800.0,			-- Below this value, slow health degradation will set in
	cascadingFailureThreshold = 360.0,			-- Below this value, health cascading failure will set in
	engineSafeGuard = 100.0,					-- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine. At health 100 a typical car can take 3-4 bullets to the engine before catching fire.

	torqueMultiplierEnabled = true,				-- Decrease engine torque as engine gets more and more damaged

	limpMode = false,							-- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
	limpModeMultiplier = 0.15,					-- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25

	preventVehicleFlip = true,					-- If true, you can't turn over an upside down vehicle

	sundayDriver = true,						-- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard. Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
	sundayDriverAcceleratorCurve = 7.5,			-- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required to accelerate forward. Does nothing for keyboard drivers
	sundayDriverBrakeCurve = 5.0,				-- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard. Does nothing for keyboard drivers

	displayBlips = false,						-- Show blips for mechanics locations

	compatibilityMode = false,					-- prevents other scripts from modifying the fuel tank health to avoid random engine failure with BVA 2.01 (Downside is it disabled explosion prevention)

	randomTireBurstInterval = 120,				-- Number of minutes (statistically, not precisely) to drive above 22 mph before you get a tire puncture. 0=feature is disabled


	-- Class Damagefactor Multiplier
	-- The damageFactor for engine, body and Petroltank will be multiplied by this value, depending on vehicle class
	-- Use it to increase or decrease damage for each class

	classDamageMultiplier = {
		[0] = 	1.0,		--	0: Compacts
				1.0,		--	1: Sedans
				1.0,		--	2: SUVs
				1.0,		--	3: Coupes
				1.0,		--	4: Muscle
				1.0,		--	5: Sports Classics
				1.0,		--	6: Sports
				1.0,		--	7: Super
				0.25,		--	8: Motorcycles
				0.7,		--	9: Off-road
				0.25,		--	10: Industrial
				1.0,		--	11: Utility
				1.0,		--	12: Vans
				1.0,		--	13: Cycles
				0.5,		--	14: Boats
				1.0,		--	15: Helicopters
				1.0,		--	16: Planes
				1.0,		--	17: Service
				0.75,		--	18: Emergency
				0.75,		--	19: Military
				1.0,		--	20: Commercial
				1.0			--	21: Trains
	}
}



--[[

	-- Alternate configuration values provided by ImDylan93 - Vehicles can take more damage before failure, and the balance between vehicles has been tweaked.
	-- To use: comment out the settings above, and uncomment this section.

cfg = {

	deformationMultiplier = -1,					-- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch
	deformationExponent = 1.0,					-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	collisionDamageExponent = 1.0,				-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.

	damageFactorEngine = 5.1,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorBody = 5.1,						-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorPetrolTank = 61.0,				-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 64
	engineDamageExponent = 1.0,					-- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	weaponsDamageMultiplier = 0.124,			-- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
	degradingHealthSpeedFactor = 7.4,			-- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will take about 2 minutes of clean driving. Higher values means faster degradation
	cascadingFailureSpeedFactor = 1.5,			-- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies. Higher values means faster failure. A good starting point is 8

	degradingFailureThreshold = 677.0,			-- Below this value, slow health degradation will set in
	cascadingFailureThreshold = 310.0,			-- Below this value, health cascading failure will set in
	engineSafeGuard = 100.0,					-- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine. At health 100 a typical car can take 3-4 bullets to the engine before catching fire.

	torqueMultiplierEnabled = true,				-- Decrease engine torge as engine gets more and more damaged

	limpMode = false,							-- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
	limpModeMultiplier = 0.15,					-- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25

	preventVehicleFlip = true,					-- If true, you can't turn over an upside down vehicle

	sundayDriver = true,						-- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard. Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
	sundayDriverAcceleratorCurve = 7.5,			-- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required to accelerate forward. Does nothing for keyboard drivers
	sundayDriverBrakeCurve = 5.0,				-- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard. Does nothing for keyboard drivers

	displayBlips = true,						-- Show blips for mechanics locations

	classDamageMultiplier = {
		[0] = 	1.0,		--	0: Compacts
				1.0,		--	1: Sedans
				1.0,		--	2: SUVs
				0.95,		--	3: Coupes
				1.0,		--	4: Muscle
				0.95,		--	5: Sports Classics
				0.95,		--	6: Sports
				0.95,		--	7: Super
				0.27,		--	8: Motorcycles
				0.7,		--	9: Off-road
				0.25,		--	10: Industrial
				0.35,		--	11: Utility
				0.85,		--	12: Vans
				1.0,		--	13: Cycles
				0.4,		--	14: Boats
				0.7,		--	15: Helicopters
				0.7,		--	16: Planes
				0.75,		--	17: Service
				0.85,		--	18: Emergency
				0.67,		--	19: Military
				0.43,		--	20: Commercial
				1.0			--	21: Trains
	}
}

]]--





-- End of Main Configuration

-- Configure Repair system

-- id=446 for wrench icon, id=72 for spraycan icon

repairCfg = {
	mechanics = {
	--	{name="Mechanic", id=446, r=25.0, x=-337.0,  y=-135.0,  z=39.0},	-- LSC Burton
	
	},

	fixMessages = {
		"You put the oil plug back in",
		"You stopped the oil leak using chewing gum",
		"You repaired the oil tube with gaffer tape",
		"You tightened the oil pan screw and stopped the dripping",
		"You kicked the engine and it magically came back to life",
		"You removed some rust from the spark tube",
		"You yelled at your vehicle, and it somehow had an effect"
	},
	fixMessageCount = 7,

	noFixMessages = {
		"You checked the oil plug. It's still there",
		"You looked at your engine, it seemed fine",
		"You made sure that the gaffer tape was still holding the engine together",
		"You turned up the radio volume. It just drowned out the weird engine noises",
		"You added rust-preventer to the spark tube. It made no difference",
		"Never fix something that ain't broken they said. You didn't listen. At least it didn't get worse"
	},
	noFixMessageCount = 6
}

RepairEveryoneWhitelisted = true
RepairWhitelist =
{
	"steam:123456789012345",
	"steam:000000000000000",
	"ip:192.168.0.1"			-- not sure if ip whitelist works?
}

--=======================================================================================---
-------========================Config Carwash=============================================----------
Config.EnablePrice = true
Config.Price = 500

Config.Locations = {
	vector3(26.5906, -1392.0261, 29.3634),
	vector3(167.1034, -1719.4704, 29.2916),
	vector3(-74.5693, 6427.8715, 31.4400),
	vector3(-699.6325, -932.7043, 19.0139)
}
