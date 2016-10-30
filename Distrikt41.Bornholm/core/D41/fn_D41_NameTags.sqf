/*
 *  @author:    Insane
 *  @project:   D41
 */
#define ICON_ID 78000
#define SCALE 0.8
#define LAYER 500
#define DISTANCE_VIEW 10

if !(params [
    ["_enable", true, [true]]
]) exitWith { diag_log "nameTags: wrong params"; false };
disableSerialization;


// kill it? kill it? KILL IT WITH FIRE!!
if !(isNil "D41_NameTagHandler") then { 
    removeMissionEventHandler ["Draw3D", D41_NameTagHandler]; 
    LAYER cutText ["","PLAIN"];
};

// soll eig nur Draw3D deaktivieren, also hier gleich mal aussteigen
if !(_enable) exitWith { true };

// aktivieren
private _ui = uiNamespace getVariable ["Life_HUD_nameTags", displayNull];
if(isNull _ui) then {
    LAYER cutRsc ["Life_HUD_nameTags","PLAIN"];    
};

D41_NameTagHandler = addMissionEventHandler ["Draw3D", { 
    private _ui = uiNamespace getVariable ["Life_HUD_nameTags", displayNull];

    {
        private _idc = _ui displayCtrl (ICON_ID + _forEachIndex);
       
        if (!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}} && !visibleMap) then {
            private _name = "<t color='#000000'>Maskierte Person</t>";
            private _secondLine = "";
            private _position = call {
                if (typeOf _x == "Land_Pallet_MilBoxes_F") exitWith { [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5] };
                if (typeOf _x == "Land_Sink_F") exitWith { [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2] };
                [visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2) + 0.5]
            };
            private _screenPosition = worldToScreen _position;
            private _distance = _position distance player;

            if ((_distance < DISTANCE_VIEW) && !(_screenPosition isEqualTo [])) then {
                if !(
                    ((headgear _x) in D41_headgear_Array) ||
                    ((goggles _x) in D41_goggles_Array) ||
                    ((uniform _x) in D41_uniform_Array) ||
                    ((hmd _x) in D41_hmd_Array)
                ) then {
                    _name = _x getVariable "realname";
                    //_nameColor = if ((_x in (units grpPlayer)) && ((side _x) == civilian)) then {"#00FF00"} else {"#f0f0f0"}; // todo: haut iwas net hin
                    _secondLine = call {
                        if ((side _x) == civilian) then {
                            // GANG
                            private _gangName = (group _x) getVariable "gang_name";
                            if !(isNil "_gangName") exitWith { _gangName };
                            ""
                        } else {
                            // Staatsdienste
                            if (_x getVariable ["D41_IsCop", false]) exitWith { (D41_Ranks_Cop select ((_x getVariable ["D41_Rank", 0]))) };
                            if (_x getVariable ["D41_IsURD", false]) exitWith { (D41_Ranks_URD select ((_x getVariable ["D41_Rank", 0]))) };
							if (_x getVariable ["D41_IsSec", false]) exitWith { (D41_Ranks_Sec select ((_x getVariable ["D41_Rank", 0]))) };
                            "error"
                        };
                    };
                };

                _idc ctrlSetStructuredText (parseText format ["%1<br/><t size='1.1' color='#B6B6B6'>%2</t>", _name, _secondLine]);
                _idc ctrlSetPosition [_screenPosition select 0, _screenPosition select 1, 0.4, 0.65];
                _idc ctrlSetScale SCALE;    // todo: abhaengig von entfernung skaliert
                _idc ctrlSetFade 0;
                _idc ctrlCommit 0;
                _idc ctrlShow true;
            } else {
                _idc ctrlShow false;
            };
        } else {
            _idc ctrlShow false;
        };
    } forEach ((nearestObjects [(visiblePosition player), ["Man", "Land_Pallet_MilBoxes_F", "Land_Sink_F"], DISTANCE_VIEW]) - [player]);
}];


true 