//::::::::::::  ::::::::::::\\
//	Filename: life_server/Functions/D41/fn_fundsupdate.sqf
//	Author: Distrikt41 - Avka
//
//::::::::::::  ::::::::::::\\
private["_house","_uid","_housePos","_query"];

_mode =  [_this,0,0] call BIS_fnc_param;
_funds = [_this,1,0] call BIS_fnc_param;

diag_log format ["::::::::: FUNDSQUERY: mode %1   funds  %2", _mode,_funds]; //DEV
	
switch (_mode) do {	
	case 0: {
		diag_log format ["::::::::: FUNDS CASE 0 DRIN:"]; //DEV
		//waitUntil{!DB_Async_Active};
		_queryResult = ["FetchStateFunds",2,true] call DB_fnc_asyncCall;
		diag_log format ["::::::::: FUNDS CASE 0 _queryResult: %1",_queryResult]; //DEV
		D41_StateFunds = _queryResult select 0;
		diag_log format ["::::::::: FUNDS CASE 0 DONE: %1  %2", _queryResult,D41_StateFunds]; //DEV
	};
	
	case 1: {
		diag_log format ["::::::::: FUNDS CASE 1 DRIN:"]; //DEV
		_query = format["UpdateStateFunds:%1",_funds];
		//waitUntil{!DB_Async_Active};
		[_query] spawn DB_fnc_asyncCall;	
		_queryResult = ["FetchStateFunds",2,true] call DB_fnc_asyncCall;
		D41_StateFunds = _queryResult select 0;		
		diag_log format ["::::::::: FUNDS CASE 1 DONE: %1  %2", _queryResult,D41_StateFunds]; //DEV
	};
	
	case 2: {
		diag_log format ["::::::::: FUNDS CASE 2 DRIN:"]; //DEV
		_query = format["UpdateStateFundsADD:%1",_funds];
		//waitUntil{!DB_Async_Active};
		[_query] spawn DB_fnc_asyncCall;	
		_queryResult = ["FetchStateFunds",2,true] call DB_fnc_asyncCall;
		D41_StateFunds = _queryResult select 0;		
		diag_log format ["::::::::: FUNDS CASE 2 DONE: %1  %2", _queryResult,D41_StateFunds]; //DEV
	};
		
};