/*
	File: fn_clothing_navyseal.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for DMW Gang.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"NavySeal Kleidung"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[	
			["TRYK_T_CSAT_PAD","CSAT TShirt",1150],
			["TRYK_U_pad_hood_CSATBlk","CSAT Pulli",1150],
			["U_O_SpecopsUniform_ocamo","CSAT Kampfuniform",1150],
			["U_O_PilotCoveralls","Pilotenuniform",1150],
			["U_O_OfficerUniform_ocamo","CSAT Ausgehuniform",1150],
			["U_O_FullGhillie_lsh","CSAT Ghillie",1150],
			["U_O_Wetsuit","Taucheranzug",1150]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_cbr",nil,65],
			["H_Bandanna_khk_hs",nil,65],
			["H_Watchcap_cbr",nil,65],
			["H_Booniehat_khk_hs",nil,65],
			["rhs_Booniehat_m81",nil,65],
			["MNP_Boonie_GER_T",nil,65],
			["rhsusf_bowman_cap",nil,65],
			["H_Capbw_pmc",nil,65],
			["CUP_H_FR_Headband_Headset",nil,65],
			["TRYK_H_Bandana_wig",nil,65],
			["TRYK_ESS_CAP_OD",nil,65],
			["TRYK_H_headsetcap_od",nil,65],
			["TRYK_R_CAP_OD_US",nil,65],
			["H_Shemag_olive",nil,65],
			["H_ShemagOpen_tan",nil,65],
			["rhsusf_ach_bare_wood",nil,120],
			["rhsusf_ach_bare_wood_headset_ess",nil,120],
			["rhsusf_opscore_rg_cover",nil,120],
			["H_HelmetB_light_snakeskin",nil,120],
			["rhsusf_mich_bare_norotos_headset",nil,120],
			["TRYK_H_PASGT_OD",nil,120],
			["H_HelmetCrew_O",nil,120]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_O_Diving","Taucherbrille",2],
			["rhs_googles_black",nil,2],
			["TRYK_TAC_SET_OD",nil,2],
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
			["G_Bandanna_beast",nil,1300],
			["G_Balaclava_oli",nil,220],
			["G_Balaclava_combat",nil,200],
			["G_Balaclava_lowprofile",nil,200],
			["TRYK_Beard_BK","Schwarzer Bart, kurz",200],
			["TRYK_Beard_BK4","Schwarzer Bart, lang",200],
			["TRYK_Beard","Brauner Bart, kurz",200],
			["TRYK_Beard4","Brauner Bart, lang",200],
			["TRYK_Beard_BW","Dunkelbrauner Bart, kurz",200],
			["TRYK_Beard_BW4","Dunkelbrauner Bart, lang",200],
			["TRYK_Beard_Gr","Grauer Bart, kurz",200],
			["TRYK_Beard_Gr4","Grauer Bart, lang",200],
			["TRYK_Shemagh_G","Shemag",300],
			["TRYK_Shemagh_shade_G","Shemag, Sonnebrille",300],
			["TRYK_Shemagh","Shemag hell",300],
			["TRYK_Shemagh_ESS","Shemag, Schutzbrille",300],
			["TRYK_Shemagh_WH","Shemag weiß",300],
			["TRYK_Shemagh_ESS_WH","Shemag weiß, Schutzbrille",300],
			["TRYK_Shemagh_shade_WH","Shemag weiß, Sonnebrille",300],
			["TRYK_Spset_PHC1_Glasses","Gürtelzubehör",200],
			["TRYK_Spset_PHC2_Glasses","Gürtelzubehör",200],
			["TRYK_TAC_SET_MESH_2","Zubehör Komplettpacket",200],
			["TRYK_TAC_SET_OD_2","Zubehör Komplettpacket, dunkel",200],
			["TRYK_TAC_SET_WH_2","Zubehör Komplettpacket, weiß",200]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["MNP_Vest_ISRKahki_2",nil,450],
			["MNP_Vest_ISRKahki_1",nil,450],
			["TRYK_V_Sheriff_BA_T",nil,450],
			["TRYK_V_Sheriff_BA_T2",nil,450],
			["TRYK_V_Sheriff_BA_T3",nil,450],
			["TRYK_V_Sheriff_BA_TL4",nil,450],
			["TRYK_V_Sheriff_BA_T5",nil,450],
			["TRYK_V_tacv1EP_OD",nil,450],
			["V_RebreatherIA",nil,450]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_TacticalPack_ocamo",nil,350],
			["TAC_BP_Butt2_OD",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Kitbag_rgr",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Kitbag_mcamo",nil,450],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500]
		];
	};
};