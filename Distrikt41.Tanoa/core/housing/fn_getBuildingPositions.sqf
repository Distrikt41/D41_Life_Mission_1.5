//::::::::::::  ::::::::::::\\
//	Filename: core/housing/fn_getBuildingPositions.sqf
//	Author: Distrikt41 - Dscha
//
//	Beschreibung: Setzt Häuserkisten auf vor-definierte Positionen, innerhalb des Hauses. FORMAT: modelToWorld Koordinaten - [x,y,z,Azimut]
//	Description: Sets the Crates to pre-defined positions inside of a house. FORMAT: modelToWorld Coordinates - [x,y,z,Azimut]
//::::::::::::  ::::::::::::\\

private["_building","_arr","_restricted","_exitLoop","_i"];
	_building = _this select 0;
	_arr = [];

	_restricted = switch(typeOf _building) do
	{
		case "Land_SM_01_shed_F": 				{[[4,1.6,-1.5,0]]}; //Lagerhalle
		case "I_Shed_Ind_F": 					{[[4,1.6,-1.5,0]]}; //Lagerhalle
		case "Land_School_01_F":				{[[-4.1,0,-1.3,-55],[0,4.38,-1.3,36],[-14.5,0,-1.3,-55],[4.9,0,-1.3,-55]]}; //Schulgebäude
		case "Land_Hotel_01_F":					{[[-6,-1.15,-5.4,155],[-6,-1.15,4.45,-24],[4,-1.15,4.45,-24]]}; //3 Stock Hochhaus
		case "Land_House_Big_04_F":				{[[4.75,-2,-3,160],[4.5,2,0.3,160],[-3,1,0.3,250]]};
		case "Land_Slum_03_F":					{[[0.1,1.75,-0.61,55],[0.1,2.35,-0.61,235],[0.9,4.5,-0.61,-35]]}; 
		case "Land_Addon_04_F":					{[[3.5,-2,0.35,-65],[-0.2,-3,0.35,-65]]};
		case "Land_House_Small_03_F":			{[[-1.9,1,-1.4,-95],[-2.7,0,-1.4,85]]};		
		case "Land_House_Small_04_F":			{[[0.75,2,-0.8,-30],[-2.1,-3,-0.8,150]]};
		case "Land_House_Big_01_F":				{[[-0.1,0.2,-1,72],[0.5,5.8,-1,165]]}; 
		case "Land_House_Small_02_F":			{[[-4.3,1,-0.8,30]]};
		case "Land_House_Small_05_F":			{[[1.45,4.5,-1,-70]]};
		case "Land_House_Small_06_F":			{[[2.2,0,-1,10]]};
		case "Land_Slum_01_F":					{[[5.35,-1,0.7,30]]};
		case "Land_House_Big_02_F":				{[[1,1.32,-1.4,0],[-6,-1.05,-1.4,0]]}; //Garagenhäuser
		case "Land_House_Big_03_F":				{[[6,0.1,-3.15,150],[1.95,-0.9,-0.1,-120]]}; //Garagenhäuser
		case "Land_GarageShelter_01_F":			{[[-4.25,0,-1.2,145]]}; //Garagenhäuser
		//Bornholm-Hauskisten
		//case "Land_i_House_Big_02_V1_F":		{[[2.4,-1.5,-2.6,-90],[-4.3,2,-2.6,90],[4.5,2,0.8,-90]]};
		//case "Land_i_House_Big_02_V2_F":		{[[2.4,-1.5,-2.6,-90],[-4.3,2,-2.6,90],[4.5,2,0.8,-90]]};
		//case "Land_i_House_Big_02_V3_F":		{[[2.4,-1.5,-2.6,-90],[-4.3,2,-2.6,90],[4.5,2,0.8,-90]]};
		//case "Land_i_House_Big_01_V1_F":		{[[1.25,1,-2.6,0],[1.25,-2.5,0.8,180],[-4.2,-1.5,0.8,90],[-4.2,2,-2.6,90]]};
		//case "Land_i_House_Big_01_V2_F":		{[[1.25,1,-2.6,0],[1.25,-2.5,0.8,180],[-4.2,-1.5,0.8,90],[-4.2,2,-2.6,90]]};
		//case "Land_i_House_Big_01_V3_F":		{[[1.25,1,-2.6,0],[1.25,-2.5,0.8,180],[-4.2,-1.5,0.8,90],[-4.2,2,-2.6,90]]};
		//case "Land_i_Stone_HouseSmall_V1_F":	{[[0.35,0.2,-0.6,-90],[1.3,0.2,-0.6,90]]};
		//case "Land_i_Stone_HouseSmall_V2_F":	{[[0.35,0.2,-0.6,-90],[1.3,0.2,-0.6,90]]};
		//case "Land_i_Stone_HouseSmall_V3_F":	{[[0.35,0.2,-0.6,-90],[1.3,0.2,-0.6,90]]};
		//case "Land_i_Shed_Ind_F": 				{[[4,1.6,-1.5,0]]};
		//case "Land_Slum_House02_F":				{[[1.5,3.6,-0.75,0]]};
		//case "Land_i_House_Small_01_V1_F":		{[[-4.1,0.5,-0.8,90],[-4.1,-3,-0.8,90]]};
		//case "Land_i_House_Small_01_V2_F":		{[[-4.1,0.5,-0.8,90],[-4.1,-3,-0.8,90]]};
		//case "Land_i_House_Small_01_V3_F":		{[[-4.1,0.5,-0.8,90],[-4.1,-3,-0.8,90]]};
		//case "Land_i_House_Small_02_V1_F":		{[[0.5,-1,-0.7,-90],[7.3,0,-0.65,-90]]};
		//case "Land_i_House_Small_02_V2_F":		{[[0.5,-1,-0.7,-90],[7.3,0,-0.65,-90]]};
		//case "Land_i_House_Small_02_V3_F":		{[[0.5,-1,-0.7,-90],[7.3,0,-0.65,-90]]};
		//case "Land_i_House_Small_03_V1_F":		{[[-5.2,3,-0.3,90],[-5.2,-1,0,90],[2.4,-4,-0.3,90]]};
		default {[[0,0,0,0]]};
	};

	{
		_pos = _building modelToWorld [(_x select 0), (_x select 1), (_x select 2)];
		_dir = (_x select 3);
		_pos pushback _Dir;
		_arr pushback _pos;
	}forEach _restricted;
	_arr;