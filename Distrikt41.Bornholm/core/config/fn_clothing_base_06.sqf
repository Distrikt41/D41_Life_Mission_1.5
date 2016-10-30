/*
	File: fn_clothing_base_06.sqf
	Author: Tobi "Cosmo" Distrikt41
	
	Description:
	Master configuration file for Base 06 = IHV Gang.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"IHV Kleidung"];


switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[	
			["TRYK_U_denim_jersey_blu",nil,450],
			["U_PMC_RedPlaidShirt_DenimCords",nil,450],
			["TRYK_SUITS_BLK_F",nil,450],
			["TRYK_U_denim_hood_3c",nil,450],
			["CUP_B_USMC_Navy_Violet",nil,450],
			["TRYK_shirts_TAN_PAD_BLW",nil,450],
			["TRYK_U_pad_j",nil,450],
			["U_I_G_Story_Protagonist_F",nil,450],
			["U_PMC_CombatUniformLS_ChckP_BPBB",nil,1450],
			["U_PMC_CombatUniformRS_ChckP_BPBB",nil,1450],
			["D41_IHV_uniform","IHV Uniform",1450]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Beret_blk",nil,65],
			["H_Cap_tan",nil,65],
			["H_Booniehat_khk_hs",nil,65],
			["H_Cap_pmc_headphones",nil,65],
			["H_MilCap_gry",nil,65],
			["rhs_tsh4",nil,50],			
			["H_HelmetSpecB_blk",nil,300],
			["CUP_H_FR_ECH",nil,300],
			["TRYK_H_DELTAHELM_NV",nil,300]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["rhs_googles_clear",nil,2],
			["G_Shades_Black",nil,2],
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
			["rhs_6sh46",nil,350],
			["TRYK_V_Sheriff_BA_TB7",nil,550],
			["V_PlateCarrier2_blk",nil,1550]

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
			["rhs_sidor",nil,500],
			["PMC_B_Carryall_blk",nil,500],
			["D41_Hero_Backpack_l",nil,2000],
			["D41_Hero_Backpack_d",nil,2000]
		];
	};
};