/*
	File: fn_clothing_gangbl.sqf
	Author: Tobi "Cosmo" Distrikt41
	
	Description:
	Master clothing configuration file for Base1.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Base 1 Kleidung"];


switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[	
			["U_BG_Guerilla1_1",nil,450],
			["TRYK_shirts_DENIM_od",nil,450],
			["TRYK_shirts_DENIM_od_Sleeve",nil,450],
			["TRYK_U_B_C01_Tsirt",nil,450],
			["TRYK_U_pad_hood_CSATBlk",nil,450],
			["U_PMC_CombatUniformLS_IndPBSBB",nil,450],
			["U_PMC_CombatUniformRS_IndPBSBB",nil,450],
			["U_I_CombatUniform",nil,1450],
			["U_I_CombatUniform_shortsleeve",nil,1450],
			["MNP_CombatUniform_Canada_S",nil,1450],
			["MNP_CombatUniform_Canada",nil,1450]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["MNP_Beret_Ireland",nil,80],
			["CUP_H_USMC_Officer_Cap",nil,65],
			["H_Shemag_olive_hs",nil,80],
			["H_MilCap_dgtl",nil,65],
			["H_Watchcap_khk",nil,65],
			["CUP_H_FR_BoonieMARPAT",nil,65],
			["MNP_Boonie_CAN",nil,65],
			["H_Bandanna_camo",nil,65],
			["H_Bandanna_gry",nil,65],
			["H_Booniehat_dgtl",nil,80],
			["rhsusf_ach_bare_semi_headset_ess",nil,300],
			["H_PilotHelmetHeli_I",nil,300],			
			["TRYK_H_PASGT_COYO",nil,300],
			["H_HelmetSpecB_paint1",nil,300]
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
			["TRYK_V_ArmorVest_AOR2_2",nil,1550],
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
			["B_Carryall_khk",nil,500]
		];
	};
};