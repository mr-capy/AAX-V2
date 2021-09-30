fx_version 'adamant'
games { 'rdr3', 'gta5' }

client_script  {
	'vehicle_names.lua',
}

files {
  'data/*.meta'

}

data_file 'HANDLING_FILE' 'data/handling*.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/vehicles*.meta'
data_file 'CARCOLS_FILE' 'data/carcols*.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/carvariations*.meta'
data_file 'VEHICLE_SETTINGS_FILE' 'data/vehiclesettings*.meta'




server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua',
	'server/sv_carry.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua',
	'client/job.lua',
	'client/cl_carry.lua',
	'hospital_mlo/main.lua'
}

dependencies {
	'es_extended',
	'esx_vehicleshop'
}
this_is_a_map 'yes'
data_file 'DLC_ITYP_REQUEST' 'stream/def_props.ytyp' 
data_file 'DLC_ITYP_REQUEST' 'stream/v_int_40.ytyp' 
