/*
	File: fn_clothing_reb.sqf
	Author: D41 Cosmo
	
	Description:
	Master configuration file for Reb City.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Rebellenstadt"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(life_D41_Karma < -2000) then
		{
			_ret pushback ["TRYK_U_taki_G_COY",nil,550];
			_ret pushback ["TRYK_U_taki_G_WH",nil,550];
		};
		if(life_D41_Karma < -5000) then
		{
			_ret pushback ["TRYK_U_taki_BLK",nil,1320];
			_ret pushback ["TRYK_U_taki_COY",nil,1320];
			_ret pushback ["TRYK_U_taki_wh",nil,1320];
			_ret pushback ["U_BG_leader",nil,2320];
			_ret pushback ["U_I_CombatUniform",nil,3320];
			_ret pushback ["U_I_CombatUniform_shortsleeve",nil,3320];
		};
		if(life_D41_Karma < -8000) then
		{
			_ret pushback ["U_O_OfficerUniform_ocamo",nil,4000];
			_ret pushback ["TRYK_ZARATAKI",nil,3500];
			_ret pushback ["TRYK_ZARATAKI2",nil,3500];
			_ret pushback ["TRYK_ZARATAKI3",nil,3500];
		};
		if(life_D41_Karma < -10000) then
		{
			_ret pushback ["U_I_GhillieSuit",nil,15000];
			_ret pushback ["U_B_GhillieSuit",nil,15000];
		};
		if(life_D41_Karma < -11500) then
		{
			_ret pushback ["U_I_FullGhillie_lsh",nil,20000];
			_ret pushback ["U_I_FullGhillie_ard",nil,20000];
		};
	};

	
	//Hats
	case 1:
	{
		if(life_D41_Karma < -2000) then
		{
			_ret pushback ["H_Booniehat_mcamo",nil,120];
			_ret pushback ["H_Booniehat_dgtl",nil,130];
			_ret pushback ["H_Bandanna_camo",nil,65];
			_ret pushback ["H_Bandanna_khk_hs",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_Open_01",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_Open_02",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_Open_03",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_Open_04",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_Open_05",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_Open_06",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_01",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_02",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_03",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_04",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_05",nil,120];
			_ret pushback ["CUP_H_TKI_Lungee_06",nil,120];
			_ret pushback ["CUP_H_TKI_Pakol_1_02",nil,120];
			_ret pushback ["CUP_H_TKI_Pakol_2_03",nil,120];
			_ret pushback ["CUP_H_TKI_SkullCap_01",nil,120];
			_ret pushback ["CUP_H_TKI_SkullCap_04",nil,120];
			_ret pushback ["CUP_H_TKI_SkullCap_05",nil,120];
			_ret pushback ["CUP_H_TKI_SkullCap_06",nil,120];
		};
		if(life_D41_Karma < -5000) then
		{
			_ret pushback ["H_MilCap_ocamo",nil,80];
			_ret pushback ["H_ShemagOpen_khk",nil,80];
			_ret pushback ["H_ShemagOpen_tan",nil,85];
			_ret pushback ["H_Shemag_olive",nil,85];
			_ret pushback ["CUP_H_USMC_Officer_Cap",nil,85];
		};
		if(life_D41_Karma < -8000) then
		{
			_ret pushback ["rhsusf_patrolcap_ocp",nil,120];
			_ret pushback ["rhsusf_ach_bare_des_headset_ess",nil,650];
			_ret pushback ["H_HelmetSpecB_paint1",nil,600];
		};
	};


	//Glasses
	case 2:
	{
		if(life_D41_Karma < -2000) then
		{
			_ret pushback ["G_Shades_Black",nil,2];
			_ret pushback ["G_Shades_Blue",nil,2];
			_ret pushback ["G_Sport_Blackred",nil,2];
			_ret pushback ["G_Sport_Checkered",nil,2];
			_ret pushback ["G_Sport_Blackyellow",nil,2];
			_ret pushback ["G_Sport_BlackWhite",nil,20];
			_ret pushback ["G_Aviator",nil,20];
			_ret pushback ["G_Squares",nil,1];
			_ret pushback ["G_Balaclava_oli",nil,220];
			_ret pushback ["G_Bandanna_shades",nil,220];
			_ret pushback ["G_Bandanna_sport",nil,220];
			_ret pushback ["G_Bandanna_tan",nil,220];
			_ret pushback ["G_Bandanna_beast",nil,1300];
			_ret pushback ["G_Combat",nil,55];
			_ret pushback ["TRYK_Beard_BK","Schwarzer Bart, kurz",2000];
			_ret pushback ["TRYK_Beard_BK4","Schwarzer Bart, lang",2000];
			_ret pushback ["TRYK_Beard","Brauner Bart, kurz",2000];
			_ret pushback ["TRYK_Beard4","Brauner Bart, lang",2000];
			_ret pushback ["TRYK_Beard_BW","Dunkelbrauner Bart, kurz",2000];
			_ret pushback ["TRYK_Beard_BW4","Dunkelbrauner Bart, lang",2000];
			_ret pushback ["TRYK_Beard_Gr","Grauer Bart, kurz",2000];
			_ret pushback ["TRYK_Beard_Gr4","Grauer Bart, lang",2000];
			_ret pushback ["TRYK_Shemagh_G","Shemag",300];
			_ret pushback ["TRYK_Shemagh_shade_G","Shemag, Sonnebrille",300];
			_ret pushback ["TRYK_Shemagh","Shemag hell",300];
			_ret pushback ["TRYK_Shemagh_ESS","Shemag, Schutzbrille",300];
			_ret pushback ["TRYK_Shemagh_WH","Shemag weiß",300];
			_ret pushback ["TRYK_Shemagh_ESS_WH","Shemag weiß, Schutzbrille",300];
			_ret pushback ["TRYK_Shemagh_shade_WH","Shemag weiß, Sonnebrille",300];
			_ret pushback ["TRYK_Spset_PHC1_Glasses","Gürtelzubehör",200];
			_ret pushback ["TRYK_Spset_PHC2_Glasses","Gürtelzubehör",200];
			_ret pushback ["TRYK_TAC_SET_MESH_2","Zubehör Komplettpacket",800];
			_ret pushback ["TRYK_TAC_SET_OD_2","Zubehör Komplettpacket, dunkel",800];
			_ret pushback ["TRYK_TAC_SET_WH_2","Zubehör Komplettpacket, weiß",800];
		};
	};

	//Vest
	case 3:
	{
		if(life_D41_Karma < -2000) then
		{
			_ret pushback ["V_TacVest_khk",nil,1250];
			_ret pushback ["V_TacVest_camo",nil,1250];
			_ret pushback ["V_I_G_resistanceLeader_F",nil,450];
			_ret pushback ["V_BandollierB_cbr",nil,450];
			_ret pushback ["V_BandollierB_blk",nil,450];
			_ret pushback ["V_BandollierB_khk",nil,450];
			_ret pushback ["V_BandollierB_rgr",nil,450];
		};
		if(life_D41_Karma < -5000) then
		{
			_ret pushback ["V_HarnessOGL_brn",nil,750];
			_ret pushback ["V_HarnessO_brn",nil,750];
			_ret pushback ["V_TacVestIR_blk",nil,750];
			_ret pushback ["V_HarnessO_brn",nil,750];
		};
		if(life_D41_Karma < -8000) then
		{
			_ret pushback ["V_PlateCarrier_Kerry",nil,5500];
		};
		if(life_D41_Karma < -10000) then
		{
			_ret pushback ["V_PlateCarrierIA2_dgtl",nil,12000];
		};
	};
	
	//Backpacks
	case 4:
	{
		if(life_D41_Karma < -2000) then
		{
			_ret pushback ["TAC_BP_Butt_B2",nil,350];
			_ret pushback ["TAC_BP_Butt2_OD",nil,350];
			_ret pushback ["TAC_BP_KAR_B",nil,350];
			_ret pushback ["B_AssaultPack_cbr",nil,250];
			_ret pushback ["B_Kitbag_mcamo",nil,450];
			_ret pushback ["B_TacticalPack_oli",nil,350];
			_ret pushback ["B_TacticalPack_ocamo",nil,350];
			_ret pushback ["B_FieldPack_ocamo",nil,300];
			_ret pushback ["B_Bergen_sgg",nil,450];
			_ret pushback ["B_Kitbag_cbr",nil,450];
			_ret pushback ["B_Kitbag_mcamo",nil,450];
			_ret pushback ["B_Carryall_oli",nil,500];
			_ret pushback ["B_Carryall_khk",nil,500];
		};
	};
};

_ret;