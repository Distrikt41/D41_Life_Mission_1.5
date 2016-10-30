/*
	File: fn_VehProdMenu.sqf
	Author: Bryan "Tonic" Boardwine
	Edit: Distrikt41 - Dscha
	Description:
	Erzeugt Waffen Prod Auswahlmenü.
*/
private["_config","_itemInfo","_itemList"];
uiNamespace setVariable ["Vehicle_Shop",_this select 3];

disableSerialization;
if(!(createDialog "life_vehicle_Prod")) exitwith {};

_config = [_this select 3] call life_fnc_D41_VehProdCfg;
if(typeName _config == "STRING") exitWith {hint localize "STR_Shop_Nokarma";closeDialog 0;};

ctrlSetText[38401,_config select 0];

_filters = ((findDisplay 138500) displayCtrl 38402);
lbClear _filters;

_filters lbAdd localize "STR_D41_Shop_inv";
//_filters lbAdd "Dein Inventar"; //KEIN Verkauf möglich

_filters lbSetCurSel 0;