/*
	File: fn_clothing_work.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_WorkerCoveralls","Overall",250],
			["rhs_uniform_df15","Blaumann",250],
			["TRYK_OVERALL_nok_flesh","Blaumann, Braun",250],
			["CUP_U_C_Pilot_01","Hobbypilot Anzug",500],
			["U_B_HeliPilotCoveralls","Pilotenanzug Oliv",1000],
			["U_B_PilotCoveralls","Pilotenanzug Grau",1200],
			["TRYK_HRP_khk","Helikopterpilot",1200],
			["U_B_PilotCoveralls","Jetpilot Grau",3000],
			["U_PMC_IndUniformLS_TSTPTB","Hellgraue Kargohosen",1200],
			["U_PMC_IndUniformRS_BSTPTB","Graue Kargohosen",1200],
			["MNP_CombatUniform_WW_B","Graue Kargohosen, Dunkler Pulli",1300],
			["TRYK_U_B_GRY_PCUs","Outdoorkleidung, Grau",1500],
			["rhs_uniform_gorka_r_g","Outdoorkleidung, Oliv",1500],
			["TRYK_U_B_PCUHsW5","Schutzanzug, Kapuze",6000],
			["TRYK_U_B_PCUHsW6","Schutzanzug, ohne Kapuze",6000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_MilCap_blue",localize "STR_D41_Security_Cap",52],
			["H_Cap_marshal",localize "STR_D41_Hearing_hat",42],
			["H_HelmetCrew_I",localize "STR_D41_Safety_helmet",442],
			["H_Hat_grey",nil,32],
			["rhs_gssh18","Pilot Kopfhörer",200],
			["TRYK_H_headsetcap","Hobbypilot Mütze",200],
			["TRYK_H_LHS_HEL_G","Helikopterpilot Helm",500],	
			["H_PilotHelmetHeli_PMC","Pilot Helm",800],		
			["CUP_H_USMC_Helmet_Pilot","Pilot Helm 2",2000],
			["H_PilotHelmetFighter_B","Pilot Helm 3",3000],	
			["CUP_H_Navy_CrewHelmet_White","Schutzüberzug, Kopf",1000],		
			["rhs_zsh7a_mike","Schutzanzug, Helm",3000]		
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["TAC_SF10","Schutzanzug, ABC Maske",2000],
			["TRYK_US_ESS_Glasses_TAN","Schutzanzug, Sicherheitsbrille",20],
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,1],
			["G_Aviator",nil,10],
			["G_Lady_Mirror",nil,15],
			["G_Lady_Dark",nil,15],
			["G_Lady_Blue",nil,15],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["TRYK_Hrp_vest_od","Helikopterpilot, Weste",500],
			["TRYK_V_Bulletproof","Schutzweste, weiß",900]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500]
		];
	};
};