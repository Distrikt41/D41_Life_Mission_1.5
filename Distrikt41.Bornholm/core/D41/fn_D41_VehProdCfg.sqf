#include <macro.h>
/*
	File: fn_VehProdCfg.sqf
	Author: Bryan "Tonic" Boardwine
	Edit: Distrikt41 - Dscha
	Description:
	Preisliste für Waffenproduktion
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[Klassenname,Custom Name (set nil for default),Kosten]
	]]
*/
private["_shop"];
	_shop = [_this,0,"",[""]] call BIS_fnc_param;
	if(_shop == "") exitWith {closeDialog 0; hint "Bad Shop Type passed."}; //Bad shop type passed.

	if(playerSide != civilian)exitWith{localize "STR_Shop_NotaCiv"};
	if(!license_civ_VehProdL)exitWith{localize "STR_D41_VehicleProd_licence"};
	
	if((playerSide in [civilian]) && (license_civ_VehProdL))exitWith
		{
			[localize "STR_D41_VehProd", //Heros und Zivis
				[
					["D41_Fahrzeugschein_Vendura","Vendura",4],
					["D41_Fahrzeugschein_MiniCooper","MiniCooper",5],
					["D41_Fahrzeugschein_Subaru","Subaru",6],
					["D41_Fahrzeugschein_Cadillac_Esc","Cadillac Esc.",7],
					["D41_Fahrzeugschein_Viper","Doge Viper",12],
					["D41_Fahrzeugschein_Camaro","Camaro",10],				
					["D41_Fahrzeugschein_SuperBee","SuperBee",12],
					["D41_Fahrzeugschein_Maserati","Maserati",14],
					["D41_Fahrzeugschein_Fury_Police","Fury Police",15],
					["D41_Fahrzeugschein_LKW","Lkw",16]
				]
			];
		};
	if(true)then{""};