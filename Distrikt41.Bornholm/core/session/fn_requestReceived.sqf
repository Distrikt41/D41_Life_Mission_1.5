#include <macro.h>
/*
    File: fn_requestReceived.sqf
    Author: Bryan "Tonic" Boardwine
    Edit: Insane
    
    Description:
    Called by the server saying that we have a response so let's 
    sort through the information, validate it and if all valid 
    set the client up.
*/
{
    if (!isNil "_x") then {
        diag_log format ["::::: REQUEST RECEIVED: PARAM %1 = %2", _forEachIndex, _x];
    };
} forEach _this; //DEBUG

if (life_session_completed) exitWith { false }; //Why did this get executed when the client already initialized? Fucking arma...

0 cutText [localize "STR_Session_Received","BLACK FADED"];
0 cutFadeOut 9999999;

//Lets make sure some vars are not set before hand.. If they are get rid of them, hopefully the engine purges past variables but meh who cares.
if (!isServer && (!isNil "life_adminlevel" OR !isNil "life_coplevel")) exitWith {
    [[profileName,getPlayerUID player,"VariablesAlreadySet"],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
    [[profileName,format["Variables set before client initialization...\nlife_adminlevel: %1\nlife_coplevel: %2",life_adminlevel,life_coplevel]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
    sleep 0.9;
    ["SpyGlass",false,false] execVM "\a3\functions_f\Misc\fn_endMission.sqf";
    false
};

params [
    "_param0",    "_param1",    "_param2",    "_param3",    "_param4",    "_param5",
    "_param6",    "_param7",    "_param8",    "_param9",    "_param10",    "_param11",
    "_param12",    "_param13",    "_param14",    "_param15",    "_param16",    "_param17",
    "_param18",    "_param19",    "_param20",    "_param21",    "_param22",    "_param23",
    "_param24",    "_param25",    "_param26",    "_param27",    "_param28",    "_param29",
    "_param30",    "_param31",    "_param32",    "_param33",    "_param34",    "_param35",
    "_param36",     "_param37",     "_param38",     "_param39",     "_param40",     "_param41",
    "_param42",     "_param43",     "_param44",     "_param45",     "_param46",     "_param47",
    "_param48",     "_param49",     "_param50"
];


//Parse basic player information.
D41_Geld = parseNumber _param2; //0 
D41_atmGeld = parseNumber _param3; //15000
__CONST__(life_adminlevel,_param4); //0

//Loop through licenses
if !(_param6 isEqualTo []) then {
    { missionNamespace setVariable [(_x select 0),(_x select 1)]; nil } count _param6;
};

life_gear = _param8; //[]
[] call life_fnc_loadGear;

//Parse side specific information.
switch (playerSide) do {
    case west: {
        __CONST__(life_coplevel, _param7); 
        __CONST__(life_medicLevel, 0);
        
        life_blacklisted = _param9;
        life_skillReperatur = 0;
        
        player setVariable ["D41_Rank", _param7, true];
        if (!(license_cop_gangfirma)) then {player setVariable ["D41_IsCop", true, true];};
		if (license_cop_gangfirma) then {player setVariable ["D41_IsSec", true, true];};
    };
    
    case civilian: {
        __CONST__(life_coplevel, 0);
        __CONST__(life_medicLevel, 0);
        
        life_gangData = _param11;
        D41_GangInitDone = false;
        
        if (life_gangData isEqualTo []) then {
            license_civ_base01 = false; 
            license_civ_base02 = false; 
            license_civ_base03 = false; 
            license_civ_base04 = false; 
            license_civ_base05 = false; 
            license_civ_base06 = false; 
			license_civ_base07 = false; 
            D41_GangInitDone = true; 
        } else {
            [] spawn life_fnc_initGang;
        };        
        
        life_is_arrested = _param7;
        life_houses = _param10;
        diag_log format [":::::::::: RequestReceived: life_houses: %1", life_houses];
        {
            private "_house";
            _house = [];
            _house = nearestObjects [(_x select 0), D41_HausArray, 20];
            if (isNil "_house") exitWith { systemChat "FEHLER! BEIM ADMIN MELDEN! HOUSING SYSTEM RequestReceived! - IsNil"; false };
            if (_house isEqualTo []) exitWith{ systemChat "FEHLER! BEIM ADMIN MELDEN! HOUSING SYSTEM RequestReceived!"; false };
            _house = _house select 0;
            diag_log format [":::::::::: RequestReceived: _house: %1", _house];
            diag_log format [":::::::::: RequestReceived: getPosATL _house: %1", getPosATL _house];
            life_vehicles pushBack _house;
            nil 
        } count life_houses;
        
        D41_LeftGang = ((parseNumber _param50) == 1);
        D41_DiedTimer =  parseNumber _param13;
        [] spawn life_fnc_initHouses;
        life_D41_Karma =  parseNumber _param14;
        life_skillApple =  parseNumber _param15;
        life_skillPeach =  parseNumber _param16;
        life_skillEhemalsRock = parseNumber _param17;
        life_skillSalt =  parseNumber _param18;
        life_skillSand =  parseNumber _param19;
        life_skillIronore =  parseNumber _param20;
        life_skillCopperore =  parseNumber _param21;
        life_skillDiamond =  parseNumber _param22;
        life_skillCannabis =  parseNumber _param23;
        life_skillCocaine =  parseNumber _param24;
        life_skillHeroinu =  parseNumber _param25;
        life_skillOilu =  parseNumber _param26;
        life_skillRawmeat =  parseNumber _param27;
        life_skillcoalu =  parseNumber _param28;
        life_skillBruchstein =  parseNumber _param29;
        life_skillTon =  parseNumber _param30;
        life_skillKrabben =  parseNumber _param31;
        life_skillFischen =  parseNumber _param32;
        life_skillReperatur =  parseNumber _param33;
        life_skillMeth = parseNumber _param34;
		life_skillbauxit = parseNumber _param35;
        D41_SpawnInfos = _param36;
    };
    
    case independent: {
        __CONST__(life_medicLevel, _param7);
        __CONST__(life_coplevel, 0);
        
        life_skillReperatur = 0;
        
        player setVariable ["D41_Rank", _param7, true];
        player setVariable ["D41_IsURD", true, true];        
    };
};

if !(_param12 isEqualTo []) then {
    { life_vehicles pushBack _x; nil } count _param12;
};

life_session_completed = true;


true 