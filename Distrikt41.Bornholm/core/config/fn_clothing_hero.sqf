/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(life_D41_Karma > 2000) then
		{
			_ret pushback ["U_PMC_WTShirt_DJeans",nil,550];
			_ret pushback ["U_PMC_WhtPolo_BgPants",nil,550];
			_ret pushback ["U_PMC_BluePlaidShirt_BeigeCords",nil,550];
			_ret pushback ["U_PMC_GTShirt_SJeans",nil,550];
			_ret pushback ["U_PMC_BgPolo_GrnPants",nil,550];
			_ret pushback ["U_PMC_BlkTShirt_SJeans",nil,550];
			_ret pushback ["U_PMC_BgPolo_GrnPants",nil,550];
		};
		if(life_D41_Karma > 3500) then
		{
			_ret pushback ["TRYK_T_TAN_PAD",nil,650];
			_ret pushback ["TRYK_T_camo_tan",nil,650];
			_ret pushback ["TRYK_DMARPAT_T",nil,650];
			_ret pushback ["TRYK_U_B_BLK_tan_Rollup_CombatUniform",nil,650];
			_ret pushback ["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,650];
			_ret pushback ["TRYK_U_B_wh_tan_Rollup_CombatUniform",nil,650];
		};
		if(life_D41_Karma > 5000) then
		{
			_ret pushback ["U_PMC_CombatUniformLS_SSGPSB",nil,850];
			_ret pushback ["U_PMC_CombatUniformRS_BSSPSB",nil,850];
			_ret pushback ["U_PMC_CombatUniformLS_ChckDBS_GPSB",nil,850];
			_ret pushback ["U_PMC_CombatUniformLS_ChckLR_SPBB",nil,850];
			_ret pushback ["U_PMC_CombatUniformRS_SSGPBB",nil,850];
			_ret pushback ["U_PMC_CombatUniformLS_ChckP_BPBB",nil,850];
			_ret pushback ["U_PMC_CombatUniformRS_ChckLR_SPBB",nil,850];
			_ret pushback ["U_PMC_CombatUniformLS_ChckP_BPBB",nil,850];
			_ret pushback ["TRYK_U_B_ARO1_GRY_R_CombatUniform",nil,850];
			_ret pushback ["MNP_CombatUniform_Militia_DC",nil,2000];
		};
		if(life_D41_Karma > 8000) then
		{
			_ret pushback ["U_B_CombatUniform_mcam_vest",nil,3000];
			_ret pushback ["MNP_CombatUniform_Germany_D",nil,3000];
			_ret pushback ["MNP_CombatUniform_Germany_SD",nil,3000];
			_ret pushback ["rhs_uniform_FROG01_d",nil,3000];
			_ret pushback ["U_B_survival_uniform",nil,3500];
			_ret pushback ["MNP_CombatUniform_Russia_arctic",nil,4000];
		};
	};
	
	//Hats
	case 1:
	{
		if(life_D41_Karma > 2000) then
		{
			_ret pushback ["H_Booniehat_DMARPAT",nil,85];
			_ret pushback ["H_Cap_blu",nil,85];
			_ret pushback ["H_MilCap_gry",nil,80];
			_ret pushback ["rhsusf_patrolcap_ucp",nil,85];
		};
		if(life_D41_Karma > 3500) then
		{
			_ret pushback ["MNP_Boonie_UN",nil,85];
			_ret pushback ["TRYK_H_headsetcap_Glasses",nil,85];
			_ret pushback ["TRYK_H_headsetcap",nil,85];
			_ret pushback ["TRYK_H_woolhat_tan",nil,85];
		};
		if(life_D41_Karma > 5000) then
		{
			_ret pushback ["TRYK_H_PASGT_TAN",nil,320];
			_ret pushback ["rhsusf_lwh_helmet_marpatd_headset",nil,320];
			_ret pushback ["MNP_Helmet_UN",nil,320];
		};
		if(life_D41_Karma > 8000) then
		{
			_ret pushback ["rhsusf_ach_helmet_ucp",nil,520];
			_ret pushback ["rhsusf_ach_helmet_headset_ucp",nil,530];
			_ret pushback ["rhsusf_ach_helmet_headset_ess_ucp",nil,565];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret pushback ["G_Shades_Black",nil,2];
		_ret pushback ["G_Shades_Blue",nil,2];
		_ret pushback ["G_Sport_Blackred",nil,2];
		_ret pushback ["G_Sport_Checkered",nil,2];
		_ret pushback ["G_Sport_Blackyellow",nil,2];
		_ret pushback ["G_Sport_BlackWhite",nil,20];
		_ret pushback ["G_Tactical_Black",nil,20];
		_ret pushback ["Pomi_Goggles",nil,55];
		_ret pushback ["Pomi_Goggles_Snd",nil,55];
	};
	
	//Vest
	case 3:
	{
		if(life_D41_Karma > 2000) then
		{
			_ret pushback ["V_TacVest_brn",nil,1250];
			_ret pushback ["V_TacVest_darkblck",nil,1250];
		};
		if(life_D41_Karma > 3500) then
		{
			_ret pushback ["TRYK_V_Bulletproof_BL",nil,2000];
			_ret pushback ["TRYK_V_Bulletproof_BLK",nil,2000];
			_ret pushback ["TRYK_V_Bulletproof",nil,2000];
			_ret pushback ["rhsusf_spc",nil,2500];
			_ret pushback ["rhsusf_iotv_ucp_SAW",nil,2500];
		};
		if(life_D41_Karma > 5000) then
		{
			_ret pushback ["TRYK_V_ArmorVest_rgr2",nil,3000];
			_ret pushback ["TRYK_V_ArmorVest_AOR1_2",nil,3000];
			_ret pushback ["TRYK_V_ArmorVest_tan2",nil,3000];
			_ret pushback ["MNP_Vest_Germany_D2",nil,3000];
		};
		if (life_D41_Karma > 8000) then
		{
			_ret pushback ["rhsusf_spc_iar",nil,4500];
			_ret pushback ["TRYK_V_PlateCarrier_ACU",nil,5000];
		};
	};
	
	//Backpacks
	case 4:
	{
		if(life_D41_Karma > 2000) then
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
		if (life_D41_Karma > 6000) then
		{
			_ret pushback ["D41_Hero_Backpack_l",nil,2000];
			_ret pushback ["D41_Hero_Backpack_d",nil,2000];
		};	
	};
};

_ret;