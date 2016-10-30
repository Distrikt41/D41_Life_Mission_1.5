/*
	File: fn_clothing_reb.sqf
	Author: D41 Cosmo
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Rebellenlager Nord"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(life_D41_Karma < -2000) then
		{
			_ret pushback ["U_BG_Guerilla1_1",nil,550];
			_ret pushback ["U_BG_Guerilla2_3",nil,550];
			_ret pushback ["rhs_chdkz_uniform_2",nil,550];
			_ret pushback ["rhs_chdkz_uniform_5",nil,550];
			_ret pushback ["MNP_CombatUniform_Militia_F",nil,550];
			_ret pushback ["rhs_uniform_gorka_r_y",nil,750];
			_ret pushback ["MNP_CombatUniform_IR_BSJ_Med_B",nil,750];
			_ret pushback ["TRYK_T_camo_wood_marpat",nil,750];
		};
		if(life_D41_Karma < -5000) then
		{
			_ret pushback ["MNP_CombatUniform_Militia_A",nil,2320];
			_ret pushback ["TRYK_U_B_WOOD_MARPAT_CombatUniform",nil,2320];
			_ret pushback ["rhs_uniform_FROG01_m81",nil,2320];
		};
		if(life_D41_Karma < -8000) then
		{
			_ret pushback ["TRYK_T_CSAT_PAD",nil,1200];
			_ret pushback ["TRYK_U_B_woodR_CombatUniformTshirt",nil,3500];
			_ret pushback ["TRYK_U_B_wood_CombatUniform",nil,3500];
		};
		if(life_D41_Karma < -10000) then
		{
			_ret pushback ["MNP_CombatUniform_USMC_ST",nil,5000];
			_ret pushback ["MNP_CombatUniform_USMC_T",nil,5000];
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
		};
		if(life_D41_Karma < -5000) then
		{
			_ret pushback ["H_MilCap_ocamo",nil,120];
			_ret pushback ["H_ShemagOpen_tan",nil,85];
			_ret pushback ["H_Shemag_olive",nil,85];
			_ret pushback ["rhsusf_ach_bare_des",nil,550];
			_ret pushback ["rhsusf_ach_bare_semi_headset",nil,550];
		};
		if(life_D41_Karma < -8000) then
		{
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
			_ret pushback ["CUP_V_I_Guerilla_Jacket",nil,350];
			_ret pushback ["CUP_V_OI_TKI_Jacket1_01",nil,350];
			_ret pushback ["CUP_V_OI_TKI_Jacket1_03",nil,350];
			_ret pushback ["CUP_V_OI_TKI_Jacket4_02",nil,350];
			_ret pushback ["CUP_V_OI_TKI_Jacket3_01",nil,350];
		};
		if(life_D41_Karma < -5000) then
		{
			_ret pushback ["V_HarnessOGL_brn",nil,750];
			_ret pushback ["V_HarnessO_brn",nil,750];
			_ret pushback ["TAC_EI_RRV211_OD",nil,1750];
			_ret pushback ["rhsusf_spc",nil,4500];
		};
		if(life_D41_Karma < -8000) then
		{
			_ret pushback ["TRYK_V_Sheriff_BA_T7",nil,2750];
			_ret pushback ["TRYK_V_ArmorVest_Ranger2",nil,5500];
			_ret pushback ["TRYK_V_ArmorVest_Brown2",nil,5500];
		};
		if(life_D41_Karma < -10000) then
		{
			_ret pushback ["TRYK_V_PlateCarrier_JSDF",nil,12000];
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
			_ret pushback ["TRYK_B_Kitbag_Base_JSDF",nil,450];
			_ret pushback ["TRYK_B_Coyotebackpack_OD",nil,450];
			_ret pushback ["TRYK_B_Carryall_wood",nil,500];
			_ret pushback ["B_Carryall_khk",nil,500];
		};
	};
};

_ret;