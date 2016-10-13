#include <macro.h>
/*
	File: fn_D41_VehColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	Edit: Distrikt41 - Dscha Avka
	Description:
	Color Choice for Vehicle
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[Klassenname,Custom Name (set nil for default),Kosten]
	]]
*/
private["_vehRefID"];
	diag_log format ["::::: Distrikt41 Debug Log #9 - : %1", _this];
	_vehRefID = [_this,0,-1,[0]] call BIS_fnc_param;
	diag_log format ["::::: Distrikt41 Debug Log #10 - : %1", _vehRefID];
	if(_vehRefID == -1) exitWith {closeDialog 0; hint format["what da shit"]}; //Bad shop type passed.
	diag_log format ["::::: Distrikt41 Debug Log #11"];
	
	if(_vehRefID == 0)exitWith
	{
		["Vehicle Selection",
			[
				["D41_ADM_GMC_Vandura_Orange","Vandura Orange",0],
				["D41_ADM_GMC_Vandura_Red","Vandura Red",0],
				["D41_ADM_GMC_Vandura_Black","Vandura Black",0],
				["D41_ADM_GMC_Vandura_White","Vandura White",0],
				["D41_ADM_GMC_Vandura_Green","Vandura Green",0],
				["D41_ADM_GMC_Vandura_Blue","Vandura Blue",0],			
				["D41_ADM_GMC_Vandura_Light_Blue","Vandura Light Blue",0],
				["D41_ADM_GMC_Vandura_Silver","Vandura Silver",0],
				["D41_ADM_GMC_Vandura_Yellow","Vandura Yellow",0],
				["D41_ADM_GMC_Vandura_Pink","Vandura Pink",0]
			]
		];
	};
	if(_vehRefID == 1)exitWith
	{
		["Vehicle Selection",
			[
				["D41_Jonzie_STI_Orange","Subaru Orange",1],
				["D41_Jonzie_STI_Red","Subaru Red",1],
				["D41_Jonzie_STI_Black","Subaru Black",1],
				["D41_Jonzie_STI_White","Subaru White",1],
				["D41_Jonzie_STI_Green","Subaru Green",1],
				["D41_Jonzie_STI_Blue","Subaru Blue",1],			
				["D41_Jonzie_STI_Light_Blue","Subaru Light Blue",1],
				["D41_Jonzie_STI_Silver","Subaru Silver",1],
				["D41_Jonzie_STI_Yellow","Subaru Yellow",1],
				["D41_Jonzie_STI_Pink","Subaru Pink",1]
			]
		];
	};
	if(_vehRefID == 2)exitWith
	{
		["Vehicle Selection",
			[
				["D41_Jonzie_Quattroporte_Orange","Maserati Orange",2],
				["D41_Jonzie_Quattroporte_Red","Maserati Red",2],
				["D41_Jonzie_Quattroporte_Black","Maserati Black",2],
				["D41_Jonzie_Quattroporte_White","Maserati White",2],
				["D41_Jonzie_Quattroporte_Green","Maserati Green",2],
				["D41_Jonzie_Quattroporte_Blue","Maserati Blue",2],			
				["D41_Jonzie_Quattroporte_Light_Blue","Maserati Light Blue",2],
				["D41_Jonzie_Quattroporte_Silver","Maserati Silver",2],
				["D41_Jonzie_Quattroporte_Yellow","Maserati Yellow",2],
				["D41_Jonzie_Quattroporte_Pink","Maserati Pink",2]
			]
		];
	};
	if(_vehRefID == 3)exitWith
	{
		["Vehicle Selection",
			[
				["D41_Jonzie_Mini_Cooper_R_spec_Orange","MiniCooper Orange",3],
				["D41_Jonzie_Mini_Cooper_R_spec_Red","MiniCooper Red",3],
				["D41_Jonzie_Mini_Cooper_R_spec_Black","MiniCooper Black",3],
				["D41_Jonzie_Mini_Cooper_R_spec_White","MiniCooper White",3],
				["D41_Jonzie_Mini_Cooper_R_spec_Green","MiniCooper Green",3],
				["D41_Jonzie_Mini_Cooper_R_spec_Blue","MiniCooper Blue",3],			
				["D41_Jonzie_Mini_Cooper_R_spec_Light_Blue","MiniCooper Light Blue",3],
				["D41_Jonzie_Mini_Cooper_R_spec_Silver","MiniCooper Silver",3],
				["D41_Jonzie_Mini_Cooper_R_spec_Yellow","MiniCooper Yellow",3],
				["D41_Jonzie_Mini_Cooper_R_spec_Pink","MiniCooper Pink",3]
			]
		];
	};
	if(_vehRefID == 4)exitWith
	{
		["Vehicle Selection",
			[
				["D41_Jonzie_Viper_Orange","Viper Orange",4],
				["D41_Jonzie_Viper_Red","Viper Red",4],
				["D41_Jonzie_Viper_Black","Viper Black",4],
				["D41_Jonzie_Viper_White","Viper White",4],
				["D41_Jonzie_Viper_Green","Viper Green",4],
				["D41_Jonzie_Viper_Blue","Viper Blue",4],			
				["D41_Jonzie_Viper_Light_Blue","Viper Light Blue",4],
				["D41_Jonzie_Viper_Silver","Viper Silver",4],
				["D41_Jonzie_Viper_Yellow","Viper Yellow",4],
				["D41_Jonzie_Viper_Pink","Viper Pink",4]
			]
		];
	};
	if(_vehRefID == 5)exitWith
	{
		["Vehicle Selection",
			[
				["D41_Jonzie_Escalade_Orange","Escalade Orange",5],
				["D41_Jonzie_Escalade_Red","Escalade Red",5],
				["D41_Jonzie_Escalade_Black","Escalade Black",5],
				["D41_Jonzie_Escalade_White","Escalade White",5],
				["D41_Jonzie_Escalade_Green","Escalade Green",5],
				["D41_Jonzie_Escalade_Blue","Escalade Blue",5],			
				["D41_Jonzie_Escalade_Light_Blue","Escalade Light Blue",5],
				["D41_Jonzie_Escalade_Silver","Escalade Silver",5],
				["D41_Jonzie_Escalade_Yellow","Escalade Yellow",5],
				["D41_Jonzie_Escalade_Pink","Escalade Pink",5]
			]
		];
	};
	if(_vehRefID == 6)exitWith
	{
		["Vehicle Selection",
			[
				["D41_Jonzie_Box_Orange","Truck Orange",6],
				["D41_Jonzie_Box_Red","Truck Red",6],
				//["D41_Jonzie_Box_Black","Truck Black",6],
				["D41_Jonzie_Box_White","Truck White",6],
				["D41_Jonzie_Box_Green","Truck Green",6],
				["D41_Jonzie_Box_Blue","Truck Blue",6],			
				["D41_Jonzie_Box_Light_Blue","Truck Light Blue",6],
				["D41_Jonzie_Box_Silver","Truck Silver",6],
				["D41_Jonzie_Box_Yellow","Truck Yellow",6],
				["D41_Jonzie_Box_Pink","Truck Pink",6],
				["D41_Jonzie_Box_d41","Truck D41-Logo",6]
			]
		];
	};
	if(_vehRefID == 7)exitWith
	{
		["Vehicle Selection",
			[
				["D41_ADM_1969_Camaro_Orange","Camaro Orange",7],
				["D41_ADM_1969_Camaro_Red","Camaro Red",7],
				["D41_ADM_1969_Camaro_Black","Camaro Black",7],
				["D41_ADM_1969_Camaro_White","Camaro White",7],
				["D41_ADM_1969_Camaro_Green","Camaro Green",7],
				["D41_ADM_1969_Camaro_Blue","Camaro Blue",7],			
				["D41_ADM_1969_Camaro_Light_Blue","Camaro Light Blue",7],
				["D41_ADM_1969_Camaro_Silver","Camaro Silver",7],
				["D41_ADM_1969_Camaro_Yellow","Camaro Yellow",7],
				["D41_ADM_1969_Camaro_Pink","Camaro Pink",7]
			]
		];
	};
	if(_vehRefID == 8)exitWith
	{
		["Vehicle Selection",
			[
				["D41_SIG_SuperBeeY","SuperBee Yellow",8],
				["D41_SIG_SuperBeeB","SuperBee Black",8],
				["D41_SIG_SuperBeeL","SuperBee Light Blue",8],
				["D41_SIG_SuperBeeM","SuperBee Blue",8],
				["D41_SIG_SuperBeeG","SuperBee Green",8]
			]
		];
	};
	if(_vehRefID == 9)exitWith
	{
		["Vehicle Selection",
			[
				["D41_77FuryCop","Fury Police",9]
			]
		];
	};
	diag_log format ["::::: Distrikt41 Debug Log #12"];
	if(true)then{"Da Fuck it"};