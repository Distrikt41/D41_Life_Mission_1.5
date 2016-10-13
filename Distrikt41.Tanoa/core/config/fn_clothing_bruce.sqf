/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Poor_2","Jeans, Shirt",200],
			["U_OrestesBody","Skaterboy",200],
			["TRYK_U_denim_jersey_blk","Schwarze Sportjacke",300],
			["TRYK_U_denim_jersey_blu","Blaue Sportjacke",300],
			["U_PMC_GTShirt_DJeans","Shirt Jeans",300],
			["U_PMC_BluTShirt_SJeans","Kargohose, blaues Shirt",300],
			["TRYK_shirts_DENIM_BL","Jeans, dunkelblaues Hemd",300],
			["TRYK_shirts_DENIM_BWH","Jeans, blaues Hemd",300],
			["TRYK_shirts_DENIM_R","Jeans, rotes Hemd",300],
			["TRYK_shirts_DENIM_RED2","Jeans, dunkelrotes Hemd",300],
			["TRYK_shirts_DENIM_WH","Jeans, weißes Hemd",300],
			["TRYK_shirts_DENIM_WHB","Jeans, graues Hemd",300],
			["TRYK_shirts_DENIM_ylb","Jeans, gelbes Hemd",300],
			["TRYK_U_B_Denim_T_WH","Jeans, weißes TShirt",300],
			["TRYK_U_B_BLK_T_BG_WH","schwarze Jeans, weißes TShirt",300],
			["TRYK_U_B_RED_T_BR","schwarze Jeans, schwarzes TShirt",300],
			["U_C_Journalist","Polo Shirt",400],
			["U_Rangemaster","Rangemaster",400],
			["CUP_B_USMC_Navy_Blue","Blauer Pulli",400],
			["CUP_B_USMC_Navy_Green","Grüner Pulli",400],
			["CUP_B_USMC_Navy_Violet","Violetter Pulli",400],
			["CUP_B_USMC_Navy_White","Weißer Pulli",400],
			["U_PMC_BluePlaidShirt_BeigeCords","Weiße Hose, blaues Karohemd",400],
			["U_PMC_RedPlaidShirt_DenimCords","Jeans, rotes Karohemd",400],
			["U_PMC_BlackPoloShirt_BeigeCords","Weiße Hose, schwarzes Hemd",400],
			["TRYK_U_B_PCUGs_gry_R","Grauer Anorak",500],
			["TRYK_U_B_PCUGs_OD_R","Brauner Anorak",500],
			["TRYK_U_denim_hood_nc","Karierter brauner Anorak",500],
			["TRYK_U_B_BLOD_T","Kargohose, schwarzes TShirt",600],
			["TRYK_U_B_BLTAN_T","helle Kargohose, TShirt",600],
			["TRYK_U_B_C02_Tsirt","blaue Kargohose, TShirt",600],
			["U_IG_Guerilla2_2",localize "STR_D41_Green_Striped_Shirt",650],
			["U_IG_Guerilla2_3",localize "STR_D41_HillBilly",750],
			["U_IG_Guerilla3_1",localize "STR_D41_Beown_Jacket",750],
			["U_C_HunterBody_grn","Hunterkleidung",750]	
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo",nil,12],
			["H_Bandanna_surfer",nil,13],
			["H_Bandanna_gry",nil,15],
			["H_Bandanna_cbr",nil,16],
			["H_Bandanna_surfer",nil,13],
			["H_Bandanna_khk",nil,14],
			["H_Bandanna_sgg",nil,16],
			["H_StrawHat",nil,22],
			["H_BandMask_blk",nil,30],
			["H_Booniehat_tan",nil,42],
			["rhs_tsh4",localize "STR_D41_Leather_Cap",80],
			["H_Capbw_pmc",nil,31],
			["TRYK_r_cap_blk_Glasses",nil,31],
			["TRYK_R_CAP_TAN",nil,31],
			["TRYK_R_CAP_OD_US",nil,31],
			["TRYK_r_cap_od_Glasses",nil,31],
			["TRYK_r_cap_tan_Glasses",nil,31],
			["TRYK_r_cap_tan_Glasses",nil,31],
			["TRYK_r_cap_tan_Glasses",nil,31],
			["TRYK_r_cap_tan_Glasses",nil,31],
			["TRYK_r_cap_tan_Glasses",nil,31],
			["TRYK_r_cap_tan_Glasses",nil,31],
			["H_Hat_blue",nil,31],
			["H_Hat_brown",nil,27],
			["H_Hat_checker",nil,34],
			["H_Hat_grey",nil,28],
			["H_Hat_tan",nil,26],
			["H_Cap_blu",nil,15],
			["H_Cap_grn",nil,15],
			["H_Cap_grn_BI",nil,15],
			["H_Cap_oli",nil,15],
			["H_Cap_red",nil,15],
			["H_Cap_tan",nil,15]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,1],
			["G_Aviator",nil,10],
			["G_Lady_Mirror",nil,15],
			["G_Lady_Dark",nil,15],
			["G_Lady_Blue",nil,15],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["CUP_V_OI_TKI_Jacket1_04",nil,250],
			["CUP_V_OI_TKI_Jacket1_06",nil,250],
			["CUP_V_OI_TKI_Jacket4_04",nil,250],
			["CUP_V_OI_TKI_Jacket4_05",nil,250],
			["CUP_V_OI_TKI_Jacket3_04",nil,250],
			["CUP_V_OI_TKI_Jacket3_02",nil,250],
			["CUP_V_OI_TKI_Jacket3_03",nil,250],
			["CUP_V_OI_TKI_Jacket3_05",nil,250],
			["CUP_V_OI_TKI_Jacket3_06",nil,250],
			["rhs_6sh46",nil,250],
			["rhs_vest_commander",nil,350],
			["V_Rangemaster_belt",nil,450],
			["rhs_vydra_3m",nil,650],
			["V_TacVest_brn",nil,650],
			["V_TacVest_blk",nil,650]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["rhs_sidor",nil,200],
			["B_AssaultPack_cbr",nil,250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500],
			["B_Parachute",nil,500]
		];
	};
};