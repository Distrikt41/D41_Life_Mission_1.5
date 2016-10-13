enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Distrikt41 Life V1.4";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "core\D41\fn_D41_Wetter.sqf";
[] spawn life_fnc_D41_Wetter;

if (!isServer)then
{
	[] execVM "core\D41\fn_D41_sysM.sqf";
};
enableEnvironment true;
setTerrainGrid 45;
StartProgress = true;

//Haustypliste//
D41_HausArray = ["Land_i_Garage_V2_F"];

// Zone Menu
D41_Cop_Zones = [];

// Eventhandler Reset - Infos von: http://feedback.arma3.com/view.php?id=24841
{
    _event = _x;
    _namespaceId = "BIS_stackedEventHandlers_";
    _namespaceEvent = _namespaceId + _event;
    _data = missionNameSpace getVariable [_namespaceEvent, []];
    {
        private "_itemId";
        _itemId	= [_x, 0, "", [""]] call BIS_fnc_param;
        [_itemId,_event] call bis_fnc_removeStackedEventHandler;
    } forEach _data;
} forEach ["oneachframe", "onpreloadstarted", "onpreloadfinished", "onmapsingleclick", "onplayerconnected", "onplayerdisconnected"];

CopRoenne = nearestObject [[1277.33,7709.33,-0.0113144],"Land_Offices_01_V1_F"];
fed_bank_building = nearestObject [[1516.3312,14348.151,-0.293976],"Land_Offices_01_V1_F"];
fed_bank_building allowdamage false;