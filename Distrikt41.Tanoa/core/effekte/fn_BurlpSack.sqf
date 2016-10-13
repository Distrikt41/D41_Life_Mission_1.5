/*
    File: fn_BurlpSack.sqf
    Author: Avka
    Description:
    BurlpSack Effekt.
*/

//Inventar schlieﬂen
closeDialog 0;
private["_Sack"];
_Sack = _this select 0;
if(!(createDialog "BurlpSack")) exitwith {};
noesckey = (findDisplay 8888) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"]; //ESC ausgeschalten
removeHeadgear player;
player addHeadgear _Sack;
disableUserInput true;
waituntil {!(headgear player in ["mgsr_headbag"]) OR !(player getVariable ["restrained",false])};

disableUserInput false;
removeHeadgear player;
(findDisplay 8888) displayRemoveEventHandler ["KeyDown", noesckey]; //ESC eingeschalten
closeDialog 0;



