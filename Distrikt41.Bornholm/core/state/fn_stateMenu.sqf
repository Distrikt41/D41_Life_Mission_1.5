#include <macro.h>
/*
	File: fn_atmMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens and manages the bank menu.
*/
private["_display","_text","_units","_type"];

if(!life_use_atm) exitWith
{
	hint localize "STR_Shop_ATMRobbed";
};
diag_log format ["::::::::: STATE:%1", D41_StateFunds]; //DEV
if(!dialog) then
{
	if(!(createDialog "Life_state_management")) exitWith {};
};
[[0],"life_fnc_fundsupdate",false,false] call life_fnc_MP;
disableSerialization;
diag_log format ["::::::::: STATE2:%1", D41_StateFunds]; //DEV

_display = findDisplay 2700;
_text = _display displayCtrl 2701;
_text ctrlSetStructuredText parseText format["<img size='1.7' image='icons\bank.paa'/> €%1<br/><img size='1.6' image='icons\money.paa'/> €%2",[D41_StateFunds] call life_fnc_numberText,[D41_Geld] call life_fnc_numberText];
