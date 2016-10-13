/*
	File: fn_killmessage.sqf
	
*/
private ["_victim","_killer"];

_victim = _this select 0;
_killer = _this select 1;

if (_victim isEqualTo _killer) then 
{
	systemChat format ["%1 wurde verwundet!",name _victim];
	if (isServer) then {diag_log format ["%1 wurde verwundet!",name _victim];};
}
else 
{
	if (isNil{_victim getVariable["realname",name _victim]} or isNil {_killer getVariable["realname",name _killer]} or (isNull _killer)) then 
	{
		systemChat format ["%1 wurde verwundet!",name _victim];
		if (isServer) then {diag_log format ["%1 wurde verwundet!",name _victim];diag_log format ["%1 wurde von %2 verwundet! BUG SUCHE",name _victim,name _killer];diag_log format ["%1 wurde von %2 verwundet! BUG SUCHE",name _victim,_killer];};
	} 
	else 
	{
		systemChat format ["%1 wurde von %2 verwundet!",name _victim,name _killer];
		if (isServer) then {diag_log format ["%1 wurde von %2 verwundet!",name _victim,name _killer];diag_log format ["%1 wurde von %2 verwundet! BUG SUCHE",name _victim,_killer];};
	};
	
};



//_victim getVariable["realname",name _victim]