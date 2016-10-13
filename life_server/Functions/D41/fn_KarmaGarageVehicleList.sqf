//::::::::::::  ::::::::::::\\
//	Filename: life_server/Functions/D41/fn_KarmaGarageVehicleList.sqf
//	Author: Distrikt41 - Cosmo
//
//	Beschreibung: Liste aller Fahrzeuge, die ab welchem Karmawert (nicht mehr) ausgeparkt werden dürfen.
//::::::::::::  ::::::::::::\\
D41_GarageList_KeinKarmaCheck = //Karma Neutrale Fahrzeuge
	[
		//Gebrauchtwagen
			"D41_Lada_Civ_01","D41_Lada_Civ_04","D41_Lada_Civ_03","D41_Lada_Civ_02",
			"D41_S1203_Civ_01","D41_S1203_Civ_Gruen","D41_S1203_Civ_Orange","D41_S1203_Civ_Rot","D41_S1203_Civ_Silber","D41_S1203_Civ_Weiss",
			"D41_Gaz24_Civ_01","D41_Gaz24_Civ_02","D41_Gaz24_Civ_03",
			"D41_Jonzie_Datsun_510_Orange","D41_Jonzie_Datsun_510_Red","D41_Jonzie_Datsun_510_Black","D41_Jonzie_Datsun_510_White","D41_Jonzie_Datsun_510_Green",
			"D41_Jonzie_Datsun_510_Blue","D41_Jonzie_Datsun_510_Light_Blue","D41_Jonzie_Datsun_510_Silver","D41_Jonzie_Datsun_510_Yellow","D41_Jonzie_Datsun_510_Pink",
			"D41_Golf4_Civ_Weiss","D41_Golf4_Civ_Gelb","D41_Golf4_Civ_Gruen",
			"D41_Jonzie_Corolla_Orange","D41_Jonzie_Corolla_Red","D41_Jonzie_Corolla_Black","D41_Jonzie_Corolla_White","D41_Jonzie_Corolla_Green","D41_Jonzie_Corolla_Blue",
			"D41_Jonzie_Corolla_Light_Blue","D41_Jonzie_Corolla_Silver","D41_Jonzie_Corolla_Yellow","D41_Jonzie_Corolla_Pink",
			"D41_C_Van_transport_white","D41_C_Van_transport_red","D41_C_Van_transport_black",
		//Oldtimer
			"D41_ADM_Ford_F100_Orange","D41_ADM_Ford_F100_Red","D41_ADM_Ford_F100_Black","D41_ADM_Ford_F100_White","D41_ADM_Ford_F100_Green","D41_ADM_Ford_F100_Blue",
			"D41_ADM_Ford_F100_Light_Blue","D41_ADM_Ford_F100_Silver","D41_ADM_Ford_F100_Yellow","D41_ADM_Ford_F100_Pink",
			"D41_Jonzie_Datsun_Z432_Orange","D41_Jonzie_Datsun_Z432_Red","D41_Jonzie_Datsun_Z432_Black","D41_Jonzie_Datsun_Z432_White",
			"D41_Jonzie_Datsun_Z432_Green","D41_Jonzie_Datsun_Z432_Blue","D41_Jonzie_Datsun_Z432_Light_Blue","D41_Jonzie_Datsun_Z432_Silver",
			"D41_Jonzie_Datsun_Z432_Yellow","D41_Jonzie_Datsun_Z432_Pink",
			"D41_Jonzie_30CSL_Orange","D41_Jonzie_30CSL_Red","D41_Jonzie_30CSL_Black","D41_Jonzie_30CSL_Green","D41_Jonzie_30CSL_Blue",
			"D41_Jonzie_30CSL_Light_Blue","D41_Jonzie_30CSL_Silver","D41_Jonzie_30CSL_Yellow","D41_Jonzie_30CSL_Pink","D41_Jonzie_30CSL_White",
			"D41_Jonzie_XB_Orange","D41_Jonzie_XB_Red","D41_Jonzie_XB_Black","D41_Jonzie_XB_White","D41_Jonzie_XB_Green","D41_Jonzie_XB_Blue",
			"D41_Jonzie_XB_Light_Blue","D41_Jonzie_XB_Silver","D41_Jonzie_XB_Yellow","D41_Jonzie_XB_Pink","D41_SIG_Hubcaps","D41_SIG_Magnums","D41_SIG_Hcode",
			"D41_ADM_1964_Impala_Orange","D41_ADM_1964_Impala_Red","D41_ADM_1964_Impala_Black","D41_ADM_1964_Impala_White","D41_ADM_1964_Impala_Green","D41_ADM_1964_Impala_Blue",
			"D41_ADM_1964_Impala_Light_Blue","D41_ADM_1964_Impala_Silver","D41_ADM_1964_Impala_Yellow","D41_ADM_1964_Impala_Pink","D41_ADM_1969_Charger_Orange",
			"D41_ADM_1969_Charger_Red","D41_ADM_1969_Charger_Black","D41_ADM_1969_Charger_White","D41_ADM_1969_Charger_Green","D41_ADM_1969_Charger_Blue",
			"D41_ADM_1969_Charger_Light_Blue","D41_ADM_1969_Charger_Silver","D41_ADM_1969_Charger_Yellow","D41_ADM_1969_Charger_Pink",
		//Zugmaschinen
			"D41_Trailer_A","D41_CargoContainer_Orange","D41_B_Truck_01_mover_F","D41_Truck_01_mover_R",
			"D41_Truck_01_mover_B","D41_Civ_Kamaz_Zugmaschine",
		//Flugzeuge
			"D41_CUP_B_MV22_USMC","D41_CUP_C_C47_CIV",
		//Fahrzeugproduktion
			"D41_ADM_GMC_Vandura_Orange","D41_ADM_GMC_Vandura_Red","D41_ADM_GMC_Vandura_Black","D41_ADM_GMC_Vandura_White","D41_ADM_GMC_Vandura_Green","D41_ADM_GMC_Vandura_Blue","D41_ADM_GMC_Vandura_Light_Blue","D41_ADM_GMC_Vandura_Silver","D41_ADM_GMC_Vandura_Yellow","D41_ADM_GMC_Vandura_Pink",
			"D41_Jonzie_STI_Orange","D41_Jonzie_STI_Red","D41_Jonzie_STI_Black","D41_Jonzie_STI_White","D41_Jonzie_STI_Green","D41_Jonzie_STI_Blue","D41_Jonzie_STI_Light_Blue","D41_Jonzie_STI_Silver","D41_Jonzie_STI_Yellow","D41_Jonzie_STI_Pink",
			"D41_Jonzie_Quattroporte_Orange","D41_Jonzie_Quattroporte_Red","D41_Jonzie_Quattroporte_Black","D41_Jonzie_Quattroporte_White","D41_Jonzie_Quattroporte_Green",
			"D41_Jonzie_Quattroporte_Blue","D41_Jonzie_Quattroporte_Light_Blue","D41_Jonzie_Quattroporte_Silver","D41_Jonzie_Quattroporte_Yellow","D41_Jonzie_Quattroporte_Pink",
			"D41_Jonzie_Mini_Cooper_R_spec_Orange","D41_Jonzie_Mini_Cooper_R_spec_Red","D41_Jonzie_Mini_Cooper_R_spec_Black","D41_Jonzie_Mini_Cooper_R_spec_White","D41_Jonzie_Mini_Cooper_R_spec_Green",
			"D41_Jonzie_Mini_Cooper_R_spec_Blue","D41_Jonzie_Mini_Cooper_R_spec_Light_Blue","D41_Jonzie_Mini_Cooper_R_spec_Silver","D41_Jonzie_Mini_Cooper_R_spec_Yellow","D41_Jonzie_Mini_Cooper_R_spec_Pink",
			"D41_Jonzie_Viper_Orange","D41_Jonzie_Viper_Red","D41_Jonzie_Viper_Black","D41_Jonzie_Viper_White","D41_Jonzie_Viper_Green","D41_Jonzie_Viper_Blue",
			"D41_Jonzie_Viper_Light_Blue","D41_Jonzie_Viper_Silver","D41_Jonzie_Viper_Yellow","D41_Jonzie_Viper_Pink",
			"D41_Jonzie_Escalade_Orange","D41_Jonzie_Escalade_Red","D41_Jonzie_Escalade_Black","D41_Jonzie_Escalade_White","D41_Jonzie_Escalade_Green","D41_Jonzie_Escalade_Blue",
			"D41_Jonzie_Escalade_Light_Blue","D41_Jonzie_Escalade_Silver","D41_Jonzie_Escalade_Yellow","D41_Jonzie_Escalade_Pink",
			"D41_Jonzie_Box_Orange","D41_Jonzie_Box_Red","D41_Jonzie_Box_Black","D41_Jonzie_Box_White","D41_Jonzie_Box_Green","D41_Jonzie_Box_Blue","D41_Jonzie_Box_Light_Blue",
			"D41_Jonzie_Box_Silver","D41_Jonzie_Box_Yellow","D41_Jonzie_Box_Pink","D41_Jonzie_Box_ares","D41_Jonzie_Box_d41",
			"D41_ADM_1969_Camaro_Orange","D41_ADM_1969_Camaro_Red","D41_ADM_1969_Camaro_Black","D41_ADM_1969_Camaro_White","D41_ADM_1969_Camaro_Green",
			"D41_ADM_1969_Camaro_Blue","D41_ADM_1969_Camaro_Light_Blue","D41_ADM_1969_Camaro_Silver","D41_ADM_1969_Camaro_Yellow","D41_ADM_1969_Camaro_Pink",
			"D41_SIG_SuperBeeY","D41_SIG_SuperBeeB","D41_SIG_SuperBeeL","D41_SIG_SuperBeeM","D41_SIG_SuperBeeG",
		//Admin
			"Jonzie_Forklift","B_Heli_Light_01_armed_F","D41_Jonzie_Western_Black","rhsusf_rg33_d","rhsusf_rg33_m2_d","rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy","rhsusf_M1083A1P2_B_d_fmtv_usarmy","D41_CUP_B_C130J_USMC","O_Heli_Attack_02_F","CUP_B_M1030","RHS_T50_vvs_blueonblue","rhsusf_m113d_usarmy_medical",
			"D41_Mi8AMT_vdv","RHS_UH1Y_UNARMED_d","RHS_AH1Z_wd_GS","RHS_Mi24V_vvs","RHS_Mi24Vt_vvs","rhs_tigr_ffv_3camo_vdv","rhs_gaz66_ammo_msv","D41_CUP_I_SUV_ION","D41_CUP_I_SUV_Armored_ION",
		//NavySeal
			"rhsusf_m113_usarmy","D41_rhsusf_m1025_w_m2","CUP_B_Jackal2_L2A1_GB_W","CUP_B_LR_Special_CZ_W","D41_CUP_RG31_M2_OD",
			"B_Boat_Transport_01_F","CUP_B_SA330_Puma_HC2_BAF","CUP_B_UH1D_GER_KSK"
	];
	
	
