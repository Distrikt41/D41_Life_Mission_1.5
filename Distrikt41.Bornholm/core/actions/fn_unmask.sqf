/*
    File: fn_unmask.sqf
    Author: Avka
    Description:
    unmask
*/

private["_target"];
_target = _this select 0;



if((headgear _target) in D41_headgear_Array) then {removeHeadgear _target;};
if((goggles _target) in D41_goggles_Array) then {removeGoggles _target;};
if((uniform _target) in D41_uniform_Array) then {removeUniform _target;};
if((hmd _target) in D41_hmd_Array) then {_nvg = hmd _target;_target removeItem _nvg;};
if((headgear _target) in ["mgsr_headbag"]) then {removeHeadgear _target;};