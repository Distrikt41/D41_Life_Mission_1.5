//::::::::::::  ::::::::::::\\
//	Filename: D41/fn_D41_VehicleProd.sqf
//	Author: Distrikt41 - Dscha - Edit Avka 
//
//	Beschreibung: Verarbeitet Fahrzeugteile aus der "Lagerkiste" heraus.
// Mission.sqm Eintrag:
// this addAction['Fahrzeugteile herstellen',{[this] spawn life_fnc_D41_VehicleProd},'',0,false, false,'','(license_civ_VehProdL) && speed player < 1 && speed player > -1 && !D41_WandeltUm'];
//::::::::::::  ::::::::::::\\


private["_Crate","_Input","_VCCount","_ExitCheck","_ProdAmnt","_KupferNeeded","_AluminiumNeeded","_PlastikNeeded","_GlasNeeded","_D41_Kupfer_Cnt","_D41_Glas_Cnt","_D41_Aluminium_Cnt","_D41_Plastik_Cnt","_fnc_ProcMsg","_VCProd","_Added","_Restart"];

	_Crate = _this select 0;
	D41_WandeltUm = true;
	_Crate setVariable ["Locked",true,true];
	
	sleep (1+random(2));
	_Input = magazineCargo _Crate;
	clearMagazineCargoGlobal _Crate;
	
	if(count(_Input) == 0)exitWith{D41_WandeltUm = false;};
	_VCCount = {_x == "D41_Fahrzeugteile"} count _Input;
	if(_VCCount != 0)exitWith{D41_WandeltUm = false;};
	
	_ExitCheck = 0;
	_ProdAmnt = 0;
	_KupferNeeded = 15;
	_GlasNeeded = 15;
	_AluminiumNeeded = 30;
	_PlastikNeeded = 15;
	_D41_Kupfer_Cnt = {_x == "D41_Kupfer"} count _Input;
	_D41_Glas_Cnt = {_x == "D41_Glas"} count _Input;
	_D41_Aluminium_Cnt = {_x == "D41_Aluminium"} count _Input;
	_D41_Plastik_Cnt = {_x == "D41_Plastik"} count _Input;

	
	_fnc_ProcMsg =
	{
		while{true}do
		{
			sleep 1;
			_VCProd = _VCProd - 1;
			_Crate addMagazineCargoGlobal ["D41_Fahrzeugteile", 2];
			_ProdAmnt = _ProdAmnt + 2;
			if(_VCProd <= 0)exitWith{_D41_Kupfer_Cnt = _D41_Kupfer_Cnt - _KupferNeeded; _D41_Glas_Cnt = _D41_Glas_Cnt - _GlasNeeded; _D41_Aluminium_Cnt = _D41_Aluminium_Cnt - _AluminiumNeeded; _D41_Plastik_Cnt = _D41_Plastik_Cnt - _PlastikNeeded; _Added = true;};
		};
	};
	
	while{true}do
	{
		_ExitCheck = true;
		_Restart = true;
		if(_Restart && _D41_Kupfer_Cnt >= 15 && _D41_Glas_Cnt >= 15 && _D41_Aluminium_Cnt >= 30 && _D41_Plastik_Cnt >= 15)	then{_KupferNeeded = 15;	_GlasNeeded = 15; _AluminiumNeeded = 30; _PlastikNeeded = 15;  _VCProd = 1; _Added = false; [] call _fnc_ProcMsg; _ExitCheck = false; _Restart = false; waitUntil{_Added};};
		if(_ExitCheck)exitWith{hintsilent format [localize "STR_D41_VehpartsFertigVerarbeitet", _ProdAmnt, (["D41_Fahrzeugteile"] call life_fnc_D41_GetMagName)];};
	};
	
	if(_D41_Kupfer_Cnt > 0)then		{_Crate addMagazineCargoGlobal ["D41_Kupfer", _D41_Kupfer_Cnt];};
	if(_D41_Glas_Cnt > 0)then		{_Crate addMagazineCargoGlobal ["D41_Glas", _D41_Glas_Cnt];};
	if(_D41_Aluminium_Cnt > 0)then	{_Crate addMagazineCargoGlobal ["D41_Aluminium", _D41_Aluminium_Cnt];};
	if(_D41_Plastik_Cnt > 0)then		{_Crate addMagazineCargoGlobal ["D41_Plastik", _D41_Plastik_Cnt];};
	
	D41_WandeltUm = false;
	_Crate setVariable ["Locked",false,true];