D41_GarageList_Plus9kPlus =
	[
		//Autos
			"D41_Offroad_Snake_TFuel_TPS","D41_rhsusf_m998_d_2dr_fulltop",
		//Trucks
			"D41_B_Truck_01_covered_grau","D41_B_Truck_01_covered_rot","D41_B_Truck_01_fuel_F","D41_B_Truck_01_fuel_grau",
		//Helikopter
			"D41_Heli_Transport_03_Blau","D41_Heli_Transport_03_Weiss","D41_Heli_Transport_03_Grau","D41_Heli_Transport_03_Pink",
			"D41_Heli_Transport_03_unarmed_F"
	];
	
	
D41_GarageList_Plus9kMinus =
	[
		//Leer
	];
	
	
D41_GarageList_Plus6kPlus =
	[
		//Autos
			"D41_C_Offroad_Rally_F","D41_rhsusf_m998_d_s_2dr",
			"D41_Jonzie_VE_Orange","D41_Jonzie_VE_Red","D41_Jonzie_VE_Black","D41_Jonzie_VE_White","D41_Jonzie_VE_Green",
			"D41_Jonzie_VE_Blue","D41_Jonzie_VE_Light_Blue","D41_Jonzie_VE_Silver","D41_Jonzie_VE_Yellow","D41_Jonzie_VE_Pink",
		//Trucks
			"D41_B_Truck_01_transport_grau","D41_B_Truck_01_transport_rot","D41_typhoon_vdv","D41_typhoon_vdv_blau","D41_typhoon_vdv_wert",
		//Helikopter
			"civ_mohawk_ion","civ_mohawk_dahoman","D41_Heli_Transport_04_fuel_Blaugrau","D41_Heli_Transport_04_fuel_grey"
	];
