/*
	File: fn_clothing_ganghda.sqf
	Author: Tobi "Cosmo" Distrikt41
	
	Description:
	Master configuration file for Base 7.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Base 7 Kleidung"];


switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[	
			["TRYK_shirts_DENIM_RED2","Jeans + Karohemd",450],
			["TRYK_shirts_OD_PAD","Kargohose R + Karohemd",450],
			["TRYK_shirts_BLK_PAD_RED2","Kargohose B+ Karohemd",450],
			["TRYK_U_B_RED_T_BR","Jeans + Shirt",450],
			["TRYK_shirts_DENIM_RED2_Sleeve","Longsleeve + Karohemd",450],
			["TRYK_U_denim_hood_mc","Annorak, Jeans",450],
			["U_PMC_IndUniformRS_GSBPBB","Oliv, kurz",950],
			["U_PMC_IndUniformLS_GSBPBB","Oliv, lang",950],
			["U_B_CTRG_2","CTRG Grau, TShirt",1450],
			["U_B_CTRG_3","CTRG Grau, kurz",1450],
			["U_B_CTRG_1","CTRG Grau, lang",1450],
			["U_PMC_CombatUniformLS_BSGPBB","Combat Clothes, lang",1450],
			["U_PMC_CombatUniformRS_BSGPBB","Combat Clothes, kurz",1450]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["mgsr_beret",nil,80],
			["H_ShemagOpen_tan",nil,80],
			["H_Bandanna_surfer_blk",nil,80],
			["H_Bandanna_blu",nil,65],
			["H_Cap_red",nil,65],
			["MNP_Boonie_CZ",nil,65],
			["TRYK_H_woolhat_br",nil,65],
			["MNP_Boonie_CAN",nil,80],
			["rhs_Booniehat_ucp",nil,80],
			["rhsusf_opscore_ut",nil,300],			
			["MNP_Helmet_OD",nil,300]
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
			["TAC_EI_RRV211_B",nil,650],
			["TRYK_V_ArmorVest_rgr2",nil,1550],
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
			["TRYK_B_Belt_GR",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Kitbag_rgr",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Kitbag_mcamo",nil,450],
			["B_Carryall_oli",nil,500],
			["MNP_B_Carryall_PLA_Basic_T",nil,500]
		];
	};
};