/*
	File: fn_clothing_gangdlo.sqf
	Author: Tobi "Cosmo" Distrikt41
	
	Description:
	Master configuration file for Base 3.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Base 3 Kleidung"];


switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[	
			["U_PMC_CombatUniformLS_SSGPBB",nil,450],
			["U_PMC_CombatUniformLS_BSSPSB",nil,450],
			["TRYK_U_taki_COY",nil,450],
			["CUP_B_USMC_Navy_Yellow",nil,450],
			["TRYK_U_B_UCP_PCUs",nil,450],
			["TRYK_shirts_DENIM_ylb",nil,450],
			["TRYK_shirts_DENIM_ylb_Sleeve",nil,450],
			["TRYK_shirts_PAD_YEL",nil,450],
			["TRYK_shirts_OD_PAD_YEL",nil,450],
			["rhs_chdkz_uniform_4",nil,450],
			["rhs_uniform_cu_ocp",nil,1450],
			["MNP_CombatUniform_AMCU_ST",nil,1450],
			["MNP_CombatUniform_AMCU_T",nil,1450]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["MNP_Beret_SAS",nil,80],
			["CUP_H_TK_Lungee",nil,80],
			["H_ShemagOpen_khk",nil,65],
			["rhs_gssh18",nil,65],
			["H_Capbw_tan_pmc",nil,65],
			["H_Bandanna_mcamo",nil,65],
			["rhsusf_patrolcap_ocp",nil,65],
			["TRYK_H_woolhat_tan",nil,65],
			["rhs_Booniehat_ocp",nil,80],
			["H_Booniehat_mcamo",nil,80],
			["H_Cap_tan",nil,80],
			["rhsusf_ach_bare_tan_ess",nil,300],
			["rhsusf_ach_helmet_headset_ocp",nil,300],
			["rhsusf_opscore_mc_cover",nil,300]
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
			["V_BandollierB_cbr",nil,350],
			["TRYK_V_ArmorVest_coyo2",nil,1550],
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
			["B_Carryall_mcamo",nil,500]
		];
	};
};