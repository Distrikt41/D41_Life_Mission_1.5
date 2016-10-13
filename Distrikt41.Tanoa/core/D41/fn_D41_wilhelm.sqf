//::::::::::::  ::::::::::::\\
//	Filename: D41/fn_D41_wilhelm.sqf
//	Author: Distrikt41 - Dscha
//  Edited: Insane
//
//	Beschreibung: Ja.
//::::::::::::  ::::::::::::\\
params [
    ["_unit", player, [objNull]]
];

if (_unit != player) exitWith { false };
if !(alive player) exitWith { false };

// sound + info
hint localize "STR_D41_FingerAb";
playSound3D ["D41\D41_S\Sounds\AlifeSounds\wilhelm.ogg", player, false, getPosASL player, 2, 1, 50];

// effekt
["HitHands", 0.1] call life_fnc_D41_MedSysAddPartDamage;


true 