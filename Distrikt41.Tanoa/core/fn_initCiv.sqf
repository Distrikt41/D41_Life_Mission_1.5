/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the civilian.
*/


private["_spawnPos"];
systemchat localize "STR_D41_WartenAufGang";
if(count life_gangData == 0) then { D41_GangInitDone = true; };
waitUntil{D41_GangInitDone};
systemchat localize "STR_D41_WartenAufGangFertig";
//civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_bo_Panelak2","Land_bo_Panelak","Land_bo_Houseb_Tenement"],250];
//civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_bo_Panelak2","Land_bo_Panelak","Land_bo_Houseb_Tenement"],250];
//civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_bo_Panelak2","Land_bo_Panelak","Land_bo_Houseb_Tenement"],250];
//civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_bo_Panelak2","Land_bo_Panelak","Land_bo_Houseb_Tenement"],250];
civ_spawn_1 = nearestObjects[getMarkerPos "civ_spawn_1", ["Land_FuelStation_01_workshop_F","Land_FuelStation_02_workshop_F","Land_Slum_02_F","Land_Shop_Town_03_F","Land_Shop_Town_01_F","Land_House_Small_01_F","Land_Shop_City_06_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos "civ_spawn_2", ["Land_FuelStation_01_workshop_F","Land_FuelStation_02_workshop_F","Land_Slum_02_F","Land_Shop_Town_03_F","Land_Shop_Town_01_F","Land_House_Small_01_F","Land_Shop_City_06_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos "civ_spawn_3", ["Land_FuelStation_01_workshop_F","Land_FuelStation_02_workshop_F","Land_Slum_02_F","Land_Shop_Town_03_F","Land_Shop_Town_01_F","Land_House_Small_01_F","Land_Shop_City_06_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos "civ_spawn_4", ["Land_FuelStation_01_workshop_F","Land_FuelStation_02_workshop_F","Land_Slum_02_F","Land_Shop_Town_03_F","Land_Shop_Town_01_F","Land_House_Small_01_F","Land_Shop_City_06_F"],250];
waitUntil {!(isNull (findDisplay 46))};
player addRating 9999999;

if(isNil "D41_SpawnInfos")then{D41_SpawnInfos = [[0,0,0],[0,0,0,0]];};
_SelectDisabled = false;
_Cnt = 0;
{
	_Cnt = _Cnt + _x;
}forEach (D41_SpawnInfos select 0);
if(_Cnt != 0)then{_SelectDisabled = true};

if(((D41_SpawnInfos select 0) distance (getMarkerPos "SAFEZONE! NICHT BETRETEN!")) < 75)then{_SelectDisabled = false};
//Wieder jeglichen Input erlauben.
disableUserInput false;
//**

if(_SelectDisabled)exitWith
{
	if(life_is_arrested) exitWith
	{
		life_is_arrested = false;
		[player,true] spawn life_fnc_jail;
	};
	//titleText["","BLACK"];
	_Health = (D41_SpawnInfos select 1);
	["HitHead", (_Health select 0)] spawn life_fnc_D41_TeilHeilung; sleep 0.1;
	["HitHands", (_Health select 1)] spawn life_fnc_D41_TeilHeilung; sleep 0.1;
	["HitBody", (_Health select 2)] spawn life_fnc_D41_TeilHeilung; sleep 0.1;
	["HitLegs", (_Health select 3)] spawn life_fnc_D41_TeilHeilung;
	[] spawn {player allowDamage false; uisleep 10; player allowDamage true;};
	player setPos (D41_SpawnInfos select 0);
	sleep 1;
	titleText["","BLACK IN"];
	_Text = localize "STR_D41_LetztePosition";
	cutText [_Text,"PLAIN"];
};

if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};

// TFAR
call life_fnc_D41_TFAR;