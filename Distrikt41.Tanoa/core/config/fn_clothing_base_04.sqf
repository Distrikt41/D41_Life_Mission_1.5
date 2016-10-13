/*
	File: fn_clothing_ganghda.sqf
	Author: Tobi "Cosmo" Distrikt41
	
	Description:
	Master configuration file for Base 4.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Base 4 Kleidung"];


switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[	
			["TRYK_shirts_DENIM_BL","Karohemd",450],
			["TRYK_shirts_DENIM_BL_Sleeve","Longsleeve + Karohemd",450],
			["TRYK_shirts_BLK_PAD_BL","Kargohose + Karohemd",450],
			["TRYK_shirts_OD_PAD_BL","Kargohose + Karohemd",450],
			["TRYK_U_B_PCUGs_BLK","Annorak, Jeans",450],
			["U_PMC_CombatUniformLS_ChckDBS_GPSB","Blaues Karohemd, kurz",950],
			["U_PMC_CombatUniformRS_ChckDBS_GPSB","Blaues Karohemd",950],
			["TRYK_C_AOR2_T","Digital Camo, hellgrün",1450],
			["TRYK_U_B_AOR2_OD_R_CombatUniform","Digital Camo, hellgrün",1450],
			["MNP_CombatUniform_USMC_ST","Digital Camo, MARPAT",1450],
			["MNP_CombatUniform_USMC_T","Digital Camo, MARPAT",1450]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["CUP_H_TK_Beret",nil,80],
			["TRYK_H_wig",nil,80],
			["H_ShemagOpen_tan",nil,80],
			["TRYK_H_woolhat_br",nil,80],
			["H_Watchcap_cbr",nil,80],
			["H_Cap_blu",nil,65],
			["H_Cap_blk",nil,65],
			["H_MilCap_blue",nil,65],
			["TRYK_H_headsetcap_blk",nil,65],
			["H_Bandanna_blu",nil,65],
			["MNP_Boonie_CAN",nil,80],
			["TRYK_H_Booniehat_AOR2",nil,80],
			["rhs_Booniehat_marpatwd",nil,80],
			["H_HelmetCrew_B",nil,300],
			["MNP_Helmet_USMC",nil,300],			
			["rhsusf_mich_bare_norotos",nil,300]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["rhs_googles_black",nil,2],
			["rhs_googles_clear",nil,2],
			["TRYK_US_ESS_Glasses_BLK",nil,2],
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
			["TRYK_TAC_SET_OD_2",nil,420],
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
			["TRYK_V_Bulletproof_BL","Blaue Schutzweste",600],
			["TRYK_V_Sheriff_BA_TB","Leichte Weste Schwarz",1000],
			["TRYK_V_ArmorVest_AOR2_2","Digital Hellgrün",1550],
			["TRYK_V_ArmorVest_Ranger2","Digital MARPAT",1550]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["TAC_BP_KAR_B",nil,350],
			["TRYK_B_Belt_GR",nil,350],
			["TAC_BP_Butt_B2",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Kitbag_rgr",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Kitbag_mcamo",nil,450],
			["B_Carryall_oli",nil,500],
			["MNP_B_Carryall_PLA_Basic_T",nil,500]
		];
	};
};