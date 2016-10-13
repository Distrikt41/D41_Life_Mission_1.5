/*
	File: fn_wantedJailFine.sqf

*/
private["_civ","_cop","_id","_half","_result","_queryResult","_amount"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
if(isNull _civ OR isNull _cop) exitWith {};


_result = format["WantedBounty:%1",_uid];
//waitUntil{!DB_Async_Active};
_queryResult = [_result,2] call DB_fnc_asyncCall;

if(count _queryResult != 0) then {
	_amount = _queryResult select 3;
	[[_amount],"life_fnc_JailFine",_uid,false] spawn life_fnc_MP;
	
};