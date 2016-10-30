/*
	File: fn_D41_KFZ_Zulassung.sqf
	Author: Avka "Sloth" Distrikt41-Team
*/


private ["_vehRefID","_className","_color"];

if((lbCurSel 38403) == -1) exitWith {hint localize "STR_D41_WeaponProd_Select"};
_className = lbData[38403,(lbCurSel 38403)]; // Classname Fahrzeug
_vehRefID = lbValue[38403,(lbCurSel 38403)]; //_vehRefID um den Typ des KFZ scheins zu bestimmen
_type = 10;

if(_vehRefID == -1) exitWith {systemChat "Bad Data Filter"; closeDialog 0;};
if(_vehRefID == 0) then {_type = "D41_Fahrzeugschein_Vendura";};
if(_vehRefID == 1) then {_type = "D41_Fahrzeugschein_Subaru";};
if(_vehRefID == 2) then {_type = "D41_Fahrzeugschein_Maserati";};
if(_vehRefID == 3) then {_type = "D41_Fahrzeugschein_MiniCooper";};
if(_vehRefID == 4) then {_type = "D41_Fahrzeugschein_Viper";};
if(_vehRefID == 5) then {_type = "D41_Fahrzeugschein_Cadillac_Esc";};
if(_vehRefID == 6) then {_type = "D41_Fahrzeugschein_LKW";};
if(_vehRefID == 7) then {_type = "D41_Fahrzeugschein_Camaro";};
if(_vehRefID == 8) then {_type = "D41_Fahrzeugschein_SuperBee";};
if(_vehRefID == 9) then {_type = "D41_Fahrzeugschein_Fury_Police";};
if(_vehRefID == 10) exitWith {hint "Something went Wrong!"};

if (_type == "D41_Fahrzeugschein_Fury_Police" && playerside != west) exitWith{};
player removeMagazine _type;
_vehicle = createVehicle [_className, (getMarkerPos "kfz_zulassung_spawn"), [], 0, "CAN_COLLIDE"];
waitUntil {!isNil "_vehicle"}; //Wait?
_vehicle allowDamage false; //Temp disable damage handling..
_vehicle lock 2;
_vehicle setVectorUp (surfaceNormal (getMarkerPos "kfz_zulassung_spawn"));
_vehicle setDir (markerDir "kfz_zulassung_spawn");
_vehicle setPos (getMarkerPos "kfz_zulassung_spawn");
[_vehicle] call life_fnc_clearVehicleAmmo;
[[_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true],"TON_fnc_setObjVar",false,false] call life_fnc_MP;
_vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.

_vehicle allowDamage true;

life_vehicles pushBack _vehicle;
[[getPlayerUID player,playerSide,_vehicle,1],"TON_fnc_keyManagement",false,false] call life_fnc_MP;
[[(getPlayerUID player),playerSide,_vehicle,0],"TON_fnc_vehicleCreate",false,false] call life_fnc_MP;
diag_log format ["::::: Distrikt41 Debug Log #18 - : %1", _vehicle];

[6] call SOCK_FNC_updatePartial;
closeDialog 0; //Exit the menu.
true;





