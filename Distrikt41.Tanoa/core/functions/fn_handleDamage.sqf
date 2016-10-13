/*
 *  @author:    Insane
 *  @project:   D41-Altis
 */
//#define DEBUG

params ["_unit","_part","_damage","_source","_projectile","_hitPartIndex"];

if !(alive _unit) exitWith {
    #ifdef DEBUG
        diag_log format ["fn_handleDamage: unit is dead (%1) >> Position: %2", _this, (getPos _unit)];
    #endif    
    false 
};

/*if (isNull _source) then {
    // quelle: keine unit 
    //_damage = if (_unit != (vehicle _unit)) then { (_damage * 0.6) } else { _damage };   // im fahrzeug >> z.b. unfall

    // dmg zufaellig verteilen, damits geheilt werden kann
    //["", _damage, 3] call life_fnc_D41_MedSysAddPartDamage;
} else {*/
if !(isNull _source) then {
    // quelle: unit
    if (_source != _unit) then {
        // Tazer- und Gummigeschosse
        if ((_projectile in D41_TazerAmmo) || (_projectile in D41_RubberBulletAmmo)) then {
            //_damage = 0;
            switch (true) do {
                // Tazer
                case (_projectile in D41_TazerAmmo): {                    
                    if (!life_istazed && ((_unit distance _source) < 50) && !(_unit getVariable ["restrained", false]) && !(_unit != vehicle _unit)) then {
                        [_unit, _source] spawn life_fnc_tazed;
                    };
                };                
                // Gummigeschoss
                case (_projectile in D41_RubberBulletAmmo): {                    
                    if (!life_istazed && ((_unit distance _source) < 200) && !(_unit getVariable ["restrained", false]) && !(_unit != vehicle _unit)) then {
                        [_unit, _source] spawn life_fnc_tazed;
                    };
                };
            };
        };        
    };
};

#ifdef DEBUG
    diag_log format ["fn_handleDamage: %1 >> Damage: %2 >> Position: %3", _this, _damage, (getPos _unit)];
#endif

[] call life_fnc_hudUpdate;
_damage 