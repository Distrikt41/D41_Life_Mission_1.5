#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/

//Wieder jeglichen Input erlauben.
disableUserInput false;
//**

private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 0) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

switch (__GETC__(life_medicLevel)) do 
	{
		case 1: { life_paycheck = (2000)}; //Cadet
		case 2: { life_paycheck = (2300)}; //Officer
		case 3: { life_paycheck = (2700)}; //Cpl
		case 4: { life_paycheck = (3100)}; //Sgt
		case 5: { life_paycheck = (3500)}; //Lt
		default { life_paycheck = (500);}; //default in-case anything goes tits up
	};

//[] call life_fnc_medicLoadout;
if(!license_med_adac)then{player setVariable ["IsMedic", true, true];};
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

call life_fnc_D41_TFAR;