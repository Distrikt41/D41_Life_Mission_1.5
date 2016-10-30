/*
	File: fn_clothing_gangpow.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Base 2.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Base 2 Kleidung"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[	
			["MNP_CombatUniform_Militia_C",nil,450],
			["MNP_CombatUniform_Militia_E",nil,450],
			["TRYK_U_B_Wood_PCUs",nil,450],
			["TRYK_T_camo_Wood_BG",nil,450],
			["TRYK_U_B_WDL_GRY_CombatUniform",nil,450],
			["MNP_CombatUniform_ASA_GC3",nil,450],
			["MNP_CombatUniform_Wood_B",nil,1450],
			["MNP_CombatUniform_Wood_A",nil,1450],
			["TRYK_U_B_Woodland",nil,1450],
			["TRYK_U_B_Woodland_Tshirt",nil,1450]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["MNP_Beret_Green",nil,80],
			["CUP_H_TK_Lungee",nil,80],
			["H_ShemagOpen_tan",nil,80],
			["H_MilCap_dgtl",nil,65],
			["MNP_Boonie_CZ",nil,65],
			["TRYK_ESS_CAP_OD",nil,65],
			["H_Bandanna_khk_hs",nil,65],
			["H_Bandanna_camo",nil,65],
			["rhs_Booniehat_flora",nil,80],
			["rhs_Booniehat_m81",nil,80],
			["H_HelmetB_camo",nil,300],
			["rhsusf_ach_bare_des_headset_ess",nil,300],
			["rhsusf_ach_bare_des",nil,300]
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
			["G_Lowprofile",nil,20],
			["G_Combat",nil,55],
			["G_Aviator",nil,20],
			["G_Balaclava_oli",nil,220],
			["G_Bandanna_aviator",nil,220],
			["G_Bandanna_blk",nil,220],
			["G_Bandanna_khk",nil,220],
			["G_Bandanna_oli",nil,220],
			["G_Bandanna_shades",nil,220],
			["G_Bandanna_sport",nil,220],
			["G_Bandanna_tan",nil,220],
			["G_Balaclava_oli",nil,220],
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
			["TRYK_V_Sheriff_BA_T5",nil,1250],
			["TRYK_V_ArmorVest_Ranger",nil,1550],
			["TRYK_V_ArmorVest_Brown2",nil,1550]

		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["TAC_BP_Butt_B2",nil,350],
			["TAC_BP_Butt2_OD",nil,350],
			["TAC_BP_KAR_B",nil,350],
			["B_TacticalPack_ocamo",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Kitbag_rgr",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Kitbag_mcamo",nil,450],
			["B_Carryall_oli",nil,500],
			["TRYK_B_Carryall_JSDF",nil,500],
			["B_Carryall_khk",nil,500]
		];
	};
};