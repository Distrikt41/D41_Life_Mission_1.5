/*
	File: fn_wantedBounty.sqf
*/
private["_result","_result1","_queryResult","_queryResult1","_amount","_uid"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;

_result1 = format["WantedBounty:%1",_uid];
//waitUntil{!DB_Async_Active};
_queryResult1 = [_result1,2] call DB_fnc_asyncCall;

_amount = _queryResult1 select 3;

_result = format["UpdateStateFundsADD:%1",_amount];
//waitUntil{!DB_Async_Active};
_queryResult = [_result,1] call DB_fnc_asyncCall;

_queryResultFUNDS = ["FetchStateFunds",2,true] call DB_fnc_asyncCall;
D41_StateFunds = _queryResultFUNDS select 0;	