/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			//Zivi-Lizenzen
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "home": {_var = "license_civ_home"};
			//Grund-Rohstoffe
			case "Schnaps": {_var = "license_civ_Schnaps"};
			case "Saft": {_var = "license_civ_Saft"};
			case "bjerky": {_var = "license_civ_bjerky"};
			case "sand": {_var = "license_civ_sand"};
			case "salt": {_var = "license_civ_salt"};
			case "TonL": {_var = "license_civ_Ton"};
			case "BruchsteinL": {_var = "license_civ_Bruchstein"};
			case "coal": {_var = "license_civ_coal"};
			case "copper": {_var = "license_civ_copper"};
			case "Alu": {_var = "license_civ_Alu"};
			case "iron": {_var = "license_civ_iron"};
			case "diamond": {_var = "license_civ_diamond"};
			case "oil": {_var = "license_civ_oil"}; //Oil processing license cost
			case "Krabben": {_var = "license_civ_Krabben"};
			//Veredelte Rohstoffe
			case "Zement": {_var = "license_civ_Zement"};
			case "WKompL": {_var = "license_civ_WKompL"};
			case "VehProdL": {_var = "license_civ_VehProdL"};
			case "KerosinL": {_var = "license_civ_Kerosin"};
			case "Dosenfisch": {_var = "license_civ_Dosenfisch"};
			case "Stahl": {_var = "license_civ_Stahl"};
			//Drogen
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "cocaine": {_var = "license_civ_coke"};
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "meth": {_var = "license_civ_meth"};
			//Polizei-URD etc
			case "mair": {_var = "license_med_air"};
			case "adac": {_var = "license_med_adac"};
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "swat": {_var = "license_cop_swat"}; //Swat License cost
			case "gangfirma": {_var = "license_cop_gangfirma"};
			//Fraktionen
			case "rebel": {_var = "license_civ_rebel"}; //Guerilla Fraktion
			case "syndikat": {_var = "license_civ_syndikat"}; //Syndikat Fraktion
			case "konzern": {_var = "license_civ_konzern"}; //Konzern Fraktion
			//D41Gruppen und Basen
			case "gangdmw": {_var = "license_civ_gangdmw"};
			case "navyseal": {_var = "license_civ_navyseal"};
			case "mayor": {_var = "license_civ_mayor"};
			case "base01": {_var = "license_civ_base01"};
			case "base02": {_var = "license_civ_base02"};
			case "base03": {_var = "license_civ_base03"};
			case "base04": {_var = "license_civ_base04"};
			case "base05": {_var = "license_civ_base05"};
			case "base06": {_var = "license_civ_base06"};
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			//Zivi-Lizenzen
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_home": {_var = "home"}; //Eigentumsurkunde
			//Grund-Rohstoffe
			case "license_civ_Schnaps": {_var = "Schnaps"}; //Schnaps brennen
			case "license_civ_Saft": {_var = "Saft"}; //Saft pressen
			case "license_civ_bjerky": {_var = "bjerky"}; //Rohes Fleisch herstellen
			case "license_civ_sand": {_var = "sand"}; //Sand verarbeiten
			case "license_civ_Ton": {_var = "TonL"}; //Ton brennen
			case "license_civ_Bruchstein": {_var = "BruchsteinL"}; //Bruchstein verarbeiten
			case "license_civ_salt": {_var = "salt"}; //Salz verarbeiten
			case "license_civ_coal": {_var = "coal"}; //Kohle verarbeiten
			case "license_civ_copper": {_var = "copper"}; //Kupfer verarbeiten
			case "license_civ_Alu": {_var = "Alu"}; //alu schmieden
			case "license_civ_iron": {_var = "iron"}; //Eisen schmieden
			case "license_civ_diamond": {_var = "diamond"}; //Diamanten verarbeiten
			case "license_civ_oil": {_var = "oil"}; //Oil processing license cost
			case "license_civ_Krabben": {_var = "Krabben"}; //Krabbenfischen
			//Veredelte Rohstoffe
			case "license_civ_Zement": {_var = "Zement"}; //Zement mischen
			case "license_civ_WKompL": {_var = "WKompL"}; //Waffenkomponenten herstellen
			case "license_civ_VehProdL": {_var = "VehProd"}; //Fahrzeugteile herstellen
			case "license_civ_Kerosin": {_var = "KerosinL"}; //Kerosin raffinieren
			case "license_civ_Dosenfisch": {_var = "Dosenfisch"}; //Eingelegten Fisch herstellen
			case "license_civ_Stahl": {_var = "Stahl"}; //Stahl schmieden
			//Drogen
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_coke": {_var = "cocaine"}; //Kokain verarbeiten
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_meth": {_var = "meth"}; //Meth herstellen
			//Polizei-URD etc
			case "license_med_air": {_var = "mair"}; //Medic Fluglizenz
			case "license_med_adac": {_var = "adac"}; //ADAC Lizenz
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_gangfirma": {_var = "gangfirma"}; //Security
			//Fraktionen
			case "license_civ_rebel": {_var = "rebel"}; //Guerilla Fraktion
			case "license_civ_syndikat": {_var = "syndikat"}; //Syndikat Fraktion
			case "license_civ_konzern": {_var = "konzern"}; //Konzern Fraktion
			//D41Gruppen und Basen
			case "license_civ_gangdmw": {_var = "gangdmw"}; //DMW Lizenz
			case "license_civ_navyseal": {_var = "navyseal"}; //NavySeals
			case "license_civ_mayor": {_var = "mayor"}; //Bürgermeister
			case "license_civ_base01": {_var = "base01"}; //Gangbase 01 Banditen Digital
			case "license_civ_base02": {_var = "base02"}; //Gangbase 02 Banditen Woodland
			case "license_civ_base03": {_var = "base03"}; //Gangbase 03 Neutral Gelb
			case "license_civ_base04": {_var = "base04"}; //Gangbase 04 Neutral Blau
			case "license_civ_base05": {_var = "base05"}; //Gangbase 05 Hero Hellblau
			case "license_civ_base06": {_var = "base06"}; //Gangbase 06 Hero Weiß
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;