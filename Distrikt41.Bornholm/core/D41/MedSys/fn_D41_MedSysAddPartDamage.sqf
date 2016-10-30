/*
 *  @author:    Insane
 *  @project:   Distrikt41
 *  @params:    0   STRING: part (default "")
 *              1   SCALAR: damage (default 0)
 *              2   SCALAR: (optional) max count random hits (default 0) >> normaler modus bei 0  
 *  @return:    -
 *  @example:   a) ["HitHead", 0.3] call life_fnc_D41_MedSysAddPartDamage;        >> gibt hithead 0.3 schadenu 
 *              b) ["", 0.2, 2] call life_fnc_D41_MedSysAddPartDamage;            >> zufaellig max X (random) parthits mit gewuenschtem schaden
 */
params [
    ["_thisPart", "", [""]],
    ["_thisDamage", 0, [0]],
    ["_randomHits", 0, [0]]
];


// verfuegbar?
if ((_thisPart != "") && !(_thisPart in D41_MedSys_HitZones)) exitWith { diag_log "D41_addPartDamageToPlayer: wrong part parameter (#1)"; false };

if (_randomHits == 0) then {
    // normaler modus >> setDamage variante fuer ein part
    player setHitPointDamage [_thisPart, _thisDamage];
} else {
    // zufallshits fuer den dmg evh >> kein setDamage!
    private _tmpHitZones = [];
    _tmpHitZones append D41_MedSys_HitZones;
    _randomHits = round(random(_randomHits)) max 1;
    _thisDamage = ((count(_tmpHitZones) * _thisDamage) / _randomHits);    
    for "_i" from 1 to _randomHits do {
        private _newHit = _tmpHitZones call BIS_fnc_selectRandom;   // @UPDATE 1.55 (DEV Branch) >> selectRandom _tmpHitZones;
        _tmpHitZones deleteAt (_tmpHitZones find _newHit);
        player setHitPointDamage [_newHit, _thisDamage];
    };
};

// update player damage 
[] call life_fnc_D41_MedSysUpdateDamage;


true 