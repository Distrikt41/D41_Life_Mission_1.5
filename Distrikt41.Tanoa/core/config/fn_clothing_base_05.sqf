/*
	File: fn_clothing_base_05.sqf
	Author: Tobi "Cosmo" Distrikt41
	
	Description:
	Master configuration file for Base 5 HERO.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Base 5 Kleidung"];


switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[	
			["TRYK_SUITS_BLK_F",nil,450],
			["U_PMC_WTShirt_DJeans",nil,450],
			["TRYK_shirts_OD_PAD_BLU3",nil,450],
			["TRYK_shirts_TAN_PAD_BLU3",nil,450],
			["TRYK_shirts_DENIM_BWH_Sleeve",nil,450],
			["TRYK_shirts_DENIM_BWH",nil,450],
			["U_PMC_WTShirt_DJeans",nil,450],
			["U_PMC_CombatUniformRS_ChckLB_GPBB",nil,1050],
			["U_PMC_CombatUniformLS_ChckLB_GPBB",nil,1050]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["MNP_Beret_VDV",nil,65],
			["H_Hat_blue",nil,65],
			["H_Cap_blu",nil,65],
			["rhs_Booniehat_ucp",nil,65],
			["H_Cap_pmc_headphones",nil,65],
			["H_MilCap_blue",nil,65],
			["rhsusf_mich_bare_norotos_arc_tan_headset",nil,300],
			["MNP_Helmet_UN",nil,300]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["rhs_googles_clear",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,1],
			["G_Lowprofile",nil,20],
			["G_Combat",nil,55],
			["G_Aviator",nil,20],
			["TRYK_US_ESS_Glasses_TAN","Schutzanzug, Sicherheitsbrille",20],
			["TRYK_Beard_BK","Schwarzer Bart, kurz",2000],
			["TRYK_Beard_BK4","Schwarzer Bart, lang",2000],
			["TRYK_Beard","Brauner Bart, kurz",2000],
			["TRYK_Beard4","Brauner Bart, lang",2000],
			["TRYK_Beard_BW","Dunkelbrauner Bart, kurz",2000],
			["TRYK_Beard_BW4","Dunkelbrauner Bart, lang",2000],
			["TRYK_Beard_Gr","Grauer Bart, kurz",2000],
			["TRYK_Beard_Gr4","Grauer Bart, lang",2000],
			["TRYK_Shemagh_G","Shemag",300],
			["TRYK_Shemagh_shade_G","Shemag, Sonnebrille",300],
			["TRYK_Shemagh","Shemag hell",300],
			["TRYK_Shemagh_ESS","Shemag, Schutzbrille",300],
			["TRYK_Shemagh_WH","Shemag weiß",300],
			["TRYK_Shemagh_ESS_WH","Shemag weiß, Schutzbrille",300],
			["TRYK_Shemagh_shade_WH","Shemag weiß, Sonnebrille",300],
			["TRYK_Spset_PHC1_Glasses","Gürtelzubehör",200],
			["TRYK_Spset_PHC2_Glasses","Gürtelzubehör",200],
			["TRYK_TAC_SET_MESH_2","Zubehör Komplettpacket",800],
			["TRYK_TAC_SET_OD_2","Zubehör Komplettpacket, dunkel",800],
			["TRYK_TAC_SET_WH_2","Zubehör Komplettpacket, weiß",800]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["TRYK_V_tacv1EP_OD",nil,550],
			["TRYK_V_Bulletproof_BL",nil,750],
			["TRYK_V_Sheriff_BA_T6",nil,950],
			["TRYK_V_ArmorVest_CBR",nil,1550]

		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["TAC_BP_Butt_B2",nil,350],
			["TAC_BP_Butt2_OD",nil,350],
			["TAC_BP_KAR_B",nil,350],
			["B_Kitbag_rgr",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oucamo",nil,500],
			["B_Carryall_khk",nil,500],
			["D41_Hero_Backpack_l",nil,2000],
			["D41_Hero_Backpack_d",nil,2000]
		];
	};
};