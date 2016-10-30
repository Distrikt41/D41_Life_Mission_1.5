#include <macro.h>
/*
	File: fn_clothing_cop_civil.sqf
	Author: D41 Cosmo
	
	Description:
	Master config file for Cop CivUndercover clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Undercover Clothing"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(!license_cop_gangfirma && __GETC__(life_coplevel) > 4) then
		{
			_ret pushback ["U_PMC_CombatUniformRS_GSBPBB",nil,600];
			_ret pushback ["TRYK_U_Bts_UCP_PCUs",nil,600];
			_ret pushback ["TRYK_U_B_PCUGs_OD_R",nil,600];
			_ret pushback ["U_IG_Guerilla2_2",nil,600];
			_ret pushback ["TRYK_shirts_PAD_BK",nil,600];
			_ret pushback ["TRYK_U_pad_hood_Cl",nil,600];
			_ret pushback ["U_PMC_RedPlaidShirt_DenimCords",nil,600];
			_ret pushback ["U_PMC_CombatUniformRS_SSGPBB",nil,600];
			_ret pushback ["U_PMC_WhtPolo_BgPants",nil,600];
			_ret pushback ["U_PMC_CombatUniformLS_ChckLR_SPBB",nil,600];
			_ret pushback ["D41_prisoner_uniform",nil,50];
		};
	};
	
	//Hats
	case 1:
	{
		if(!license_cop_gangfirma && __GETC__(life_coplevel) > 4) then
		{
			_ret pushback ["H_Shemag_olive_hs",nil,200];
			_ret pushback ["H_Booniehat_dgtl",nil,200];
			_ret pushback ["H_Bandanna_camo",nil,200];
			_ret pushback ["rhs_tsh4",nil,200];
			_ret pushback ["H_Hat_checker",nil,200];
			_ret pushback ["rhs_Booniehat_marpatwd",nil,200];
			_ret pushback ["H_Cap_red",nil,200];
			_ret pushback ["CUP_H_TK_Lungee",nil,80];
			_ret pushback ["rhsusf_ach_helmet_ucp",nil,200];
			_ret pushback ["rhsusf_ach_helmet_headset_ess_ucp",nil,200];
			_ret pushback ["H_MilCap_gry",nil,200];
		};
	};
	
	//Glasses
	case 2:
	{
		if(!license_cop_gangfirma && __GETC__(life_coplevel) > 4) then
		{
			_ret pushback ["G_Shades_Black",nil,25];
			_ret pushback ["G_Shades_Blue",nil,25];
			_ret pushback ["G_Aviator","Aviator",25];
			_ret pushback ["G_Squares","Squares",25];
			_ret pushback ["G_Lowprofile","Low Profile",25];
			_ret pushback ["G_Combat","Combat Googles 1",25];
			_ret pushback ["Pomi_Goggles","Combat Googles 2",25];
			_ret pushback ["G_Sport_Checkered",nil,25];
			_ret pushback ["G_Sport_BlackWhite",nil,25];
			_ret pushback ["G_Lady_Mirror",nil,25];
			_ret pushback ["G_Lady_Blue",nil,25];
			_ret pushback ["G_Balaclava_oli",nil,75];
			_ret pushback ["G_Bandanna_shades",nil,75];
			_ret pushback ["G_Bandanna_sport",nil,75];
			_ret pushback ["G_Bandanna_tan",nil,75];
			_ret pushback ["TRYK_TAC_SET_OD_2",nil,420],
			_ret pushback ["TRYK_US_ESS_Glasses_TAN","Schutzanzug, Sicherheitsbrille",20];
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
		if(!license_cop_gangfirma && __GETC__(life_coplevel) > 4) then
		{
			_ret pushback ["V_BandollierB_khk",nil,500];
			_ret pushback ["TRYK_V_Sheriff_BA_T6",nil,800];
			_ret pushback ["TRYK_V_ArmorVest_HRT_OD","FBI",1000];
			_ret pushback ["MNP_Vest_ISRKahki_2",nil,1000];
			_ret pushback ["V_PlateCarrierL_CTRG",nil,1000];
		};
	};
	
	//Backpacks
	case 4:
	{
		if(!license_cop_gangfirma && __GETC__(life_coplevel) > 4) then
		{
			_ret pushback ["TAC_BP_Butt_B2",nil,350];
			_ret pushback ["TAC_BP_Butt2_OD",nil,350];
			_ret pushback ["TAC_BP_KAR_B",nil,300];
			_ret pushback ["B_Carryall_oli",nil,300];
			_ret pushback ["B_Carryall_khk",nil,300];
			_ret pushback ["B_Bergen_sgg",nil,300];
		};
	};
};

_ret;