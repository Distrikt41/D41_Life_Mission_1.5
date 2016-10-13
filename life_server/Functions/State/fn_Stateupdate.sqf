//::::::::::::  ::::::::::::\\
//	Filename: life_server/Functions/D41/fn_Stateupdate.sqf
//	Author: Distrikt41 - Avka
//
//::::::::::::  ::::::::::::\\
private["_house","_uid","_housePos","_query"];

_mode =  [_this,0,0] call BIS_fnc_param;
_funds = [_this,1,0] call BIS_fnc_param;
_taxes = [_this,2,0] call BIS_fnc_param;
_wages = [_this,3,0] call BIS_fnc_param;
	
switch (_mode) do {	
	case 0: {
		//waitUntil{!DB_Async_Active};
		_queryResult = ["FetchState",2,true] call DB_fnc_asyncCall;
		D41_StateFunds = _queryResult select 0 select 0;
		D41_StateTaxes = _queryResult select 0 select 1;
		_temp = _queryResult select 0 select 2;
		D41_StateWages = (_temp / 100);
	};
	
	case 1: {
		_query = format["UpdateState:%1:%2:%3",_funds,_taxes,_wages];
		//waitUntil{!DB_Async_Active};
		[_query] spawn DB_fnc_asyncCall;	
		_queryResult = ["FetchState",2,true] call DB_fnc_asyncCall;
		D41_StateFunds = _queryResult select 0 select 0;
		D41_StateTaxes = _queryResult select 0 select 1;
		_temp = _queryResult select 0 select 2;
		D41_StateWages = (_temp / 100);		
	};	
};