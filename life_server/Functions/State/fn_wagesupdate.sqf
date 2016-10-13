//::::::::::::  ::::::::::::\\
//	Filename: life_server/Functions/D41/fn_wagesupdate.sqf
//	Author: Distrikt41 - Avka
//
//::::::::::::  ::::::::::::\\
private["_house","_uid","_housePos","_query"];

_mode =  [_this,0,0] call BIS_fnc_param;
_wages = [_this,1,0] call BIS_fnc_param;
	
switch (_mode) do {	
	case 0: {
		//waitUntil{!DB_Async_Active};
		_queryResult = ["FetchStateWages",2,true] call DB_fnc_asyncCall;
		_temp = _queryResult select 0;
		D41_StateWages = (_temp / 100);
	};
	
	case 1: {
		_query = format["UpdateStateTaxes:%1",_taxes];
		//waitUntil{!DB_Async_Active};
		[_query] spawn DB_fnc_asyncCall;	
		_queryResult = ["FetchStateWages",2,true] call DB_fnc_asyncCall;
		_temp = _queryResult select 0;
		D41_StateWages = (_temp / 100);
	};