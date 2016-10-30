/*
	File: fn_D41_VehColorMenu.sqf
	Author: Bryan "Tonic" Boardwine
	Edit: Distrikt41 - Dscha
	Description:
	Erzeugt Waffen Prod Auswahlmenü.
	
	this addAction[""Fahrzeug X Zulassen"",[] call life_fnc_VehColorMenu,[""VehColor"",0],0,false,false,"""",((license_civ_driver) or (license_civ_truck) or (license_civ_rebel)) && "D41_Fahrzeugschein_Camaro" in magazines Player];
	
*/
diag_log format ["::::: Distrikt41 Debug Log #1 - : %1", _this];
diag_log format ["::::: Distrikt41 Debug Log #2 - : %1", _this select 3];
diag_log format ["::::: Distrikt41 Debug Log #3 - : %1", _this select 3 select 0];
private["_config","_vehRefID"];
uiNamespace setVariable ["Vehicle_Color",_this select 3 select 0];
//_vehRefID = param[_this select 3 select 1,-1,[0]];
_vehRefID = _this select 3 select 1;
diag_log format ["::::: Distrikt41 Debug Log #4 - : %1", _vehRefID];
disableSerialization;
if(!(createDialog "life_farb_wahl")) exitwith {hint "yep fuck it"};
diag_log format ["::::: Distrikt41 Debug Log #5"];
_config = [_vehRefID] call life_fnc_D41_VehColorCfg;
diag_log format ["::::: Distrikt41 Debug Log #6 - : %1", _config];
if(typeName _config == "STRING") exitWith {hint "Yep this shit again"; closeDialog 0;};
diag_log format ["::::: Distrikt41 Debug Log #7"];

ctrlSetText[38401,_config select 0];
_itemList = ((findDisplay 138600) displayCtrl 38403);
lbClear _itemList;
	{
		_itemInfo = [_x select 0] call life_fnc_fetchCfgDetails;
		_itemList lbAdd format["%1",if(isNil {_x select 1}) then {_itemInfo select 1} else {_x select 1}];
		_itemList lbSetData[(lbSize _itemList)-1,_itemInfo select 0];
		_itemList lbSetPicture[(lbSize _itemList)-1,_itemInfo select 2];
		_itemList lbSetValue[(lbSize _itemList)-1,_x select 2];
	} foreach (_config select 1);
diag_log format ["::::: Distrikt41 Debug Log #8"];