D41_GarageList_Plus6kMinus =
	[
		//Leer
		""
	];
	
	
D41_GarageList_Plus3kPlus =
	[
		//Autos
			"D41_Offroad_Snake","D41_Hatchback_Snake",
			"D41_Jonzie_Raptor_Orange","D41_Jonzie_Raptor_Red","D41_Jonzie_Raptor_Black","D41_Jonzie_Raptor_White","D41_Jonzie_Raptor_Green",
			"D41_Jonzie_Raptor_Blue","D41_Jonzie_Raptor_Light_Blue","D41_Jonzie_Raptor_Silver","D41_Jonzie_Raptor_Yellow","D41_Jonzie_Raptor_Pink",
		//Trucks
			"D41_O_Truck_03_transport_gruen","D41_O_Truck_03_transport_grau","D41_O_Truck_03_transport_braun","D41_O_Truck_03_transport_weiss",
			"D41_O_Truck_03_ammo_gruen","D41_O_Truck_03_ammo_grau","D41_O_Truck_03_ammo_braun","D41_O_Truck_03_ammo_weiss",
		//Boote Civ
			"D41_Trawler"
	];
D41_GarageList_Plus3kMinus =
	[
		//Rebellen
			"D41_uaz_open_MSV_01","D41_UAZ_MSV_01","D41_CUP_LR_revolution","D41_gaz66o_msv","D41_gaz66_msv",
		//Rebellen Boote
			"I_Boat_Transport_01_F","D41_SDV_01_F"
	];
	
	
