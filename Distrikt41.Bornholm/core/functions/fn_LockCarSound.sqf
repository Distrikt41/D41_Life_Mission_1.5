/*
	File: fn_LockCarSound.sqf
*/
private["_source"];
_source = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _source) exitWith {};
_source say3D "LockCarSound";
//playSound3D ["D41\D41_S\Sounds\AlifeSounds\LockCarSound.ogg", _source, false, [0,0,0], 1, 1, 200];