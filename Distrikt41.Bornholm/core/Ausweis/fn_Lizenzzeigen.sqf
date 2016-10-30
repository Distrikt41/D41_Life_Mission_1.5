if(isServer)exitWith{};
private["_ziel", "_rang", "_marke", "_org", "_message"];
if(vehicle player != player )exitWith{};
_ziel = cursorTarget;
if(isNull _ziel) then {_ziel = player;};    
if(!(_ziel isKindOf "Man")) then {_ziel = player;};  
if(!(alive _ziel)) then {_ziel = player;};     
switch(playerSide)do{
 case west:{
 if (player getVariable ["D41_IsSec", false])then
	{
		switch (call life_coplevel) do{
		   case 1: { _rang = "Trainee"; };
		   case 2: { _rang = "Objektschützer"; };
		   case 3: { _rang = "Begleitschützer"; };
		   case 4: { _rang = "Personenschützer"; };
		   case 5: { _rang = "Security Leitung"; };
		};
		_marke = "SecSymbol";
		_org = "Security Bornholm";
	}
	else
	{
		  switch (call life_coplevel) do{
		   case 1: { _rang = "Recruit Officer"; };
		   case 2: { _rang = "Officer"; };
		   case 3: { _rang = "Patrol Office"; };
		   case 4: { _rang = "Master Patrol Officer"; };
		   case 5: { _rang = "Sergeant"; };
		   case 6: { _rang = "Lieutenant"; };
		   case 7: { _rang = "Captain"; };
		   case 8: { _rang = "Inspector"; };
		   case 9: { _rang = "Detective"; };
		   case 10: { _rang = "Chief Assistent"; };
		   case 11: { _rang = "Chief of the Police"; };
		   default { _rank =  "Error";};
	   };
		_marke = "PolSymbol";
		_org = "Polizei Bornholm";
	};
 };
 case independent:{
  switch (call life_mediclevel) do{
   case 1: { _rang = "URD Helfer"; };
   case 2: { _rang = "URD Truppführer"; };
   case 3: { _rang = "URD Gruppenführer"; };
   case 4: { _rang = "URD Zugführer"; };
   case 5: { _rang = "URD Präsident"; };    
   default { _rank =  "Error";};
  };
  _marke = "URDSymbol";
  _org = "Distrikt 41";
 };
 case civilian:{
  if(playerSide == civilian)then{
   _rang = "Zivilist";
   _marke = "marke_ziv";
   _org = "Distrikt 41";
  }else{
   _rang = "Zivilist";
   _marke = "marke_ziv";
   _org = "Distrikt 41";
  };  
 };
};
_message = format["<img size='10' color='#FFFFFF' image='textures\%1.paa'/><br/><br/><t size='2.5'>%2</t><br/><t size='1.8'>%3</t><br/><t size='1'>%4</t>",_marke, name player, _rang, _org];
[[player, _message],"life_fnc_Lizenzsehen",_ziel,false] spawn life_fnc_MP;