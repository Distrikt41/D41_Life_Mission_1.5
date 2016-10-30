#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Medical Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if( __GETC__(life_mediclevel) == 1) then
		{
		_ret pushback ["D41_URD_01_uniform","URD Helfer",30];
		};
		if( __GETC__(life_mediclevel) == 2) then
		{
		_ret pushback ["D41_URD_02_uniform","URD Truppfuehrer",30];
		_ret pushback ["D41_URD_uniform_rettungsdienst","URD Rettungsdienst",30];
		};
		if( __GETC__(life_mediclevel) == 3) then
		{
		_ret pushback ["D41_URD_03_uniform","URD Gruppenfuehrer",30];
		_ret pushback ["D41_URD_uniform_rettungsdienst","URD Rettungsdienst",30];
		_ret pushback ["D41_URD_uniform_einsatzleitung","URD Einsatzleitung",30];
		};
		if( __GETC__(life_mediclevel) == 4) then
		{
		_ret pushback ["D41_URD_04_uniform","URD Zugfuehrer",30];
		_ret pushback ["D41_URD_uniform_rettungsdienst","URD Rettungsdienst",30];
		_ret pushback ["D41_URD_uniform_einsatzleitung","URD Einsatzleitung",30];
		};
		if( __GETC__(life_mediclevel) == 5) then
		{
		_ret pushback ["D41_URD_05_uniform_white","URD Praesident Weiß",30];
		_ret pushback ["D41_URD_05_uniform_black","URD Praesident Schwarz",30];
		_ret pushback ["D41_URD_uniform_rettungsdienst","URD Rettungsdienst",30];
		_ret pushback ["D41_URD_uniform_einsatzleitung","URD Einsatzleitung",30];
		};
		_ret pushback ["U_I_Wetsuit","Tauchanzug",400];
		_ret pushback ["TRYK_U_B_PCUHsW6","ABC-Schutzanzug",400];
	};
	
	//Hats
	case 1:
	{
		_ret pushback ["D41_urd_Beret_01","URD Barret",75];
		_ret pushback ["H_Cap_red","Rotes Cap",75];
		_ret pushback ["H_Cap_blk","Schwarzes Cap",75];
		_ret pushback ["D41_pilot_helmet","Pilotenhelm",120];
		_ret pushback ["H_CrewHelmetHeli_B","Schutzhelm",75];
		_ret pushback ["CUP_H_Navy_CrewHelmet_Red","ABC-Schutzhelm",75];
	};
	
	//Glasses
	case 2:
	{
			_ret pushback ["G_Shades_Black",nil,25];
			_ret pushback ["G_Aviator","Aviator",25];
			_ret pushback ["G_Squares","Squares",25];
			_ret pushback ["G_Lowprofile","Low Profile",25];
			_ret pushback ["G_Combat","Combat Googles 1",25];
			_ret pushback ["Pomi_Goggles","Combat Googles 2",25];
			_ret pushback ["rhs_googles_black","Ballistic Glasses Black",25];
			_ret pushback ["rhs_googles_clear","Ballistic Glasses Clear",25];
			_ret pushback ["G_Tactical_Clear","Tactical Shades",25];
			_ret pushback ["G_I_Diving","Diving Googles",75];
			_ret pushback ["TAC_SF10","ABC-Maske",75];
	};
	
	//Vest
	case 3:
	{
		_ret = 
		[
			["D41_urd_bag","Medic Tasche",50],
			["V_RebreatherIA","Atemgerät",50],
			["CUP_V_B_LHDVest_Red","ABC Warnweste",50]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_URDKitbag_sgg","Medic Rucksack",400],
			["rhs_assault_umbts_engineer","Werkzeug Rucksack",400]
		];
	};
};

_ret;