D41_GarageList_Plus0Plus =
	[
		//Autos
			"D41_C_Offroad_01_red_F","D41_C_Offroad_01_white_F","D41_C_Offroad_01_blue_F","D41_C_Offroad_01_darkred_F",
			"D41_C_Offroad_01_bluecustom_F","D41_C_SUV_Rot","D41_C_SUV_Schwarz","D41_C_SUV_Grau","D41_C_SUV_Orange","D41_C_SUV_sport_Rot",
			"D41_C_SUV_sport_Schwarz","D41_C_SUV_sport_Grau","D41_C_SUV_sport_Orange","D41_BMW_X6M_Flames",
		//Trucks
		//	"D41_B_Truck_01_mover_F","D41_Truck_01_mover_R","D41_Truck_01_mover_B", //Testweise auch für alle freigeschalten!
		//Helikopter
			"D41_Heli_Light_02_unarmed_F","D41_civ_ka60_whiteblue","D41_Heli_Transport_04_Blaugrau_F","D41_Heli_Transport_04_Grey_F",
			"D41_Heli_Transport_04_covered_Blaugrau","D41_Heli_Transport_04_covered_Grey"
	];
D41_GarageList_Plus0Minus =
	[
		//Rebellen
			"D41_Reb_Offroad_01_F","D41_B_G_Offroad_01_repair_F","D41_B_G_Van_01_transport_F","D41_I_G_Van_01_transport_F",
			"D41_I_G_Van_01_fuel_F",
		//Rebellen Air
			"D41_Sab_ee_An2","D41_Sab_ru_An2"
	];
	
	
