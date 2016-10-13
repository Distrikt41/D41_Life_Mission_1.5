/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 1000000) exitWith {hint localize "STR_ATM_WithdrawMax";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_val > D41_StateFunds) exitWith {hint localize "STR_ATM_NotEnoughFunds"};
if(_val < 100 && D41_StateFunds > 20000000) exitWith {hint localize "STR_ATM_WithdrawMin"}; //Temp fix for something.

D41_Geld = D41_Geld + _val;
D41_StateFunds = D41_StateFunds - _val;
hint format [localize "STR_ATM_WithdrawSuccess",[_val] call life_fnc_numberText];
[] call life_fnc_stateMenu;
[6] call SOCK_fnc_updatePartial;
[[1,D41_StateFunds],"life_fnc_fundsupdate",false,false] call life_fnc_MP;
closeDialog 0;
[] call life_fnc_stateMenu;
[] call life_fnc_hudUpdate;