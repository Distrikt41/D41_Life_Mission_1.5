/*
	File: fn_bankDeposit.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Figure it out.
*/
private["_value"];
_value = parseNumber(ctrlText 2702);

//Series of stupid checks
if(_value > 1000000) exitWith {hint localize "STR_ATM_GreaterThan";};
if(_value < 0) exitWith {};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_value > D41_Geld) exitWith {hint localize "STR_ATM_NotEnoughCash"};

D41_Geld = D41_Geld - _value;
D41_StateFunds = D41_StateFunds + _value;
[6] call SOCK_fnc_updatePartial;
[[1,D41_StateFunds],"life_fnc_fundsupdate",false,false] call life_fnc_MP;

hint format[localize "STR_ATM_DepositMSG",[_value] call life_fnc_numberText];
[] call life_fnc_stateMenu;
closeDialog 0;
[] call life_fnc_hudUpdate;