D41_GarageList_Minus3kPlus =
	[
		//Gebraucht Busse
			"D41_Ikarus_Civ_01", "D41_Ikarus_Civ_02",
		//Helikopter
			"D41_civ_md500_blueline","D41_civ_md500_shadow","D41_civ_md500_whitered","D41_civ_md500_greywatcher","D41_civ_md500_speedy",
			"D41_civ_md500_sunset","D41_civ_md500_wasp","D41_civ_md500_wave"
	];
D41_GarageList_Minus3kMinus =
	[
		//Rebellen
			"D41_Ural_Open_MSV_01","D41_Ural_MSV_01","D41_Ural_Fuel_MSV_01","D41_civ_md500_urban","D41_Heli_Transport_04_bench_F"
	];
	
	
D41_GarageList_Minus6kPlus =
	[
		//Autos
			"D41_Octavia_Civ_Weiss","D41_Octavia_Civ_Gelb","D41_Octavia_Civ_Blau","D41_Octavia_Civ_Schwarz","D41_Octavia_Civ_01",
			"C_Hatchback_01_rallye_F","D41_Hatchback_Sport_Gruen","D41_Hatchback_Sand","D41_Hatchback_Gruen","D41_Hatchback_Blau",
			"D41_Hatchback_Dunkelblau","D41_Hatchback_Gelb","D41_Hatchback_Schwarz","D41_Hatchback_Sport_Rot","D41_Hatchback_Sport_BlauMuster",
			"D41_Hatchback_Sport_WeissMuster",
			"D41_Jonzie_Galant_Orange","D41_Jonzie_Galant_Red","D41_Jonzie_Galant_Black","D41_Jonzie_Galant_White","D41_Jonzie_Galant_Blue",
			"D41_Jonzie_Galant_Green","D41_Jonzie_Galant_Light_Blue","D41_Jonzie_Galant_Silver","D41_Jonzie_Galant_Yellow","D41_Jonzie_Galant_Pink",
			"D41_CUP_LR_bo","D41_CUP_LR_bbw","D41_CUP_LR_camel",
			"D41_Jonzie_Ceed_Orange","D41_Jonzie_Ceed_Red","D41_Jonzie_Ceed_Black","D41_Jonzie_Ceed_White","D41_Jonzie_Ceed_Green","D41_Jonzie_Ceed_Blue",
			"D41_Jonzie_Ceed_Light_Blue","D41_Jonzie_Ceed_Silver","D41_Jonzie_Ceed_Yellow","D41_Jonzie_Ceed_Pink",
		//Trucks
			"D41_Jonzie_Transit_Orange","D41_Jonzie_Transit_Red","D41_Jonzie_Transit_Black","D41_Jonzie_Transit_White","D41_Jonzie_Transit_Green",
			"D41_Jonzie_Transit_Blue","D41_Jonzie_Transit_Light_Blue","D41_Jonzie_Transit_Silver","D41_Jonzie_Transit_Yellow","D41_Jonzie_Transit_Pink",
			"D41_C_Van_01_box_F","D41_C_Van_01_box_white","D41_C_Van_01_box_red","D41_C_Van_01_box_black","D41_C_Van_01_box_cool",
			"D41_Civ_Truck_02_transport_weiss","D41_Civ_Truck_02_transport_blau","D41_Civ_Truck_02_transport_orange",
			"D41_Civ_Truck_02_transport_plane_weiss","D41_Civ_Truck_02_transport_plane_blau","D41_Civ_Truck_02_transport_plane_orange",
			"D41_C_Van_01_fuel_F","D41_C_Van_01_fuel_white","D41_C_Van_01_fuel_black","D41_C_Van_01_fuel_red","D41_Civ_Truck_02_fuel2_weiss",
			"D41_Civ_Truck_02_fuel2_blau","D41_Civ_Truck_02_fuel2_orange","D41_Civ_Truck_02_fuel2_Fass","D41_Ikarus_Civ_Linien",
			"D41_Ikarus_Civ_Party",
		//Boote Civ
			"C_Rubberboat","D41_CUP_C_Fishing_Boat_Chernarus","C_Boat_Civil_01_F"
	];
