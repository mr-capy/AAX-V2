Config = {}

Config.Locale = 'en'

---------ESX_MED

Config.Price = 1000

Config.DrawDistance = 100.0
Config.MarkerSize   = {x = 2.0, y = 2.0, z = 2.0}
Config.MarkerColor  = {r = 230, g = 22, b = 22}
Config.MarkerType   = 27

Config.Zones = {}

Config.Hosp = {
	{x = 328.585, y = -577.487, z = 43.317},
}

for i=1, #Config.Hosp, 1 do
	Config.Zones['Private Doc_' .. i] = {
		Pos   = Config.Hosp[i],
		Size  = Config.MarkerSize,
		Color = Config.MarkerColor,
		Type  = Config.MarkerType
	}
end
