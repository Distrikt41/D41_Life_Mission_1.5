/*
	File: fn_JailFine.sqf
*/
private["_val"];
_val = [_this,0,"",["",0]] call BIS_fnc_param;

if(D41_atmGeld - (_val*0.1) <= 15000) exitWith {titleText[localize "STR_Cop_Ticket_NotEnough","PLAIN"];};
_cops = {side _x == west} count playableUnits;
switch(_cops)do{
			case(0):										{titleText[localize "STR_FSM_NoFine","PLAIN"];};
	   		case(1):										{D41_atmGeld = D41_atmGeld - (_val*0.02);titleText[format[localize "STR_FSM_FinePay",[_val*0.02] call life_fnc_numberText],"PLAIN"];};
	   		case(2):										{D41_atmGeld = D41_atmGeld - (_val*0.04);titleText[format[localize "STR_FSM_FinePay",[_val*0.04] call life_fnc_numberText],"PLAIN"];};
	   		case(3):										{D41_atmGeld = D41_atmGeld - (_val*0.06);titleText[format[localize "STR_FSM_FinePay",[_val*0.06] call life_fnc_numberText],"PLAIN"];};
	   		case(4):										{D41_atmGeld = D41_atmGeld - (_val*0.08);titleText[format[localize "STR_FSM_FinePay",[_val*0.08] call life_fnc_numberText],"PLAIN"];};
	   		default{D41_atmGeld = D41_atmGeld - (_val*0.1);titleText[format[localize "STR_FSM_FinePay",[_val*0.1] call life_fnc_numberText],"PLAIN"];};
	   		};
			
			
			