D41_GarageList_Minus6kMinus =
	[
		//Rebellen
			"D41_rhsusf_m998_w_4dr","D41_rhsusf_m998_w_4dr_fulltop","D41_gaz66_r142_msv"
	];
	
	
D41_GarageList_Minus9kPlus =
	[
		//Flugzeug
			"D41_sab_ca_An2","D41_Sab_tk_An2","D41_Sab_af_An2","D41_Sab_cz_An2","D41_Sab_ana_An2","D41_Sab_yel_An2"
	];
	
D41_GarageList_Minus9kMinus =
	[
		//Rebellen
			"D41_rhsusf_m1025_w","D41_B_G_Offroad_01_armed_F","D41_CUP_B_LR_MG_CZ_W"
	];
	
D41_Garage_GangBase01 =
	[
			"D41_Base_Offroad_01","I_MRAP_03_F","D41_Offroad_armed_base01","D41_O_Truck_03_transport_F","D41_O_Truck_03_ammo_F",
			"I_Heli_Transport_02_F","D41_CUP_WaterVehicles_RHIB"
	];
	
D41_Garage_GangBase02 =
	[
			"D41_Base_Offroad_02","O_MRAP_base02","D41_Offroad_armed_base02","D41_O_Truck_03_transport_base02","D41_O_Truck_03_ammo_base02",
			"civ_mohawk_base02","D41_CUP_WaterVehicles_RHIB"
	];
	
D41_Garage_GangBase03 =
	[
			"D41_Base_Offroad_03","D41_rhsusf_m998_d_4dr","D41_tigr_gelb","D41_Truck_01_mover_S","D41_Ural_Open_MSV_Gelb",
			"D41_Ural_MSV_Plane_gelb","D41_B_Truck_01_fuel_s","D41_base03_helicopter","D41_Mi8AMT_vdv"
	];
	
D41_Garage_GangBase04 =
	[
			"D41_Base_Offroad_04","D41_rhsusf_m998_w_4dr","D41_tigr_blau","D41_Truck_01_mover_bg","D41_Ural_Open_MSV_Blau",
			"D41_Ural_MSV_Plane_blau","D41_B_Truck_01_fuel_bg","D41_base04_helicopter","D41_Heli_Transport_03_Blaugrau"
	];
	
D41_Garage_GangBase05 =
	[
			"D41_Golf4_Civ_Blau","D41_Offroad_Hero_TFuel_TPS","D41_rhsusf_m1025_d","D41_Truck_01_mover_hb","D41_B_Truck_01_fuel_hb",
			"D41_B_Truck_01_box_hb","D41_Heli_Transport_03_Hellblau"
	];
	
D41_Garage_GangBase06 =
	[
			"D41_uaz_open_IHV","D41_Offroad_01_repair_ihv","D41_rhsusf_m1025_d","D41_Jonzie_Box_IHV","D41_Civ_Truck_02_fuel2_IHV",
			"D41_Ural_MSV_IHV","D41_Truck_01_mover_ihv","D41_Mi8amt_civilian"
	];

D41_Garage_GangBase07 =
	[
			"D41_Base_Offroad_07","D41_BMW_X6M_Base07","D41_tigr_rot","D41_typhoon_vdv_Base07","D41_Ural_Fuel_Rot_01","D41_base07_helicopter",
			"civ_mohawk_base07"
	];
D41_Garage_NavySeal =
	[
			"rhsusf_m113_usarmy","D41_rhsusf_m1025_w_m2","CUP_B_Jackal2_L2A1_GB_W","CUP_B_LR_Special_CZ_W","D41_CUP_RG31_M2_OD",
			"B_Boat_Transport_01_F","CUP_B_SA330_Puma_HC2_BAF","CUP_B_UH1D_GER_KSK"
	];