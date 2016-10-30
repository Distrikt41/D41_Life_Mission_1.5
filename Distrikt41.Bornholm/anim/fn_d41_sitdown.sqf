_n = nearestObjects [player, ["Land_CampingChair_V1_F","Land_CampingChair_V2_F","Land_ChairPlastic_F","Land_ChairWood_F","Land_OfficeChair_01_F","Land_RattanChair_01_F"], 2];

_count = count _n;
if (_count == 0) exitWith {hint "Kein Stuhl in Reichweite!"};
_chair = _n select 0;
_unit = player;

[
	[ player,"Crew"],
	"switchMove"
] call BIS_fnc_MP;
_unit setPos (getPos _chair); 
_unit setDir ((getDir _chair) - 180); 
standup = _unit addaction ["<t color='#0099FF'>Stand Up</t>","player switchMove """";player removeaction standup"];
_unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];