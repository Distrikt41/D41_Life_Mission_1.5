/*
	File: fn_deathScreen.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Handles stuff being displayed on the death screen while
	it is currently active.
*/
//#define DEBUG
if !(params [
	["_unit", objNull, [objNull]]
]) exitWith {
	#ifdef DEBUG
	diag_log format text ["deathScreen - bad call, params: %1", _this];
	#endif
};

disableSerialization;

private _controlMedicsOnline = ((findDisplay 7300) displayCtrl 7304);
private _controlMedicsNear = ((findDisplay 7300) displayCtrl 7305);

waitUntil {
	private _indiUnits = [];
	private _text = "Nein";

	private _medicCount = {
		if (side _x isEqualTo independent) then {
			_indiUnits pushBack [(_unit distance _x), _x];
			true
		} else {
			false
		};
	} count playableUnits;

	if !(_indiUnits isEqualTo []) then {
		_indiUnits sort true;	// nach entfernung asc sortiert
		private _nearestMedic = _indiUnits select 0;
		private _nearestMedic_Unit = (_indiUnits select 0) select 1;
		private _nearestMedic_Distance = (_indiUnits select 0) select 0;
		if (_nearestMedic_Distance <= 1000) then {
			_text = format ["Ja! (%1 ist %2 Meter von dir entfernt)", (name _nearestMedic_Unit), round(_nearestMedic_Distance)];
		};
	};

	_controlMedicsOnline ctrlSetText format [localize "STR_Medic_Online", _medicCount];
	_controlMedicsNear ctrlSetText format [localize "STR_Medic_Near", _text];

	// request button
	((findDisplay 7300) displayCtrl 7303) ctrlEnable (!D41_MedReqDone);

	uiSleep 1;
	(isNull (findDisplay 7300))
}; 
