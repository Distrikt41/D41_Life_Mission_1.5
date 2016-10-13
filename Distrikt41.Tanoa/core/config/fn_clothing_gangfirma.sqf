#include <macro.h>
/*
	File: fn_clothing_gangfirma.sqf

	
	Description:
	Firma-Security Kleidung
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Firma Kleidung"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(license_cop_gangfirma) then
		{
			_ret pushback ["D41_security_combat_uniform","Streife",500];
			_ret pushback ["TRYK_U_B_wh_blk_Rollup_CombatUniform","Zivil 1",500];
			
		};
		if(license_cop_gangfirma && __GETC__(life_coplevel) > 2) then
		{
			_ret pushback ["TRYK_SUITS_BLK_F","Anzug PersSchutz",500];
			_ret pushback ["U_PMC_BlckPolo_BluPants","Zivil 2",500];
			_ret pushback ["TRYK_T_BLK_PAD","Zivil 3",500];
		};
		if(license_cop_gangfirma) then
		{
			_ret pushback ["U_B_HeliPilotCoveralls","Pilotenuniform 1",1000];
			_ret pushback ["U_O_PilotCoveralls","Pilotenuniform 2",1000];
		};
	};
	
	//Hats
	case 1:
	{
		if((call life_coplevel) > 4) then
		{
			_ret pushback ["H_Beret_02","Security Leader",200];
		};
		if(license_cop_gangfirma) then
		{
			_ret pushback ["H_Cap_pmc_headphones",nil,75];
			_ret pushback ["MNP_Boonie_USW",nil,75];
			_ret pushback ["D41_sniper_cap",nil,75];
			_ret pushback ["D41_security_Beret",nil,75];
			_ret pushback ["D41_swat_leader_helmet","Einsatzhelm 1",1000];
			_ret pushback ["rhsusf_opscore_bk","Einsatzhelm 2",1000];
		};
		if(license_cop_gangfirma) then
		{
			_ret pushback ["H_Cap_headphones","Muetze Kopfhoerer",300];
			_ret pushback ["H_CrewHelmetHeli_B","Pilotenhelm 1",1000];
			_ret pushback ["H_PilotHelmetHeli_B","Pilotenhelm 2",1000];
		};
	};
	
	//Glasses
	case 2:
	{
			_ret pushback ["G_Shades_Black",nil,25];
			_ret pushback ["rhs_googles_black",nil,25];
			_ret pushback ["G_Aviator",nil,25];
			_ret pushback ["G_Squares",nil,25];
			_ret pushback ["G_Lowprofile",nil,25];
			_ret pushback ["G_Combat",nil,25];
			_ret pushback ["G_Tactical_Clear",nil,25];
			_ret pushback ["Pomi_Goggles",nil,25];
			_ret pushback ["G_Bandanna_shades",nil,25];
			_ret pushback ["G_Balaclava_lowprofile",nil,25];
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
	
	//Vest
	case 3:
	{
		if(license_cop_gangfirma) then
		{
			_ret pushback ["D41_police_belt","Tiefziehholster",500];
			_ret pushback ["D41_security_vest_combat","Streifenweste",1200];
			_ret pushback ["TRYK_V_Sheriff_BA_TB","Zivilweste 1",2000];
			_ret pushback ["TRYK_V_Sheriff_BA_TB6","Zivilweste 2",2000];
			_ret pushback ["TRYK_V_Bulletproof_BLK","Zivilweste 3",1000];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["D41_Cop_BackBelt",nil,300],
			["TAC_BP_Butt_B2",nil,350],
			["TAC_BP_Butt2_OD",nil,350],
			["TAC_BP_KAR_B",nil,350],
			["TAC_BP_Butt_B",nil,300],
			["PMC_B_Kitbag_blk",nil,300],
			["B_Parachute",nil,300]
		];
	};
};

_ret;