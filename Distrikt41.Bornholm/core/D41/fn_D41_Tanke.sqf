/*
 *  @author:    Dscha
 *              Insane
 *  @project:   Distrikt41
 *  @params:    ?
 *  @return:    -
 *  @example:   -
 */
private _vehicle = nearestObjects[getPos player, ["Car", "Air"], 10];
if (_vehicle isEqualTo []) exitWith { false };
if (D41_Tankt) exitWith { hint localize "STR_D41_Fuel_hands"; false };

_vehicle = _vehicle select 0;
private _vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
D41_Tanken_Fuel = fuel _vehicle;
// letzte checks 
if !(isNull (driver _vehicle)) exitWith { hint "Kommt echt doof rueber, wenn der Fahrer beim Tanken im Auto sitzt. Besonder auffaellig in der Kamera da oben.."; false };
if (D41_Tanken_Fuel == 1) exitWith { hint "Fahrzeug muss gar nicht betankt werden"; false };


if ([format [localize "STR_D41_Ask_Refuel", _vehicleName, D41_BenzinPreis], localize "STR_D41_Refuel", localize "STR_Global_Yes", localize "STR_Global_No"] call BIS_fnc_guiMessage) then {
    D41_Tankt = true;
    
    private _fuelMod = 0;
    private _tick = 0.25;
    private _maxFuel = getNumber(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "fuelCapacity") max 0;
    if (_vehicle isKindOf "Car") then { _fuelMod = ((1 / (_maxFuel / 100)) / 4000); };
    if (_vehicle isKindOf "Air") then { _fuelMod = ((1 / (_maxFuel / 100)) / 20); };
    private _time = ( ((1 - D41_Tanken_Fuel) / _fuelMod) / (1 / _tick) );
    
    [_time, 
    localize "STR_D41_refueling",   // titel
    {   // condition block mit funktion / pro tick
        params ["_vehicle", "_fuelMod"];
        
        if ((fuel _vehicle) == 1) then { 
            D41_UIProgressBarManualSuccess = true; 
            true 
        } else {        
            life_action_inUse = true;
            D41_atmGeld = D41_atmGeld - D41_BenzinPreis;
            D41_Tanken_Fuel = D41_Tanken_Fuel + _fuelMod;
            _vehicle setFuel D41_Tanken_Fuel;
            
            (((player distance _vehicle) <= 5) && (vehicle player == player))
        };
    }, 
    [_vehicle, _fuelMod, _vehicleName], 
    {
        (_this select 0) params ["_vehicle", "", "_vehicleName"];
        D41_Tankt = false;
        life_action_inUse = false;
        [[_vehicle, D41_Tanken_Fuel], "life_fnc_setFuel", _vehicle] call life_fnc_mp;       //[_vehicle, D41_Tanken_Fuel] remoteExecCall ["setFuel", _vehicle]; warum geht dat net? Oo
        D41_Tanken_Fuel = 0;
        titleText [format [localize "STR_D41_Refueled", _vehicleName], "PLAIN"]; 
        5 cutText ["","PLAIN"];
    },
    {
        (_this select 0) params ["_vehicle"];
        D41_Tankt = false;
        life_action_inUse = false;
        [[_vehicle, D41_Tanken_Fuel], "life_fnc_setFuel", _vehicle] call life_fnc_mp;
        D41_Tanken_Fuel = 0;
        titleText [localize "STR_D41_Crazy_Fuel", "PLAIN"]; 
        5 cutText ["","PLAIN"];
    },
    _tick
    ] call life_fnc_D41_UIDisplayProgressBarAndExecute;
};