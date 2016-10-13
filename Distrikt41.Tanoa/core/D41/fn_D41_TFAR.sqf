/*
 *  @author:    Insane
 *  @project:   Distrikt41
 *  @params:    -
 *  @return:    -
 *  @example:   -
 */ 
 
// Event, sobald Radio umgewandelt wird, um bug-abhören zu umgehen
if (playerSide != west) then {
    ["D41_TFAR_BugUserBlock", 
    "OnRadiosReceived", 
    {       
        params ["_unit", "_radioArray"];
        if !(_unit isEqualTo player) exitWith {};
        
        {
            // nur cop handy
            if ( (_x select [0, 13]) == "D41_Handy_cop" ) then {
                for "_i" from 0 to 7 do {
                    [_x, _i] call TFAR_fnc_setSwChannel;
                    [_x, 111.1] call TFAR_fnc_setSwFrequency;
                };  
            };
            nil 
        } count _radioArray;
    }, player] call TFAR_fnc_addEventHandler;
};


// Forced Usage
/*
[{    
    private _configAdminArray = [];
    private _configTFARChannel = ["Distrikt41_Ingame", ":: Support Channel - HIER WARTEN", ":: Support Channel! Wird abgefertigt ::", "D41_Ingame","@Oxygen/Scripting","Was anderes machen"];
    private _configServerName = ":: Willkommen im Offiziellen Distrikt 41 TS3 ::";    
    private _playerIsAdmin = ((serverCommandAvailable "#kick") || ((getPlayerUID player) in _configAdminArray) || ((call life_adminlevel) > 0));
    
    if (!_playerIsAdmin && (((call TFAR_fnc_getTeamSpeakServerName) != _configServerName) || !((call TFAR_fnc_getTeamSpeakChannelName) in _configTFARChannel) || !(call TFAR_fnc_isTeamSpeakPluginEnabled))) then {
        cutText ["Falscher Channel/Server oder Plugin Disabled", "BLACK FADED"];           
    } else {
        cutText ["", "PLAIN"];  
    };    
}, 3, []] call CBA_fnc_addPerFrameHandler;*/