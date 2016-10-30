
//::::::::::::  ::::::::::::\\
//	Filename: D41/fn_D41_PutItem.sqf
//	Author: Distrikt41 - Dscha
//
//	Beschreibung: Bearbeitet das automatische einlagern in ein Fahrzeug?
//::::::::::::  ::::::::::::\\

private["_Item","_Veh","_Player","_Cnt"];

_Item = "";
_Player = player;
_Veh = cursorTarget;
_VehType = typeOf _Veh;

if((lbCurSel 633) != -1)then { _Item = format ["%1",lbData [633, (lbCurSel 633)]];};
if((lbCurSel 638) != -1)then { _Item = format ["%1",lbData [638, (lbCurSel 638)]];};
if((lbCurSel 619) != -1)then { _Item = format ["%1",lbData [619, (lbCurSel 619)]];};

if((player distance _Veh) > 7)exitWith {hint localize "STR_D41_Monkey_Arms";};
if(_Item == "") exitWith {hint localize "STR_D41_NoValidItem";};

if(_Veh isKindOf "D41_Trailer_A")exitWith{hint localize "STR_D41_AnaengerKeinEinladen"};
_AllowedList = ["D41_Saftpresse_F","D41_Verarbeiterkiste_Fisch","D41_Box_IND_Grenades_F","D41_supplyCrate_F","D41_LagerhausContainer_Blue","D41_CargoContainer_Orange","D41_Basemiete_Hero","D41_Basemiete_Neutral","D41_Basemiete_Rebellen"];
if(!((_Veh isKindOf "Car") || (_Veh isKindOf "Air") || (_Veh isKindOf "Ship") || (typeOf _Veh in _AllowedList))) exitWith {hint "Land in Sicht!!\n(Kein Fahrzeug in der Mitte des Bildschirms)"};

if(	(!(_Item in D41_TanklasterItems) && (_VehType in D41_TanklasterListe) )	&& !(typeOf _Veh in _AllowedList)	)exitWith { hint localize "STR_D41_AutoLoadKeinEinladen_NichtTankItem_in_Tanker"; };
if(	((_Item in D41_TanklasterItems) && !(_VehType in D41_TanklasterListe) )	&& !(typeOf _Veh in _AllowedList)	)exitWith { hint localize "STR_D41_AutoLoadKeinEinladen_TankItem_in_NichtTanker"; };

if (D41_LagertEin == 1) exitWith {};
D41_LagertEin = 1;

if (_Item != "") then {
	// disable input 
    disableUserInput true;
    
    // vars 
    private _itemCount = { (_x == _Item) } count (magazines player);
    private _counter = 0;
    
    // remove items 
    //for "_i" from 1 to _itemCount do { player removeMagazines _item; };
    player removeMagazines _item;
    
	while {true} do {
		if (speed player > 1) exitWith {
            D41_LagertEin = 0; 
            hint localize "STR_D41_Look_Trunk";
        };
		if (!(_Veh canAdd _Item)) exitWith {
            D41_LagertEin = 0; 
            hint localize "STR_D41_Car_Full";
        };
		if (_counter >= _itemCount) exitWith {
            D41_LagertEin = 0; 
            hint localize "STR_D41_All_packed";
        };
		//player removeMagazine _Item;
		_Veh addMagazineCargoGlobal [_Item, 1];
        _counter = _counter + 1;
		sleep 0.1;
	};
    
    // rest wieder geben 
    private _gibmirwieder = _itemCount - _counter;
    if (_gibmirwieder > 0) then {  player addMagazines [_Item, _gibmirwieder]; };  
    
    // enable user input 
	disableUserInput false;
	D41_LagertEin = 0;
};