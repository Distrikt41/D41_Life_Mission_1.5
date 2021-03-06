/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if(_house == "") exitWith {[]};

/*
	Return Format:
	[price,# of containers allowed]
*/
switch (true) do
{
	case (_house in ["Land_SM_01_shed_F","I_Shed_Ind_F"]): {[500000,1]};
	case (_house in ["Land_School_01_F"]): {[360000,4]};
	case (_house in ["Land_Hotel_01_F","Land_House_Big_04_F"]): {[230000,3]};
	case (_house in ["Land_Slum_03_F"]): {[200000,3]};
	case (_house in ["Land_House_Big_02_F","Land_House_Big_03_F"]): {[230000,2]};//Garagenhäuser mit 2 Kisten
	case (_house in ["Land_Addon_04_F","Land_House_Small_04_F","Land_House_Big_01_F"]): {[75000,2]};
	case (_house in ["Land_GarageShelter_01_F"]): {[75000,1]}; //Garagenhaus mit 1 Kiste
	case (_house in ["Land_House_Small_03_F"]): {[60000,2]};
	//case (_house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]): {[60000,0]};
	case (_house in ["Land_House_Small_05_F","Land_House_Small_06_F"]): {[40000,1]};
	case (_house in ["Land_House_Small_02_F","Land_Slum_01_F"]): {[30000,1]};
	default {[]};
};