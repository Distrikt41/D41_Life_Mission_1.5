/*
	File: fn_wantedTicket.sqf

*/
private["_id","_result","_queryResult","_result1","_queryResult1","_amount","_ticket"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_ticket = [_this,1,0] call BIS_fnc_param;


_result = format["WantedBounty:%1",_uid];
//waitUntil{!DB_Async_Active};
_queryResult = [_result,2] call DB_fnc_asyncCall;
_result1 = format["UpdateStateFundsADD:%1",_ticket];
//waitUntil{!DB_Async_Active};
_queryResult1 = [_result1,1] call DB_fnc_asyncCall;

_queryResultFUNDS = ["FetchStateFunds",2,true] call DB_fnc_asyncCall;
D41_StateFunds = _queryResultFUNDS select 0;	

if(count _queryResult != 0) then {
	_amount = _queryResult select 3;
	_amount = _amount - _ticket;
	if(_amount <= 0) then 
	{
		_query = format["WantedRemove:%1",_uid];
		//waitUntil{!DB_Async_Active};
		[_query,2] call DB_fnc_asyncCall;
	}else
	{
		_query = format["WantedBounty+1:%1:%2",_amount,_uid];
		//waitUntil{!DB_Async_Active};
		[_query,2] call DB_fnc_asyncCall;
	}	
};