#include <macro.h>
/*
	File: fn_virt_shops.sqf
	Author: Tobi "Cosmo" Distrikt41

	Description:
	Config for virtual shops.

			// Jeweils folgende Reihenfolge:	Trinken, Essen, (Wasser, Apfel)
			//									Reguläre Z-Items (Benzinkannister, Kabelbinder)
			//									I-Items (Fernglas, Medkit)
			//									WAFFE, MUNITION, SPEZ. Attachments
			//									allg. Attachments (reguläre Optics)
			//									sonstige Austrüstung

*/
private["_shop"];
_shop = _this select 0;
_return = ["none",[]];

switch (_shop) do
{
	//Waffenproduktion (Keine Echtpreise sondern Waffenteile als Zahlungsmittel!) NOCH NICHT IMPLEMENTIERT!
	case "WpnProdHero": {
					if((_shop == "WpnProdHero")  && license_civ_gun && (life_D41_Karma >= 2000)) then {_return =
		["Waffenproduktion Hero",
					["D41_Schuerfgeschirr","D41_Bohrausruestung","Chemlight_green",
					"RH_g19t","RH_19Rnd_9x19_g18","RH_kimber_nw","RH_7Rnd_45cal_m1911",
					"SMG_01_F","30Rnd_45ACP_Mag_SMG_01",
					"D41_sgun_M1014","D41_5Rnd_12G_Gummi",
					"CUP_arifle_Mk16_CQC_SFG","CUP_arifle_Mk16_SV","CUP_20Rnd_556x45_Stanag","CUP_1Rnd_SmokeGreen_M203",
					"CUP_srifle_LeeEnfield","CUP_10x_303_M",
					"CUP_optic_RCO","RH_eotech553mag_tan","bipod_02_F_tan"]
					]};
				};
	case "WpnProdRebel": {
					if((_shop == "WpnProdRebel")   && (life_D41_Karma < -2000) && (license_civ_rebel)) then {_return =
		["Waffenproduktion Rebel",
					["D41_Bolzenschneider","D41_Sprengladung","Rangefinder",
					"RH_uspm","RH_16Rnd_40cal_usp","RH_X300",
					"hlc_smg_mp5k_PDW","hlc_30Rnd_9x19_GD_MP5",
					"CUP_arifle_L85A2","CUP_arifle_L86A2",
					"rhs_weap_ak74m_camo_npz","rhs_30Rnd_545x39_AK_green",
					"CUP_srifle_M40A3","CUP_5Rnd_762x51_M24",
					"hlc_rifle_SAMR","rhs_mag_30Rnd_556x45_Mk318_Stanag",
					"RH_ar10","RH_Delft","RH_20Rnd_762x51_AR10",
					"hlc_rifle_RPK12","hlc_45Rnd_545x39_t_rpk",
					"CUP_optic_CompM2_Black","CUP_optic_RCO","RH_eotech553mag_tan","bipod_02_F_hex"]
					]};
				};

	//Lebensmittelrohstoffe
	case "wongs": {_return = ["Wong's Food Cart",["D41_SchildkroetenSuppe","D41_Schildkroete"]]};
	case "coffee": {_return = ["Eggi's Spezialitätenladen",["D41_Kaffee","D41_Donuts","D41_Krabben","D41_Diamantschmuck"]]};
	case "fishmarket": {_return = ["Altis Fisch Markt",["D41_Salema","D41_Ornate","D41_Mackrele","D41_Mullet","D41_Tunfisch","D41_Katzenhai"]]};
	case "KnastDealer": {_return = ["Knastfras",["D41_WaterBottle","D41_Hasenfleisch","D41_Handy","D41_Spitzhacke"]]};
	case "Biergarten": {_return = ["Biergarten",["D41_WaterBottle","D41_Kaffee","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_BeefJerky","D41_Donuts"]]};

	//Edle Rohstoffe u. Weiterverarbeitung
	case "diamond": {_return = ["Diamantenhandel",["D41_Diamanten"]]};
	case "Kerosin": {_return = ["Flughafen Tanklager",["D41_Kerosin"]]};
	case "Stahl": {_return = ["Stahlhandel",["D41_Stahl"]]};
	case "heroin": {_return = ["Drogen Dealer",["D41_Cannabis","D41_Kokain","D41_Heroin"]]};
	case "meth": {_return = ["Meth Dealer",["D41_Cannabis","D41_Kokain","D41_Heroin","D41_Meth"]]};
	case "gold": {_return = ["Goldhandel",["D41_GoldBarren"]]};

	//Grosshandel
	case "metall": {_return = ["Metallgroßhandel",["D41_Eisen","D41_Kupfer","D41_Aluminium"]]};
	case "oil": {_return = ["Ölgroßhandel",["D41_Oel","D41_BenzinKanister","D41_Meth2","D41_Plastik"]]};
	case "mineralien": {_return = ["Mineralien und Gesteine Großhandel",["D41_Kohle","D41_Kalkstein","D41_Salz"]]};
	case "baumaterial": {_return = ["Baumaterial Großhandel",["D41_Glas","D41_Ton","D41_Zement"]]};

	//Exporthandel
	case "export_metall": {_return = ["Metallgroßhandel",["D41_Eisen","D41_Kupfer","D41_Aluminium"]]};
	case "export_oil": {_return = ["Ölgroßhandel",["D41_Oel","D41_BenzinKanister"]]};
	case "export_mineralien": {_return = ["Mineralien und Gesteine Großhandel",["D41_Kohle","D41_Kalkstein","D41_Salz"]]};
	case "export_baumaterial": {_return = ["Baumaterial Großhandel",["D41_Glas","D41_Ton","D41_Zement"]]};

	//Allgemeine Shops
	case "tankstelle": {if((_shop == "tankstelle") && !license_civ_rebel && (life_D41_Karma >= -8000)) then {_return =
		["Tankstelle",
					["D41_WaterBottle","D41_EnergyDrink","D41_Hasenfleisch","D41_BeefJerky",
					"D41_BenzinKanister","ItemMap","ItemCompass","D41_Handy","D41_ToolKit","D41_MediKit","Chemlight_green"]
					]};
				};
	case "market": {if((_shop == "market") && !license_civ_rebel && (life_D41_Karma >= -8000)) then {_return =
		["Supermarkt",
					["D41_WaterBottle","D41_Apfelsaft","D41_Pfirsichsaft","D41_EnergyDrink","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_Hasenfleisch","D41_Apfel","D41_Pfirsich","D41_Dosenfisch","D41_BeefJerky",
					"D41_BenzinKanister","D41_LagerkisteGross","D41_LagerkisteLagerhaus",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","Chemlight_green","NVGoggles"]
					]};
				};
	case "med": {if((_shop == "med") && playerSide == independent) then {_return =
		["Medic Item Shop",
					["D41_WaterBottle","D41_Kaffee","D41_Apfelsaft","D41_Pfirsichsaft","D41_EnergyDrink","D41_Donuts","D41_Hasenfleisch","D41_BeefJerky","D41_Cannabis",
					"D41_BenzinKanister","D41_Dietrich","ItemGPS","Binocular","D41_ToolKit","D41_MediKit","D41_Defi","D41_Leitkegel","Chemlight_yellow","D41_Handy","NVGoggles","pmc_earpiece"]
					]};
				};
	case "Werkzeuge": {_return = ["Werkzeugladen",["D41_Gartenschere","D41_Schaufel","D41_Schuerfgeschirr","D41_Bohrausruestung","D41_Spitzhacke","D41_Bolzenschneider"]]
				};
	case "gangadac": {
					if((_shop == "gangadac") && playerSide == independent) then {_return =
		["ADAC Market",
					["D41_WaterBottle","D41_Apfelsaft","D41_Pfirsichsaft","D41_Kaffee","D41_EnergyDrink","D41_Hasenfleisch","D41_BeefJerky","D41_Donuts",
					"D41_BenzinKanister","D41_Dietrich","ItemGPS","Binocular","D41_ToolKit","D41_Strahler","D41_Leitkegel","Chemlight_yellow","D41_MediKit","D41_Handy","NVGoggles","pmc_earpiece"]
					]};
				};
	case "gunstore": {
					if((_shop == "gunstore")  && license_civ_gun && (life_D41_Karma >= -2000)) then {_return =
		["Waffenhandel",
					["RH_mak","RH_8Rnd_9x18_Mak",
					"RH_tt33","RH_8Rnd_762_tt33",
					"hgun_Rook40_F","16Rnd_9x21_Mag",
					"RH_ttracker","RH_6Rnd_45ACP_Mag",
					"D41_Tazer_X3_Yellow","D41_3Rnd_Tazer",
					"RH_sw659","RH_14Rnd_9x19_sw",
					"RH_m1911","RH_7Rnd_45cal_m1911",
					"RH_gsh18","RH_18Rnd_9x19_gsh",
					"hgun_PDW2000_F","SMG_02_F","30Rnd_9x21_Mag",
					"optic_Aco_smg","optic_ACO_grn_smg","optic_Holosight_smg","acc_flashlight","D41_Dietrich","pmc_earpiece"]
					]};
				};

	case "gang1": {
					if((_shop == "gang1")) then {_return =
		["Waffenkiste",
					["RH_mak","RH_8Rnd_9x18_Mak",
					"RH_tt33","RH_8Rnd_762_tt33",
					"RH_ttracker","RH_6Rnd_45ACP_Mag",
					"RH_sw659","RH_14Rnd_9x19_sw",
					"hgun_PDW2000_F","SMG_02_F","30Rnd_9x21_Mag",
					"CUP_arifle_CZ805_A1","30Rnd_556x45_Stanag_Tracer_Red",
					"optic_Aco_smg","optic_ACO_grn_smg","optic_Holosight_smg","optic_MRCO","CUP_optic_CompM2_Black","acc_flashlight"]
					]};
				};

	case "gang2": {
					if((_shop == "gang2")) then {_return =
		["Waffenkiste",
					["hgun_Rook40_F","16Rnd_9x21_Mag",
					"RH_m1911","RH_7Rnd_45cal_m1911",
					"RH_gsh18","RH_18Rnd_9x19_gsh",
					"hlc_smg_MP5N","hlc_30Rnd_9x19_B_MP5",
					"arifle_Mk20_F","30Rnd_556x45_Stanag_Tracer_Red",
					"optic_Aco_smg","optic_ACO_grn_smg","optic_Holosight_smg","optic_MRCO","CUP_optic_CompM2_Black","acc_flashlight"]
					]};
				};

	case "gang3": {
					if((_shop == "gang3")) then {_return =
		["Waffenkiste",
					["RH_mak","RH_8Rnd_9x18_Mak",
					"hgun_Rook40_F","16Rnd_9x21_Mag",
					"RH_m1911","RH_7Rnd_45cal_m1911",
					"RH_gsh18","RH_18Rnd_9x19_gsh",
					"hlc_smg_MP5N","hlc_30Rnd_9x19_B_MP5",
					"RH_m4a1_ris_wdl","30Rnd_556x45_Stanag_Tracer_Red",
					"optic_Aco_smg","optic_ACO_grn_smg","optic_Holosight_smg","optic_MRCO","CUP_optic_CompM2_Woodland2","acc_flashlight"]
					]};
				};

	//POLIZEI
	case "copitems": {
					if((_shop == "copitems") && (playerSide == west) && !license_cop_gangfirma) then {_return =
		["Polizei Ausrüstung",
					["D41_Kaffee","D41_EnergyDrink","D41_Donuts",
					"D41_BombeWegMachtKit","D41_Nagelband","D41_Mauer","D41_Strahler","D41_Schranke","D41_Blitzer","D41_Dietrich",
					"D41_BenzinKanister","ItemGPS","ItemMap","ItemCompass","ItemWatch","Rangefinder","D41_ToolKit","D41_MediKit","D41_Handy_cop","Chemlight_blue","D41_Gartenschere","pmc_earpiece"]
					]};
				};

	case "cop":	{
					if((_shop == "cop") && ((call life_coplevel) == 1) && !license_cop_gangfirma) then {_return =
		["Rekruten Shop",
					["D41_Tazer_X3_Black","D41_6Rnd_Tazer",
					"RH_p226","RH_15Rnd_9x19_SIG",
					"D41_M590A1","D41_5Rnd_12G_Gummi",
					"hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5",
					"optic_ACO_grn","optic_Aco","acc_flashlight","acc_pointer_IR"]
					]};

					if((_shop == "cop") && ((call life_coplevel) == 2) && !license_cop_gangfirma) then {_return =
		["Officer Shop",
					["D41_Tazer_X3_Black","D41_6Rnd_Tazer",
					"RH_p226","RH_15Rnd_9x19_SIG",
					"D41_M590A1","D41_5Rnd_12G_Gummi","D41_5Rnd_12G_74Slug",
					"hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5",
					"optic_ACO_grn","optic_Aco","optic_MRCO","acc_flashlight","acc_pointer_IR"]
					]};

					if((_shop == "cop") && ((call life_coplevel) == 3) && !license_cop_gangfirma) then {_return =
		["Patrol Officer Shop",
					["D41_Tazer_X3_Black","D41_6Rnd_Tazer",
					"RH_p226","RH_15Rnd_9x19_SIG",
					"D41_M590A1","D41_5Rnd_12G_Gummi","D41_5Rnd_12G_74Slug",
					"hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5",
					"RH_M4sbr_b","30Rnd_556x45_Stanag",
					"optic_ACO_grn","optic_Aco","optic_Hamr","optic_MRCO","acc_flashlight","acc_pointer_IR"]
					]};

					if((_shop == "cop") && ((call life_coplevel) == 4) && !license_cop_gangfirma) then {_return =
		["Master Patrol Officer Shop",
					["D41_Tazer_X3_Black","D41_6Rnd_Tazer",
					"RH_p226","RH_15Rnd_9x19_SIG",
					"D41_M590A1","D41_5Rnd_12G_Gummi","D41_5Rnd_12G_74Slug",
					"hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5",
					"RH_M4sbr_b",
					"D41_Colt_M4","RH_M4A1_ris_M203s","UGL_FlareWhite_F","1Rnd_SmokeBlue_Grenade_shell","30Rnd_556x45_Stanag",
					"FHQ_optic_AC11704","RH_eotech553mag","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","acc_flashlight","acc_pointer_IR","rhsusf_acc_anpeq15","pmc_earpiece"]
					]};

					if((_shop == "cop") && ((call life_coplevel) == 5) && !license_cop_gangfirma) then {_return =
		["Sergeant Shop",
					["D41_Tazer_X3_Black","D41_6Rnd_Tazer",
					"RH_p226","RH_15Rnd_9x19_SIG",
					"D41_M590A1","D41_5Rnd_12G_Gummi","D41_5Rnd_12G_74Slug",
					"hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5",
					"RH_M4sbr_b","D41_Colt_M4","RH_M4A1_ris_M203s","UGL_FlareWhite_F","1Rnd_SmokeBlue_Grenade_shell",
					"D41_Colt_M4CQBR","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Green",
					"hlc_rifle_G36V","hlc_30rnd_556x45_SPR_G36","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_compm4s","RH_SFM952V",
					"bipod_02_F_blk",
					"RH_m3lr","RH_eotech553mag","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","acc_flashlight","acc_pointer_IR",
					"rhs_mag_mk84","rhs_mag_m69","pmc_earpiece","D41_Handy"]
					]};

					if((_shop == "cop") && ((call life_coplevel) == 6) && !license_cop_gangfirma) then {_return =
		["Lieutenant Shop",
					["D41_Tazer_X3_Black","D41_6Rnd_Tazer",
					"RH_p226","RH_15Rnd_9x19_SIG",
					"D41_M590A1","D41_5Rnd_12G_Gummi","D41_5Rnd_12G_74Slug",
					"hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5",
					"RH_M4sbr_b","D41_Colt_M4","RH_M4A1_ris_M203s","UGL_FlareWhite_F","1Rnd_SmokeBlue_Grenade_shell",
					"D41_Colt_M4CQBR","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Green",
					"hlc_rifle_G36V","hlc_30rnd_556x45_SPR_G36","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_compm4s","RH_SFM952V",
					"arifle_MX_blk_F","30Rnd_65x39_caseless_mag_Tracer",
					"rhsusf_acc_ACOG3","bipod_02_F_blk",
					"RH_m3lr","RH_eotech553mag","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","acc_flashlight","acc_pointer_IR","rhsusf_acc_anpeq15",
					"rhs_mag_mk84","rhs_mag_m69","pmc_earpiece","D41_Handy"]
					]};

					if((_shop == "cop") && ((call life_coplevel) == 7) && !license_cop_gangfirma) then {_return =
		["Captain Shop",
					["D41_Tazer_X3_Black","D41_6Rnd_Tazer",
					"RH_p226","RH_15Rnd_9x19_SIG",
					"D41_M590A1","D41_5Rnd_12G_Gummi","D41_5Rnd_12G_74Slug",
					"hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5",
					"RH_M4sbr_b","D41_Colt_M4","RH_M4A1_ris_M203s","UGL_FlareWhite_F","1Rnd_SmokeBlue_Grenade_shell",
					"D41_Colt_M4CQBR","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Green",
					"hlc_rifle_G36V","hlc_30rnd_556x45_SPR_G36","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_compm4s","RH_SFM952V",
					"arifle_MX_blk_F","30Rnd_65x39_caseless_mag_Tracer",
					"rhsusf_acc_ACOG3","bipod_02_F_blk",
					"RH_m3lr","RH_eotech553mag","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","optic_SOS","optic_DMS","optic_LRPS","acc_flashlight","acc_pointer_IR","rhsusf_acc_anpeq15",
					"rhs_mag_mk84","rhs_mag_m69","pmc_earpiece","D41_Handy"]
					]};

					if((_shop == "cop") && ((call life_coplevel) == 8) && !license_cop_gangfirma) then {_return =
		["Inspector Shop",
					["D41_Tazer_X3_Black","D41_6Rnd_Tazer",
					"RH_p226","RH_15Rnd_9x19_SIG",
					"D41_M590A1","D41_5Rnd_12G_Gummi","D41_5Rnd_12G_74Slug",
					"hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5",
					"RH_M4sbr_b","D41_Colt_M4","RH_M4A1_ris_M203s","UGL_FlareWhite_F","1Rnd_SmokeBlue_Grenade_shell",
					"D41_Colt_M4CQBR","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Green",
					"hlc_rifle_G36V","hlc_30rnd_556x45_SPR_G36","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_compm4s","RH_SFM952V",
					"arifle_MX_blk_F","30Rnd_65x39_caseless_mag_Tracer",
					"rhs_weap_m14ebrri","rhsusf_20Rnd_762x51_m993_Mag","FHQ_optic_LeupoldERT","bipod_02_F_blk",
					"RH_m3lr","RH_eotech553mag","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","optic_SOS","optic_DMS","optic_LRPS","acc_flashlight","acc_pointer_IR","rhsusf_acc_anpeq15",
					"rhs_mag_mk84","rhs_mag_m69","pmc_earpiece","D41_Handy"]
					]};

					if((_shop == "cop") && ((call life_coplevel) == 9) && !license_cop_gangfirma) then {_return =
		["Detective Shop",
					["D41_Tazer_X3_Black","D41_6Rnd_Tazer",
					"RH_p226","RH_15Rnd_9x19_SIG",
					"D41_M590A1","D41_5Rnd_12G_Gummi","D41_5Rnd_12G_74Slug",
					"hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5",
					"RH_M4sbr_b","D41_Colt_M4","RH_M4A1_ris_M203s","UGL_FlareWhite_F","1Rnd_SmokeBlue_Grenade_shell",
					"D41_Colt_M4CQBR","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Green",
					"hlc_rifle_G36V","hlc_30rnd_556x45_SPR_G36","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_compm4s","RH_SFM952V",
					"arifle_MX_blk_F","30Rnd_65x39_caseless_mag_Tracer",
					"rhs_weap_m14ebrri","rhsusf_20Rnd_762x51_m993_Mag","FHQ_optic_LeupoldERT",
					"hlc_rifle_psg1","hlc_20rnd_762x51_b_G3","bipod_02_F_blk",
					"RH_m3lr","RH_eotech553mag","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","optic_SOS","optic_DMS","optic_LRPS","acc_flashlight","acc_pointer_IR","rhsusf_acc_anpeq15",
					"rhs_mag_mk84","rhs_mag_m69","pmc_earpiece","D41_Handy"]
					]};

					if((_shop == "cop") && ((call life_coplevel) >= 10) && !license_cop_gangfirma) then {_return =
		["Chief Shop",
					["D41_Tazer_X3_Black","D41_6Rnd_Tazer",
					"RH_p226","RH_15Rnd_9x19_SIG",
					"D41_M590A1","D41_5Rnd_12G_Gummi","D41_5Rnd_12G_74Slug",
					"hlc_smg_mp5a2","hlc_30Rnd_9x19_B_MP5",
					"RH_M4sbr_b","D41_Colt_M4","RH_M4A1_ris_M203s","UGL_FlareWhite_F","1Rnd_SmokeBlue_Grenade_shell",
					"D41_Colt_M4CQBR","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Green",
					"hlc_rifle_G36V","hlc_30rnd_556x45_SPR_G36","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_compm4s","RH_SFM952V",
					"arifle_MX_blk_F","30Rnd_65x39_caseless_mag_Tracer",
					"rhs_weap_m14ebrri","rhsusf_20Rnd_762x51_m993_Mag","FHQ_optic_LeupoldERT",
					"hlc_rifle_psg1","hlc_20rnd_762x51_b_G3",
					"launch_B_Titan_F","Titan_AA",
					"bipod_02_F_blk","RH_m3lr","RH_eotech553mag","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","optic_SOS","optic_DMS","optic_LRPS","acc_flashlight","acc_pointer_IR","rhsusf_acc_anpeq15",
					"rhs_mag_mk84","rhs_mag_m69","pmc_earpiece","D41_Handy"]
					]};
				};

	case "copswat": {if((_shop == "copswat") && (playerSide == west) && license_cop_swat) then {_return =
		["SWAT Ausrüstung",
					["RH_g18","RH_33Rnd_9x19_g18","RH_gemtech9","RH_X300",
					"D41_sgun_M1014","D41_5Rnd_12G_Gummi",
					"hlc_smg_mp510","muzzle_snds_acp","hlc_30Rnd_10mm_B_MP5",
					"hlc_smg_mp5sd6","hlc_30Rnd_9x19_SD_MP5","hlc_30Rnd_9x19_GD_MP5",
					"D41_Colt_M4CQBR","hlc_muzzle_556NATO_KAC","RH_Hk416","RH_hk416_wdl","RH_fa556",
					"30Rnd_556x45_Stanag","hlc_30rnd_556x45_SOST","30Rnd_556x45_Stanag_Tracer_Green","RH_30Rnd_556x45_M855A1","RH_compm4s","RH_SFM952V",
					"hlc_rifle_G36CMLIC","hlc_rifle_G36MLIC","RH_Saker762","arifle_MXM_Black_F","muzzle_snds_H","30Rnd_65x39_caseless_mag",
					/*"D41_SMG_03C_black","D41_50Rnd_570x28","ELife_BallisticShield_Police",*/
					"arifle_SDAR_F","20Rnd_556x45_UW_mag",
					"bipod_02_F_blk","bipod_03_F_oli","bipod_02_F_tan","bipod_01_F_snd",
					"rhsusf_acc_ACOG3","CUP_optic_CompM2_Black","RH_eotech553mag","FHQ_optic_ACOG","optic_Holosight","FHQ_optic_AC11704","FHQ_optic_AC12136",
					"RH_m3lr","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","acc_flashlight","acc_pointer_IR","rhsusf_acc_anpeq15","RH_peq2",
					"rhs_mag_mk84","SmokeShellBlue","Rangefinder","Laserdesignator_03","CUP_optic_AN_PVS_10",
					"pmc_earpiece"]
					]};
				};

	case "copswat_special": {if((_shop == "copswat_special") && (playerSide == west) && license_cop_swat) then {_return =
		["SWAT Spezialausrüstung",
					["RH_m110","RH_20Rnd_762x51_Mk316LR","RH_m110sd_t",
					"srifle_DMR_03_F","RH_fa762","20Rnd_762x51_Mag",
					"srifle_LRR_F","7Rnd_408_Mag",
					"CUP_lmg_minimipara","CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249",
					"hlc_lmg_m60","hlc_100Rnd_762x51_Barrier_M60E4",
					"bipod_02_F_blk","bipod_03_F_oli","bipod_02_F_tan","bipod_01_F_snd",
					"optic_SOS","optic_DMS","optic_LRPS","optic_AMS","optic_AMS_khk","optic_KHS_blk","optic_KHS_tan","acc_flashlight","acc_pointer_IR","rhsusf_acc_anpeq15","RH_peq2",
					"rhs_weap_M320","1Rnd_SmokeBlue_Grenade_shell","UGL_FlareWhite_F",
					"rhs_weap_rpg7","rhs_acc_pgo7v","rhs_rpg7_OG7V_mag","rhs_rpg7_PG7VL_mag",
					"launch_RPG32_F","RPG32_F","RPG32_HE_F",
					"launch_B_Titan_F","Titan_AA",
					"rhs_weap_tr8","mgsr_headbag"]
					]};
				};

	//REBELLEN
	case "rebel": {if((_shop == "rebel") && license_civ_rebel && (life_D41_Karma <= -2000)) then {_return =
		["Rebellenmarkt",
					["D41_WaterBottle","D41_EnergyDrink","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_Hasenfleisch","D41_BeefJerky",
					"D41_BenzinKanister","D41_Dietrich","D41_Bolzenschneider","D41_Sprengladung","D41_Kabelbinder","D41_LagerkisteGross","D41_LagerkisteLagerhaus",
					"D41_Gartenschere","D41_Schaufel","D41_Schuerfgeschirr","D41_Bohrausruestung","D41_Spitzhacke",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","Chemlight_red","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","mgsr_headbag"]
					]};
				};

	case "rebelnorth": {
					if((_shop == "rebelnorth") && license_civ_rebel && (life_D41_Karma <= -2000) && (life_D41_Karma >= -2999)) then {_return =
		["Rebell Pistol",
					["RH_g17","RH_17Rnd_9x19_g17",
					"RH_kimber","RH_kimber_nw","RH_7Rnd_45cal_m1911",
					"RH_tec9","RH_32Rnd_9x19_tec","RH_X2","RH_M6X","RH_X300",
					"optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","acc_flashlight","acc_pointer_IR","RH_peq2"]
					]};

					if((_shop == "rebelnorth") && license_civ_rebel && (life_D41_Karma <= -3000) && (life_D41_Karma >= -4999)) then {_return =
		["Rebell MPs",
					["RH_g17","RH_17Rnd_9x19_g17",
					"RH_kimber","RH_kimber_nw","RH_7Rnd_45cal_m1911",
					"RH_tec9","RH_32Rnd_9x19_tec","RH_X2","RH_M6X","RH_X300",
					"SMG_01_F","30Rnd_45ACP_Mag_SMG_01",
					"hlc_smg_MP5N","hlc_30Rnd_9x19_B_MP5",
					"RH_sbr9_wdl","RH_32Rnd_9mm_M822",
					"optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","acc_flashlight","acc_pointer_IR","RH_peq2","FHQ_optic_AC11704","FHQ_optic_AC12136"]
					]};
				};

	case "rebelsouth": {
					if((_shop == "rebelsouth") && license_civ_rebel && (life_D41_Karma <= -2000) && (life_D41_Karma >= -2999)) then {_return =
		["Rebell Pistol",
					["RH_vp70","RH_18Rnd_9x19_VP",
					"CUP_hgun_Phantom","CUP_18Rnd_9x19_Phantom","CUP_acc_CZ_M3X",
					"hgun_Pistol_heavy_02_F","6Rnd_45ACP_Cylinder",
					"RH_X2","RH_M6X","RH_X300",
					"optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","acc_flashlight","acc_pointer_IR","RH_peq2"]
					]};

					if((_shop == "rebelsouth") && license_civ_rebel && (life_D41_Karma <= -3000) && (life_D41_Karma >= -4999)) then {_return =
		["Rebell MPs",
					["RH_vp70","RH_18Rnd_9x19_VP",
					"CUP_hgun_Phantom","CUP_18Rnd_9x19_Phantom","CUP_acc_CZ_M3X",
					"hgun_Pistol_heavy_02_F","6Rnd_45ACP_Cylinder",
					"RH_X2","RH_M6X","RH_X300",
					"RH_vz61","RH_20Rnd_32cal_vz61",
					"RH_muzi","RH_30Rnd_9x19_UZI",
					"CUP_smg_bizon","CUP_64Rnd_White_Tracer_9x19_Bizon_M",
					"CUP_srifle_LeeEnfield","CUP_10x_303_M",
					"optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr","acc_flashlight","acc_pointer_IR","RH_peq2","FHQ_optic_AC11704","FHQ_optic_AC12136"]
					]};
				};

	//HERO-TRADER
	case "heroitems": {
					if((_shop == "heroitems") && (life_D41_Karma >= 2000) && !license_civ_rebel) then {_return =
		["Herotrader Markt",
					["D41_WaterBottle","D41_EnergyDrink","D41_Hasenfleisch","D41_BeefJerky",
					"D41_BenzinKanister","D41_Kabelbinder","D41_LagerkisteGross","D41_LagerkisteLagerhaus",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","Chemlight_green","pmc_earpiece","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR"]
					]};
				};

	case "herowaffen": {
					if((_shop == "herowaffen") && (life_D41_Karma >= 2000) && (life_D41_Karma <= 4999) && !license_civ_rebel) then {_return =
		["Hero Pistol",
					["D41_Tazer_X3_Yellow","D41_3Rnd_Tazer"]
					]};

					if((_shop == "herowaffen") && (life_D41_Karma >= 5000) && (life_D41_Karma <= 9999) && !license_civ_rebel) then {_return =
		["Hero MP",
					["D41_Tazer_X3_Yellow","D41_3Rnd_Tazer",
					"hlc_smg_mp5a3","hlc_30Rnd_9x19_B_MP5",
					"optic_Aco_smg","optic_ACO_grn_smg","optic_Holosight_smg","acc_flashlight",
					"D41_sgun_M1014","D41_5Rnd_12G_Gummi",
					"SmokeShellGreen"]
					]};

					if((_shop == "herowaffen") && (life_D41_Karma >= 10000) && !license_civ_rebel) then {_return =
		["Hero heavy",
					["D41_Tazer_X3_Yellow","D41_3Rnd_Tazer",
					"hlc_smg_mp5a3","hlc_30Rnd_9x19_B_MP5",
					"optic_Aco_smg","optic_ACO_grn_smg","optic_Holosight_smg","acc_flashlight",
					"D41_sgun_M1014","D41_5Rnd_12G_Gummi",
					"CUP_arifle_Mk16_CQC_EGLM","CUP_arifle_Mk16_CQC","CUP_arifle_Mk16_CQC_FG","CUP_arifle_Mk16_STD",
					"CUP_20Rnd_556x45_Stanag","CUP_1Rnd_SmokeGreen_M203",
					"CUP_optic_RCO_desert","CUP_optic_CompM2_Desert","RH_eotech553mag_tan","CUP_optic_ELCAN_SpecterDR","FHQ_optic_ACOG_tan","FHQ_optic_AC11704_tan","optic_Arco","CUP_optic_Eotech533","optic_Hamr",
					"SmokeShellGreen"]
					]};
				};

	//GANGS
	case "gangdmw": {
					if((_shop == "gangdmw") && license_civ_gangdmw) then {_return =
		["DMW Ausrüstung",
					["D41_WaterBottle","D41_Hasenfleisch","D41_BeefJerky","D41_EnergyDrink",
					"D41_Dietrich","D41_Bolzenschneider","D41_Sprengladung","D41_Kabelbinder","D41_BenzinKanister",
					"D41_Gartenschere","D41_Schaufel","D41_Schuerfgeschirr","D41_Bohrausruestung","D41_Spitzhacke",
					"ItemGPS","Rangefinder","D41_ToolKit","D41_MediKit","D41_Handy","Chemlight_green","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","pmc_earpiece"]
					]};
				};

	case "gangdmw_waffen": {
					if((_shop == "gangdmw_waffen") && license_civ_gangdmw) then {_return =
		["DMW Waffen",
					["RH_fnp45t","RH_15Rnd_45cal_fnp","RH_osprey","optic_MRD",
					"RH_g18","RH_33Rnd_9x19_g18","RH_gemtech9","RH_X300",
					"rhs_mag_rdg2_white","rhs_mag_rdg2_black",
					"hlc_rifle_G36KV","CUP_optic_CompM2_Black","hlc_30rnd_556x45_EPR_G36",
					"RH_hk416s_wdl","RH_hk416_wdl","RH_Hk416s","RH_fa556",
					"30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Red","RH_SFM952V_tan","RH_qdss_nt4","RH_compm4s","RH_SFM952V",
					"hlc_rifle_honeybadger","29rnd_300BLK_STANAG_T",
					"rhsusf_acc_ACOG3","FHQ_optic_ACOG","optic_Holosight","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_m3lr","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr",
					"optic_SOS","optic_DMS","RH_eotech553mag","RH_eotech553mag_tan","acc_flashlight","acc_pointer_IR","RH_peq2","bipod_02_F_blk","bipod_03_F_oli","bipod_02_F_tan","bipod_01_F_snd"]
					]};
				};
	//NavySeals			
	case "navyseal": {
					if((_shop == "navyseal") && license_civ_navyseal) then {_return =
		["Soldaten Ausrüstung",
					["D41_WaterBottle","D41_Hasenfleisch","D41_BeefJerky","D41_EnergyDrink","D41_Cannabis","D41_Kokain",
					"D41_Dietrich","D41_Bolzenschneider","D41_Sprengladung","D41_Kabelbinder","D41_BenzinKanister",
					"D41_Gartenschere","ItemGPS","Rangefinder","D41_ToolKit","D41_MediKit","D41_Handy","Chemlight_green","rhs_mag_rdg2_white","rhs_mag_rdg2_black",
					"NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","pmc_earpiece","AJ_Mask_Tan"]
					]};
				};

	case "navyseal_waffen": {
					if((_shop == "navyseal_waffen") && license_civ_navyseal) then {_return =
		["Soldaten Waffen",
					["RH_fnp45t","RH_15Rnd_45cal_fnp","RH_osprey","optic_MRD",
					"RH_g18","RH_33Rnd_9x19_g18","RH_gemtech9","RH_X300",
					"hlc_rifle_G36KV","hlc_30rnd_556x45_EPR_G36",
					"RH_hk416s_wdl","RH_hk416_wdl","RH_Hk416s","RH_fa556","RH_qdss_nt4",
					"30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Red",
					"hlc_rifle_honeybadger","muzzle_HBADGER","29rnd_300BLK_STANAG_T","29rnd_300BLK_STANAG",
					"RH_m16a6_wdl","RH_qdss_nt4_wdl","RH_30Rnd_68x43_Match",
					"CUP_lmg_minimipara","CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249",
					"rhsusf_acc_ACOG3","FHQ_optic_ACOG","optic_Holosight","CUP_optic_CompM2_Black","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_m3lr","RH_compm4s","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr",
					"optic_SOS","optic_DMS","optic_AMS","optic_AMS_khk","optic_KHS_blk","optic_KHS_tan","RH_eotech553mag","RH_eotech553mag_tan","RH_SFM952V","RH_SFM952V_tan","RH_peq15b_top","acc_pointer_IR","RH_peq2","bipod_02_F_blk","bipod_03_F_oli","bipod_02_F_tan","bipod_01_F_snd",
					"launch_RPG32_F","RPG32_F","RPG32_HE_F",
					"launch_B_Titan_F","Titan_AA",
					"rhs_weap_tr8","mgsr_headbag"]
					]};
				};

	//Mietbasen
	case "base_01": {
					if((_shop == "base_01") && license_civ_base01) then {_return =
		["Base 1 Markt",
					["D41_WaterBottle","D41_EnergyDrink","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_Hasenfleisch","D41_BeefJerky",
					"D41_BenzinKanister","D41_Dietrich","D41_Bolzenschneider","D41_Sprengladung","D41_Kabelbinder","Chemlight_red",
					"D41_Gartenschere","D41_Schaufel","D41_Schuerfgeschirr","D41_Bohrausruestung","D41_Spitzhacke",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","pmc_earpiece"]
					]};
				};

	case "base_01_waffen": {
					if((_shop == "base_01_waffen") && license_civ_base01) then {_return =
		["Base 1 Waffen",
					["RH_uspm","RH_16Rnd_40cal_usp",
					"hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag","RH_X2","RH_M6X","RH_X300",
					"RH_sbr9_wdl","RH_32Rnd_9mm_M822",
					"hlc_rifle_bcmjack","rhs_weap_m4a1_blockII_grip2","30Rnd_556x45_Stanag_Tracer_Red",
					"bipod_02_F_hex","bipod_01_F_mtp","bipod_01_F_snd","bipod_02_F_tan",
					"rhsusf_acc_ACOG3","RH_eotech553mag","FHQ_optic_ACOG","optic_Holosight","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_m3lr","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr",
					"acc_flashlight","acc_pointer_IR","RH_peq2"]
					]};
				};

	case "base_02": {
					if((_shop == "base_02") && license_civ_base02) then {_return =
		["Base 2 Markt",
					["D41_WaterBottle","D41_EnergyDrink","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_Hasenfleisch","D41_BeefJerky",
					"D41_BenzinKanister","D41_Dietrich","D41_Bolzenschneider","D41_Sprengladung","D41_Kabelbinder","Chemlight_red",
					"D41_Gartenschere","D41_Schaufel","D41_Schuerfgeschirr","D41_Bohrausruestung","D41_Spitzhacke",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","pmc_earpiece"]
					]};
				};

	case "base_02_waffen": {
					if((_shop == "base_02_waffen") && license_civ_base02) then {_return =
		["Base 2 Waffen",
					["RH_uspm","RH_16Rnd_40cal_usp",
					"hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag","RH_X2","RH_M6X","RH_X300",
					"RH_sbr9_wdl","RH_32Rnd_9mm_M822",
					"hlc_rifle_ak12","hlc_30Rnd_545x39_t_ak",
					"arifle_Katiba_F","30Rnd_65x39_caseless_green_mag_Tracer",
					"bipod_02_F_hex","bipod_01_F_mtp","bipod_01_F_snd","bipod_02_F_tan",
					"rhsusf_acc_ACOG3","RH_eotech553mag","FHQ_optic_ACOG","optic_Holosight","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_m3lr","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr",
					"acc_flashlight","acc_pointer_IR","RH_peq2"]
					]};
				};
	case "base_03": {
					if((_shop == "base_03") && license_civ_base03) then {_return =
		["Base 3 Markt",
					["D41_WaterBottle","D41_EnergyDrink","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_Hasenfleisch","D41_BeefJerky",
					"D41_BenzinKanister","D41_Dietrich","D41_Bolzenschneider","D41_Kabelbinder","Chemlight_green",
					"D41_Gartenschere","D41_Schaufel","D41_Schuerfgeschirr","D41_Bohrausruestung","D41_Spitzhacke",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","pmc_earpiece"]
					]};
				};

	case "base_03_waffen": {
					if((_shop == "base_03_waffen") && license_civ_base03) then {_return =
		["Base 3 Waffen",
					["RH_tec9","RH_32Rnd_9x19_tec","RH_X2","RH_M6X","RH_X300",
					"hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",
					"SMG_01_F","30Rnd_45ACP_Mag_SMG_01_Tracer_Green",
					"hlc_rifle_aek971","hlc_30Rnd_545x39_t_ak",
					"rhs_acc_1p63","hlc_optic_kobra","rhs_acc_pkas","HLC_Optic_1p29",
					"hlc_rifle_augsr_t","hlc_30Rnd_556x45_T_AUG",
					"bipod_02_F_hex","bipod_01_F_mtp","bipod_01_F_snd","bipod_02_F_tan",
					"rhsusf_acc_ACOG3","RH_eotech553mag","FHQ_optic_ACOG","optic_Holosight","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_m3lr","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr",
					"acc_flashlight","acc_pointer_IR","RH_peq2"]
					]};
				};


	case "base_04": {
					if((_shop == "base_04") && license_civ_base04) then {_return =
		["Base 4 Markt",
					["D41_WaterBottle","D41_EnergyDrink","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_Hasenfleisch","D41_BeefJerky",
					"D41_BenzinKanister","D41_Dietrich","D41_Bolzenschneider","D41_Kabelbinder","Chemlight_green",
					"D41_Gartenschere","D41_Schaufel","D41_Schuerfgeschirr","D41_Bohrausruestung","D41_Spitzhacke",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","pmc_earpiece"]
					]};
				};

	case "base_04_waffen": {
					if((_shop == "base_04_waffen") && license_civ_base04) then {_return =
		["Base 4 Waffen",
					["RH_kimber_nw","RH_7Rnd_45cal_m1911",
					"RH_p226","RH_15Rnd_9x19_SIG","RH_X2","RH_M6X","RH_X300",
					"SMG_01_F","30Rnd_45ACP_Mag_SMG_01_Tracer_Green",
					"CUP_arifle_G36C_camo","30Rnd_556x45_Stanag_Tracer_Green",
					"rhs_weap_m4a1_blockII_grip2_KAC","30Rnd_556x45_Stanag_Tracer_Red",
					"bipod_02_F_blk","bipod_02_F_hex","bipod_01_F_mtp","bipod_01_F_snd","bipod_02_F_tan",
					"rhsusf_acc_ACOG3","RH_eotech553mag","RH_eotech553mag_tan","FHQ_optic_ACOG","optic_Holosight","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_m3lr","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr",
					"acc_flashlight","RH_SFM952V","RH_SFM952V_tan","acc_pointer_IR","RH_peq2"]
					]};
				};

	case "base_05": {
					if((_shop == "base_05") && license_civ_base05) then {_return =
		["Base 5 Markt",
					["D41_WaterBottle","D41_EnergyDrink","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_Hasenfleisch","D41_BeefJerky",
					"D41_BenzinKanister","D41_Dietrich","D41_Kabelbinder","Chemlight_green",
					"D41_Gartenschere","D41_Schaufel","D41_Schuerfgeschirr","D41_Bohrausruestung","D41_Spitzhacke",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","pmc_earpiece"]
					]};
				};

	case "base_05_waffen": {
					if((_shop == "base_05_waffen") && license_civ_base05) then {_return =
		["Base 5 Waffen",
					["D41_Tazer_X3_Yellow","D41_3Rnd_Tazer",
					"D41_sgun_M1014","D41_5Rnd_12G_Gummi",
					"hlc_smg_mp5a3","hlc_30Rnd_9x19_B_MP5",
					"CUP_arifle_Mk16_CQC_EGLM","CUP_20Rnd_556x45_Stanag","CUP_1Rnd_SmokeGreen_M203","SmokeShellGreen",
					"rhsusf_acc_ACOG3","RH_eotech553mag","FHQ_optic_ACOG","optic_Holosight","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_m3lr","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr",
					"acc_flashlight","acc_pointer_IR","RH_peq2"]
					]};
				};

	//IHV GANG
	case "base_06": {
					if((_shop == "base_06") && license_civ_base06) then {_return =
		["IHV Markt",
					["D41_WaterBottle","D41_EnergyDrink","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_Hasenfleisch","D41_BeefJerky",
					"D41_BenzinKanister","D41_Dietrich","D41_Kabelbinder","Chemlight_green",
					"D41_Gartenschere","D41_Schaufel","D41_Schuerfgeschirr","D41_Bohrausruestung","D41_Spitzhacke",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","pmc_earpiece"]
					]};
				};

	case "base_06_waffen": {
					if((_shop == "base_06_waffen") && license_civ_base06) then {_return =
		["IHV Waffen",
					["D41_Tazer_X3_Yellow","D41_3Rnd_Tazer",
					"D41_sgun_M1014","D41_5Rnd_12G_Gummi",
					"hlc_smg_mp5a3","hlc_30Rnd_9x19_B_MP5",
					"CUP_arifle_Mk16_CQC_EGLM","CUP_20Rnd_556x45_Stanag","CUP_1Rnd_SmokeGreen_M203","SmokeShellGreen",
					"rhsusf_acc_ACOG3","RH_eotech553mag","FHQ_optic_ACOG","optic_Holosight","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_m3lr","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr",
					"acc_flashlight","acc_pointer_IR","RH_peq2"]
					]};
				};

	//Gangbase 07 NEUTRAL
	case "base_07": {
					if((_shop == "base_07") && license_civ_base07) then {_return =
		["Base 7 Markt",
					["D41_WaterBottle","D41_EnergyDrink","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_Hasenfleisch","D41_BeefJerky",
					"D41_BenzinKanister","D41_Dietrich","D41_Bolzenschneider","D41_Kabelbinder","Chemlight_green",
					"D41_Gartenschere","D41_Schaufel","D41_Schuerfgeschirr","D41_Bohrausruestung","D41_Spitzhacke",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","pmc_earpiece"]
					]};
				};
	case "base_07_waffen": {
					if((_shop == "base_07_waffen") && license_civ_base07) then {_return =
		["Base 7 Waffen",
					["RH_tec9","RH_32Rnd_9x19_tec","RH_X2","RH_M6X","RH_X300",
					"hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",
					"SMG_01_F","30Rnd_45ACP_Mag_SMG_01_Tracer_Green",
					"RH_m4a6_des","RH_30Rnd_68x43_FMJ",
					"CUP_arifle_XM8_Railed","30Rnd_556x45_Stanag",
					"bipod_02_F_hex","bipod_01_F_mtp","bipod_01_F_snd","bipod_02_F_tan",
					"rhsusf_acc_ACOG3","RH_eotech553mag","FHQ_optic_ACOG","optic_Holosight","FHQ_optic_AC11704","FHQ_optic_AC12136","RH_m3lr","optic_ACO_grn","optic_Aco","optic_MRCO","optic_Arco","optic_Hamr",
					"acc_flashlight","acc_pointer_IR","RH_peq2"]
					]};
				};

	//Bürgermeister
	case "mayor": {
					if((_shop == "mayor") && license_civ_mayor) then {_return =
		["Bürgermeister Ausrüstung",
					["D41_WaterBottle","D41_EnergyDrink","D41_Apfelschnaps","D41_Pfirsichschnaps","D41_Hasenfleisch","D41_BeefJerky","Chemlight_green",
					"Binocular","ItemMap","ItemCompass","ItemWatch","ItemGPS","D41_Handy","D41_ToolKit","D41_MediKit","NVGoggles","NVGoggles_INDEP","NVGoggles_OPFOR","pmc_earpiece"]
					]};
				};

	case "mayor_waffen": {
					if((_shop == "mayor_waffen") && license_civ_mayor) then {_return =
		["Bürgermeister Verteidigung",
					["D41_Tazer_X3_Yellow","D41_3Rnd_Tazer",
					"RH_Deaglem","RH_Deagles","RH_7Rnd_50_AE","RH_X300","RH_Deflash",
					"RH_bull","RH_bullb","RH_6Rnd_454_Mag","SmokeShellOrange"]
					]};
				};

	//MASTERLISTEN Waffen
	case "leichtepistolen": {
					if((_shop == "leichtepistolen") && ((call life_adminlevel) > 1)) then {_return =
		["light Pistolen",
					["RH_m9","RH_m9c","RH_15Rnd_9x19_M9",
					"RH_cz75","RH_16Rnd_9x19_CZ",
					"CUP_hgun_Compact","CUP_10Rnd_9x19_Compact",
					"CUP_hgun_Duty","16Rnd_9x21_Mag",
					"RH_fn57","RH_fn57_t","RH_fn57_g","RH_20Rnd_57x28_FN",
					"RH_g17","RH_17Rnd_9x19_g17",
					"RH_g18","RH_g19","RH_g19t","RH_19Rnd_9x19_g18","RH_33Rnd_9x19_g18",
					"RH_gsh18","RH_18Rnd_9x19_gsh",
					"RH_mak","RH_8Rnd_9x18_Mak",
					"CUP_hgun_PB6P9","CUP_8Rnd_9x18_Makarov_M",
					"hgun_P07_F","hgun_Rook40_F","16Rnd_9x21_Mag",
					"D41_mk2","D41_10Rnd_22LR_mk2",
					"RH_p226","RH_p226s","RH_15Rnd_9x19_SIG",
					"RH_sw659","RH_14Rnd_9x19_sw",
					"RH_tt33","RH_8Rnd_762_tt33",
					"RH_vp70","RH_18Rnd_9x19_VP"]
					]};
				};

	case "mittlerepistolen": {
					if((_shop == "mittlerepistolen") && ((call life_adminlevel) > 1)) then {_return =
		["med Pistolen",
					["CUP_hgun_Phantom","CUP_18Rnd_9x19_Phantom",
					"hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",
                    "hgun_ACPC2_F","9Rnd_45ACP_Mag",
					"RH_fnp45","RH_fnp45t","RH_15Rnd_45cal_fnp",
					"RH_kimber","RH_kimber_nw","RH_m1911","RH_7Rnd_45cal_m1911",
					"RH_ttracker","RH_ttracker_g","RH_6Rnd_45ACP_Mag",
					"RH_usp","RH_12Rnd_45cal_usp",
                    "RH_uspm","RH_16Rnd_40cal_usp",
					"hgun_Pistol_heavy_02_F","6Rnd_45ACP_Cylinder"]
					]};
				};

	case "schwerepistolen": {
					if((_shop == "schwerepistolen") && ((call life_adminlevel) > 1)) then {_return =
		["Heavy Pistolen",
					["RH_python","RH_6Rnd_357_Mag",
                    "RH_deagle","RH_Deagleg","RH_Deaglem","RH_Deagles","RH_7Rnd_50_AE",
					"RH_mp412","RH_6Rnd_357_Mag",
					"RH_bull","RH_bullb","RH_6Rnd_454_Mag",
					"RH_mateba","RH_6Rnd_44_Mag"]
					]};
				};

	case "pistolenattachments": {
					if((_shop == "pistolenattachments") && ((call life_adminlevel) > 1)) then {_return =
		["Pistol Attachments",
					["CUP_acc_CZ_M3X",
                    "optic_MRD",
                    "optic_Yorris",
                    "RH_docter",
                    "RH_M6X",
                    "RH_X2",
                    "RH_X300",
                    "RH_Deflash",
					"RH_pmIR",
                    "muzzle_snds_acp",
                    "RH_m9qd",
                    "RH_gemtech9",
                    "muzzle_snds_L",
                    "RH_demz",
                    "RH_sfn57",
                    "RH_gemtech45",
                    "RH_osprey",
                    "RH_pmsd",
                    "RH_suppr9",
                    "RH_aacusp",
                    "RH_fhusp",
                    "RH_matchsd"]
					]};
				};

	case "leichtemps": {
					if((_shop == "leichtemps") && ((call life_adminlevel) > 1)) then {_return =
		["light MPs",
					["RH_vz61","RH_20Rnd_32cal_vz61",
					"RH_muzi","RH_30Rnd_9x19_UZI",
					"RH_tec9","RH_32Rnd_9x19_tec"]
					]};
				};

	case "mittleremps": {
					if((_shop == "mittleremps") && ((call life_adminlevel) > 1)) then {_return =
		["med MPs",
					["hlc_smg_mp5k_PDW",
					"hlc_30Rnd_9x19_GD_MP5",
					"hgun_PDW2000_F",
					"SMG_02_F",
					"30Rnd_9x21_Mag",
					"hlc_smg_mp5a2",
					"hlc_smg_mp5a3",
					"hlc_smg_mp5a4",
					"hlc_smg_MP5N",
					"hlc_30Rnd_9x19_B_MP5"]
					]};
				};

	case "schweremps": {
					if((_shop == "schweremps") && ((call life_adminlevel) > 1)) then {_return =
		["heavy MPs",
					["SMG_01_F",
					"30Rnd_45ACP_Mag_SMG_01",
					"hlc_smg_mp510",
					"hlc_30Rnd_10mm_B_MP5",
					"hlc_30Rnd_10mm_JHP_MP5",
					"hlc_smg_mp5sd5",
					"hlc_smg_mp5sd6",
					"hlc_30Rnd_9x19_SD_MP5",
					"hlc_smg_9mmar",
					"CUP_30Rnd_9x19_MP5",
					"hlc_rifle_hk53",
					"hlc_30rnd_556x45_b_HK33",
					"CUP_smg_bizon",
					"CUP_64Rnd_9x19_Bizon_M",
					"CUP_64Rnd_White_Tracer_9x19_Bizon_M"]
					]};
				};

	case "mpattachments": {
					if((_shop == "mpattachments") && ((call life_adminlevel) > 1)) then {_return =
		["MP Attachments",
					["muzzle_snds_L",
					"muzzle_snds_acp",
					"RH_tecsd",
					"hlc_muzzle_Agendasix10mm",
					"hlc_muzzle_Agendasix",
					"hlc_muzzle_Tundra",
					"RH_muzisd"]
					]};
				};

	case "sturmleicht": {
					if((_shop == "sturmleicht") && ((call life_adminlevel) > 1)) then {_return =
		["light assault",
					["rhs_weap_ak74m_2mag",
					"rhs_weap_ak74m_2mag_camo",
					"rhs_weap_ak74m",
					"rhs_weap_ak74m_folded",
					"rhs_weap_ak74m_camo",
					"rhs_weap_ak74m_desert",
					"rhs_acc_pso1m2",
					"rhs_acc_1p29",
					"rhs_acc_pkas",
					"rhs_30Rnd_545x39_AK",
					"rhs_30Rnd_545x39_AK_green",
					"hlc_rifle_ak12",
					"hlc_rifle_ak74",
					"hlc_rifle_ak74_dirty",
					"hlc_rifle_aks74",
					"hlc_rifle_aks74u",
					"hlc_rifle_aek971",
					"hlc_rifle_aku12",
					"hlc_rifle_ak12GL",
					"rhs_weap_ak105",
					"rhs_weap_ak105_npz",
					"hlc_30Rnd_545x39_S_AK",
					"hlc_30Rnd_545x39_B_AK",
					"hlc_30Rnd_545x39_EP_ak",
					"hlc_30Rnd_545x39_t_ak",
					"arifle_Mk20_plain_F",
					"arifle_Mk20_F",
					"arifle_Mk20C_plain_F",
					"D41_Colt_M4",
					"D41_Colt_M4CQBR",
					"arifle_Mk20C_F",
					"arifle_TRG20_F",
					"arifle_TRG21_F",
					"arifle_SDAR_F",
					"20Rnd_556x45_UW_mag"]
					]};
				};

	case "sturmmittel": {
					if((_shop == "sturmmittel") && ((call life_adminlevel) > 1)) then {_return =
		["med assault",
					["rhs_weap_m16a4",
					"rhs_weap_m16a4_carryhandle",
					"rhs_weap_m16a4_grip",
					"RH_m16a4_des",
					"RH_m16a4_tg",
					"RH_m16a4_wdl",
					"rhs_weap_m4",
					"rhs_weap_m4_carryhandle",
					"rhs_weap_m4_carryhandle_pmag",
					"rhs_weap_m4_grip",
					"rhs_weap_m4_grip2",
					"RH_m4_des",
					"RH_m4_tg",
					"RH_m4_wdl",
					"RH_M4m",
					"RH_M4m_b",
					"RH_M4m_g",
					"RH_M4_moe_b",
					"RH_M4_moe_g",
					"RH_M4_moe",
					"RH_M4_ris_m",
					"RH_m4_ris_m_des",
					"RH_m4_ris_m_tg",
					"RH_m4_ris_m_wdl",
					"RH_m4a1_ris_des",
					"RH_m4a1_ris_tg",
					"rhs_weap_m4a1",
					"rhs_weap_m4a1_grip",
					"rhs_weap_m4a1_grip2",
					"rhs_weap_m4a1_m203s",
					"RH_M4A6",
					"RH_m4a6_des",
					"RH_m4a6_tg",
					"RH_m4a6_wdl",
					"hlc_rifle_RU5562",
					"hlc_rifle_RU556",
					"hlc_rifle_bcmjack",
					"hlc_rifle_Colt727",
					"RH_M16A2",
					"RH_M16A3",
					"RH_M16A4",
					"RH_M16A4_m",
					"RH_m4",
					"RH_M4_ris",
					"RH_M4A1_ris",
					"RH_M4sbr_b",
					"RH_M4sbr_g",
					"RH_M4sbr",
					"RH_Hk416",
					"RH_hk416_wdl",
					"RH_Hk416s",
					"RH_hk416s_wdl",
					"RH_fa556",
					"RH_30Rnd_556x45_M855A1",
					"CUP_arifle_CZ805_A1",
					"CUP_arifle_CZ805_A2",
					"CUP_arifle_G36A",
					"CUP_arifle_G36A_camo",
					"CUP_arifle_G36C",
					"CUP_arifle_G36C_camo",
					"CUP_arifle_G36K",
					"CUP_arifle_G36K_camo",
					"CUP_arifle_L85A2",
					"CUP_arifle_L86A2",
					"CUP_arifle_Mk16_CQC",
					"CUP_arifle_Mk16_CQC_FG",
					"CUP_arifle_Mk16_CQC_SFG",
					"CUP_arifle_Mk16_CQC_EGLM",
					"CUP_arifle_Mk16_STD",
					"CUP_arifle_Mk16_STD_FG",
					"CUP_arifle_Mk16_SV",
					"CUP_20Rnd_556x45_Stanag",
					"30Rnd_556x45_Stanag",
					"30Rnd_556x45_Stanag_Tracer_Red",
					"30Rnd_556x45_Stanag_Tracer_Green",
					"hlc_rifle_G36A1",
					"hlc_rifle_G36KA1",
					"HLC_Optic_G36dualoptic35x2d",
					"hlc_rifle_G36CV",
					"hlc_rifle_G36CTac",
					"hlc_rifle_G36C",
					"hlc_rifle_G36KV",
					"hlc_rifle_g36KTac",
					"hlc_rifle_G36V",
					"hlc_rifle_G36TAC",
					"hlc_30rnd_556x45_EPR_G36",
					"RH_M27IAR",
					"RH_M27IAR_des",
					"RH_M27IAR_tg",
					"RH_M27IAR_wdl",
					"RH_60Rnd_556x45_M855A1",
					"arifle_Katiba_F",
					"arifle_Katiba_C_F",
					"30Rnd_65x39_caseless_green",
					"30Rnd_65x39_caseless_green_mag_Tracer",
					"arifle_MX_F",
					"arifle_MX_blk_F",
					"arifle_MX_Black_F",
					"arifle_MXC_F",
					"arifle_MXC_Black_F",
					"arifle_MXM_F",
					"arifle_MXM_Black_F",
					"hlc_rifle_G36MLIC",
					"hlc_rifle_G36CMLIC",
					"30Rnd_65x39_caseless_mag",
					"30Rnd_65x39_caseless_mag_Tracer"]
					]};
				};
	case "sturmschwer": {
					if((_shop == "sturmschwer") && ((call life_adminlevel) > 1)) then {_return =
		["heavy assault",
					["CUP_arifle_CZ805_B",
					"CUP_20Rnd_762x51_CZ805B",
					"CUP_20Rnd_TE1_White_Tracer_762x51_CZ805B",
					"CUP_arifle_Mk17_CQC",
					"CUP_arifle_Mk17_CQC_FG",
					"CUP_arifle_Mk17_STD",
					"CUP_arifle_Mk17_STD_FG",
					"CUP_arifle_Mk20",
					"CUP_muzzle_mfsup_SCAR_H",
					"CUP_muzzle_snds_SCAR_H",
					"CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR",
					"CUP_20Rnd_762x51_B_SCAR",
					"hlc_rifle_honeybadger",
					"muzzle_HBADGER",
					"hlc_rifle_vendimus",
					"hlc_rifle_Bushmaster300",
					"29rnd_300BLK_STANAG",
					"29rnd_300BLK_STANAG_T",
					"29rnd_300BLK_STANAG_S",
					"RH_ar10",
					"RH_Delft",
					"RH_20Rnd_762x51_AR10",
					"hlc_rifle_falosw",
					"hlc_rifle_L1A1SLR",
					"hlc_rifle_STG58F",
					"hlc_rifle_c1A1",
					"hlc_rifle_FAL5061",
					"hlc_rifle_FAL5061Rail",
					"hlc_rifle_SLR",
					"hlc_rifle_SLRchopmod",
					"hlc_rifle_LAR",
					"hlc_20rnd_762x51_b_fal",
					"hlc_20Rnd_762x51_T_fal",
					"hlc_20rnd_762x51_s_fal",
					"hlc_rifle_hk51",
					"hlc_rifle_g3sg1",
					"hlc_rifle_g3a3",
					"hlc_rifle_g3a3ris",
					"hlc_rifle_g3ka4",
					"hlc_20rnd_762x51_b_G3",
					"hlc_20rnd_762x51_T_G3",
					"hlc_20rnd_762x51_S_G3",
					"hlc_rifle_ak47",
					"hlc_rifle_akm",
					"hlc_30Rnd_762x39_b_ak",
					"hlc_30Rnd_762x39_t_ak",
					"hlc_30rnd_762x39_s_ak",
					"srifle_EBR_F",
					"20Rnd_762x51_Mag",
					"srifle_DMR_01_F",
					"10Rnd_762x54_Mag",
					"hlc_rifle_M14",
					"hlc_rifle_m14sopmod",
					"hlc_rifle_M14_Bipod",
					"hlc_rifle_M14_Rail",
					"hlc_20Rnd_762x51_B_M14",
					"hlc_20Rnd_762x51_T_M14",
					"hlc_20Rnd_762x51_S_M14",
					"rhs_weap_ak103",
					"rhs_weap_ak103_1",
					"rhs_weap_akm",
					"rhs_weap_akms",
					"rhs_30Rnd_762x39mm",
					"CUP_arifle_AKS_Gold",
					"CUP_30Rnd_762x39_AK47_M",
					"CUP_arifle_Sa58RIS1",
					"CUP_arifle_Sa58RIS2",
					"CUP_arifle_Sa58P",
					"CUP_30Rnd_Sa58_M_TracerR",
					"CUP_30Rnd_Sa58_M"]
					]};
				};

	case "sniperleicht": {
					if((_shop == "sniperleicht") && ((call life_adminlevel) > 1)) then {_return =
		["light Sniper",
					["hlc_rifle_SAMR",
					"hlc_rifle_samr2",
					"hlc_30rnd_556x45_S",
					"hlc_30rnd_556x45_SPR",
					"hlc_30rnd_556x45_SOST",
					"hlc_30rnd_556x45_EPR",
					"RH_Mk12mod1",
					"RH_SAMR",
					"hlc_rifle_M1903A1",
					"hlc_5rnd_3006_1903",
					"CUP_srifle_LeeEnfield",
					"CUP_10x_303_M"]
					]};
				};

	case "snipermittel": {
					if((_shop == "snipermittel") && ((call life_adminlevel) > 1)) then {_return =
		["med Sniper",
					["CUP_srifle_CZ750",
					"CUP_10Rnd_762x51_CZ750_Tracer",
					"CUP_srifle_LeeEnfield",
					"CUP_10x_303_M",
					"CUP_srifle_VSSVintorez",
					"CUP_10Rnd_9x39_SP5_VSS_M",
					"CUP_optic_PSO_1",
					"CUP_optic_PSO_3",
					"hlc_rifle_psg1",
					"hlc_rifle_m14dmr",
					"hlc_rifle_M21",
					"hlc_20Rnd_762x51_B_M14",
					"hlc_20Rnd_762x51_T_M14",
					"hlc_20Rnd_762x51_S_M14",
					"rhs_weap_m14ebrri",
					"rhs_weap_svdp",
					"rhs_weap_svdp_wd",
					"rhs_weap_svds",
					"rhs_weap_svdp_wd_npz",
					"rhs_weap_svdp_npz",
					"rhs_weap_svds_npz",
					"rhs_10Rnd_762x54mmR_7N1",
					"CUP_srifle_SVD_des",
					"CUP_srifle_SVD",
					"CUP_SVD_camo_d",
					"CUP_SVD_camo_g",
					"CUP_SVD_camo_d_half",
					"CUP_SVD_camo_g_half",
					"CUP_10Rnd_762x54_SVD_M",
					"hlc_rifle_M1903A1_unertl"]
					]};
				};

	case "sniperschwer": {
					if((_shop == "sniperschwer") && ((call life_adminlevel) > 1)) then {_return =
		["heavy Sniper",
					["hlc_rifle_awmagnum_BL",
					"hlc_rifle_awMagnum_BL_ghillie",
					"hlc_5rnd_300WM_FMJ_AWM",
					"CUP_srifle_CZ550",
					"CUP_5x_22_LR_17_HMR_M",
					"CUP_srifle_M110",
					"CUP_20Rnd_762x51_B_M110",
					"CUP_20Rnd_TE1_White_Tracer_762x51_M110",
					"CUP_muzzle_snds_M110",
					"CUP_srifle_M24_ghillie",
					"CUP_srifle_M24_des",
					"CUP_srifle_M24_wdl",
					"CUP_srifle_M40A3",
					"CUP_5Rnd_762x51_M24",
					"rhs_weap_XM2010",
					"rhs_weap_XM2010_wd",
					"rhs_weap_XM2010_d",
					"rhs_weap_XM2010_sa",
					"rhsusf_acc_LEUPOLDMK4_2",
					"rhsusf_5Rnd_300winmag_xm2010",
					"srifle_GM6_F",
					"srifle_GM6_camo_F",
					"5Rnd_127x108_Mag",
					"srifle_LRR_F",
					"srifle_LRR_camo_F",
					"7Rnd_408_Mag"]
					]};
				};

	case "mgleicht": {
					if((_shop == "mgleicht") && ((call life_adminlevel) > 1)) then {_return =
		["light MGs",
					["CUP_lmg_m249_SQuantoon",
					"CUP_100Rnd_TE4_Red_Tracer_556x45_M249",
					"CUP_lmg_minimipara",
					"CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249",
					"hlc_rifle_RPK12",
					"hlc_45Rnd_545x39_t_rpk",
					"CUP_arifle_MG36",
					"CUP_arifle_MG36_camo",
					"CUP_100Rnd_556x45_BetaCMag",
					"CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag"]
					]};
				};

	case "mgmittel": {
					if((_shop == "mgmittel") && ((call life_adminlevel) > 1)) then {_return =
		["med MGs",
					["LMG_Mk200_F",
					"200Rnd_65x39_cased_Box",
					"200Rnd_65x39_cased_Box_Tracer",
					"arifle_MX_SW_F",
					"arifle_MX_SW_Black_F",
					"100Rnd_65x39_caseless_mag",
					"100Rnd_65x39_caseless_mag_Tracer"]
					]};
				};

	case "mgschwer": {
					if((_shop == "mgschwer") && ((call life_adminlevel) > 1)) then {_return =
		["heavy MGs",
					["hlc_rifle_rpk",
					"hlc_75Rnd_762x39_m_rpk",
					"hlc_45Rnd_762x39_m_rpk",
					"hlc_45Rnd_762x39_t_rpk",
					"hlc_lmg_m60",
					"hlc_lmg_M60E4",
					"hlc_100Rnd_762x51_B_M60E4",
					"hlc_100Rnd_762x51_M_M60E4",
					"hlc_100Rnd_762x51_T_M60E4",
					"LMG_Zafir_F",
					"150Rnd_762x51_Box",
                    "150Rnd_762x51_Box_Tracer"]
					]};
				};

	case "rpg": {
					if((_shop == "rpg") && ((call life_adminlevel) > 1)) then {_return =
		["rocket launcher",
					["rhs_weap_rpg7",
					"rhs_acc_pgo7v",
					"rhs_rpg7_OG7V_mag",
					"rhs_rpg7_PG7VL_mag",
					"CUP_launch_RPG18",
					"CUP_RPG18_M",
					"launch_RPG32_F",
					"RPG32_F",
					"RPG32_HE_F",
					"launch_B_Titan_F",
					"Titan_AA",
					"rhs_weap_rshg2",
					"rhs_rshg2_mag"]
					]};
				};

	case "schrot": {
					if((_shop == "schrot") && ((call life_adminlevel) > 1)) then {_return =
		["shotgun",
					["hlc_rifle_saiga12k",
					"hlc_10rnd_12g_slug_S12",
					"hlc_10rnd_12g_buck_S12",
					"D41_sgun_M1014",
					"D41_5Rnd_12G_Gummi",
					"D41_M590A1",
					"D41_5Rnd_12G_74Slug",
					"rhs_weap_M590_5RD",
					"rhsusf_5Rnd_Slug",
					"rhsusf_5Rnd_00Buck"]
					]};
				};
	case "sonstiges": {
					if((_shop == "sonstiges") && ((call life_adminlevel) > 1)) then {_return =
		["miscellaneous",
					["D41_Tazer_X3_Yellow",
					"D41_Tazer_X3_Black",
					"D41_3Rnd_Tazer",
					"D41_Tazer_X3_Yellow",
					"D41_3Rnd_Tazer",
					"D41_5Rnd_12G_Gummi",
					"rhs_mag_M781_Practice",
					"rhs_mag_m69",
					"rhs_mag_an_m14_th3",
					"CUP_1Rnd_SmokeGreen_M203",
					"SmokeShellGreen",
					"rhs_weap_M320",
					"UGL_FlareCIR_F",
					"1Rnd_SmokeBlue_Grenade_shell",
					"UGL_FlareWhite_F",
					"rhs_weap_tr8",
					"DemoCharge_Remote_Mag",
					"SatchelCharge_Remote_Mag"]
					]};
				};

	case "schalli": {
					if((_shop == "schalli") && ((call life_adminlevel) > 1)) then {_return =
		["Silencer",
					["hlc_muzzle_545SUP_AK",
					"muzzle_snds_B",
					"muzzle_snds_H",
					"RH_qdss_nt4",
					"RH_saker",
					"muzzle_snds_M",
					"hlc_muzzle_snds_M14",
					"hlc_muzzle_snds_fal",
					"RH_spr_mbs",
					"hlc_muzzle_556NATO_KAC",
					"hlc_muzzle_762SUP_AK",
					"hlc_muzzle_snds_HK33",
					"hlc_muzzle_snds_g3",
					"hlc_muzzle_300blk_KAC",
					"rhs_acc_tgpa",
					"rhs_acc_dtk4short",
					"rhs_acc_dtk",
					"rhs_acc_dtk4screws",
					"CUP_muzzle_snds_G36_black",
					"CUP_muzzle_snds_G36_desert",
					"CUP_muzzle_mfsup_SCAR_L",
					"CUP_muzzle_snds_SCAR_L"]
					]};
				};

	case "llm": {
					if((_shop == "llm") && ((call life_adminlevel) > 1)) then {_return =
		["LL-M Rails",
					["acc_pointer_IR",
					"acc_flashlight",
					"RH_m16covers_f",
					"RH_m16covers_s",
					"rhs_acc_2dpZenit",
					"RH_peq15",
					"RH_peq15_top",
					"RH_peq2",
					"rhsusf_acc_anpeq15",
					"RH_peq2_top",
					"RH_SFM952V",
					"RH_SFM952V_tan",
					"RH_m4covers_f",
					"RH_m4covers_s",
					"FHQ_acc_LLM01L"]
					]};
				};

	case "cqb": {
					if((_shop == "cqb") && ((call life_adminlevel) > 1)) then {_return =
		["CQB Scopes",
					["CUP_optic_CompM2_Woodland",
					"CUP_optic_CompM2_Black",
					"hlc_optic_kobra",
					"rhs_acc_1p63",
					"rhs_acc_ekp1b",
					"optic_ACO_grn",
					"optic_Aco",
					"optic_Holosight",
					"optic_ACO_grn_smg",
					"optic_Aco_smg",
					"optic_Holosight_smg",
					"RH_compm4s",
					"RH_t1",
					"RH_eotech553",
					"RH_shortdot",
					"RH_reflex",
					"FHQ_optic_AC12136",
					"FHQ_optic_AC11704_tan",
					"FHQ_optic_AC11704",
					"FHQ_optic_AIM",
					"FHQ_optic_AIM_tan",
					"RH_t1",
					"RH_eotech553",
					"RH_reflex",
					"rhs_acc_pkas",
					"FHQ_optic_MARS",
					"FHQ_optic_MARS_tan",
					"FHQ_optic_MicroCCO",
					"FHQ_optic_MicroCCO_tan",
					"FHQ_optic_MicroCCO_low",
					"FHQ_optic_MicroCCO_low_tan",
					"FHQ_optic_HWS",
					"FHQ_optic_HWS_tan",
					"CUP_optic_Eotech533",
					"CUP_optic_CompM2_Desert",
					"CUP_optic_CompM2_Woodland2"]
					]};
				};

	case "mid": {
					if((_shop == "mid") && ((call life_adminlevel) > 1)) then {_return =
		["Mid-Range Scopes",
					["rhsusf_acc_ACOG",
					"rhsusf_acc_ACOG3",
					"FHQ_optic_ACOG_tan",
					"RH_ta31rco",
					"FHQ_optic_ACOG",
					"RH_eotech553mag",
					"RH_eotech553mag_tan",
					"CUP_optic_ELCAN_SpecterDR",
					"HLC_Optic_1p29",
					"optic_Hamr",
					"RH_ta31rco_2D",
					"CUP_optic_SUSAT",
					"optic_MRCO",
					"optic_Arco",
					"RH_m3lr",
					"hlc_optic_PVS4M14",
					"hlc_optic_artel_m14",
					"hlc_optic_PVS4FAL",
					"hlc_optic_suit",
					"hlc_optic_accupoint_g3",
					"hlc_optic_PVS4G3",
					"HLC_Optic_ZFSG1",
					"rhsusf_acc_compm4",
					"rhsusf_acc_HAMR",
					"rhs_acc_1p29",
					"rhs_acc_1p78",
					"rhs_acc_pso1m21",
					"RH_m3lr",
					"CUP_optic_RCO_desert",
					"CUP_optic_RCO",
					"CUP_optic_ACOG",
					"RH_accupoint",
					"rhsusf_acc_ACOG_wd",
					"RH_ta31rco_tan",
					"RH_ta01nsn_tan",
					"RH_ta01nsn"]
					]};
				};

	case "long": {
					if((_shop == "long") && ((call life_adminlevel) > 1)) then {_return =
		["Long-Range Scopes",
					["RH_leu_mk4",
					"CUP_optic_SB_11_4x20_PM",
					"CUP_optic_SB_3_12x50_PMII",
					"HLC_Optic_PSO1",
					"optic_LRPS",
					"optic_DMS",
					"optic_SOS",
					"optic_NVS",
					"RH_m3lr",
					"rhsusf_acc_LEUPOLDMK4_2",
					"CUP_optic_AN_PVS_10",
					"CUP_optic_LeupoldMk4_10x40_LRT_Desert",
					"CUP_optic_LeupoldMk4_10x40_LRT_Woodland",
					"CUP_optic_LeupoldM3LR",
					"CUP_optic_LeupoldMk4",
					"CUP_optic_LeupoldMk4_MRT_tan",
					"CUP_optic_Leupold_VX3",
					"hlc_optic_LRT_m14",
					"rhs_acc_pso1m2",
					"rhsusf_acc_LEUPOLDMK4",
					"rhsusf_acc_LEUPOLDMK4_2",
					"FHQ_optic_LeupoldERT_tan",
					"FHQ_optic_LeupoldERT"]
					]};
				};

};
