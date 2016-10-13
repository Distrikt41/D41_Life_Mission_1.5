/*
 *  @author:    Insane
 *  @project:   Distrikt41
 *  @params:    -  
 *  @return:    -
 *  @example:   [] call life_fnc_D41_MedSysUpdateDamage;
 */
private _damageSum = 0;


private _hitZonesSum = {
    _damageSum = ((player getHitPointDamage _x) min 1) + _damageSum;
    true 
} count D41_MedSys_HitZones;

player setDamage ((_damageSum / _hitZonesSum) min 0.89);    // davon sollte man nicht sterben, das ueberlassen wir mal arma.. 89% ist absicht, ansonsten fuckt man bei ner kleinigkeit ab


true 