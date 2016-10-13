/*
	File: fn_clothing_luxus.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bürgermeister Kleiderschrank"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_Marshal",localize "STR_D41_white_polo_shirt",100],
			["U_PMC_WhtPolo_BluPants","Weißes Poloshirt",100],
			["U_NikosBody","Playboy",100],
			["U_NikosAgedBody",localize "STR_D41_Shirt_Tie",100],
			["CUP_U_O_SLA_Officer_Suit","Uniform",100],
			["TRYK_SUITS_BR_F","Anzug, grau",100],
			["TRYK_SUITS_BLK_F","Anzug, schwarz",100]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Hat_brown",localize "STR_D41_Brown_Hat",12],
			["H_Hat_grey",localize "STR_D41_Hat_Green",13],
			["CUP_H_SLA_OfficerCap","Uniform Mütze",13],
			["TRYK_H_Bandana_wig","Perücke m. Bandana",2000],
			["TRYK_H_Bandana_wig_g","Perücke m. Bandana, Brille",2000],
			["TRYK_H_wig","Perücke",2000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["TRYK_Beard_BK","Schwarzer Bart, kurz",2000],
			["TRYK_Beard_BK4","Schwarzer Bart, lang",2000],
			["TRYK_Beard","Brauner Bart, kurz",2000],
			["TRYK_Beard4","Brauner Bart, lang",2000],
			["TRYK_Beard_BW","Dunkelbrauner Bart, kurz",2000],
			["TRYK_Beard_BW4","Dunkelbrauner Bart, lang",2000],
			["TRYK_Beard_Gr","Grauer Bart, kurz",2000],
			["TRYK_Beard_Gr4","Grauer Bart, lang",2000],
			["TRYK_Shemagh_G","Shemag",300],
			["TRYK_Shemagh_shade_G","Shemag, Sonnebrille",300],
			["TRYK_Shemagh","Shemag hell",300],
			["TRYK_Shemagh_ESS","Shemag, Schutzbrille",300],
			["TRYK_Shemagh_WH","Shemag weiß",300],
			["TRYK_Shemagh_ESS_WH","Shemag weiß, Schutzbrille",300],
			["TRYK_Shemagh_shade_WH","Shemag weiß, Sonnebrille",300],
			["TRYK_Spset_PHC1_Glasses","Gürtelzubehör",200],
			["TRYK_Spset_PHC2_Glasses","Gürtelzubehör",200],
			["TRYK_TAC_SET_MESH_2","Zubehör Komplettpacket",800],
			["TRYK_TAC_SET_OD_2","Zubehör Komplettpacket, dunkel",800],
			["TRYK_TAC_SET_WH_2","Zubehör Komplettpacket, weiß",800]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["TAC_HGB_B","Pistolenholster",300],
			["TRYK_V_Bulletproof_BLK","Schutzweste, Schwarz",900],
			["TRYK_V_Bulletproof_BL","Schutzweste, NATO",900],
			["TRYK_V_Bulletproof","Schutzweste, weiß",900]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["TAC_BP_KAR_B",nil,250],
			["B_Kitbag_mcamo",nil,450],
			["B_TacticalPack_oli",nil,350],
			["B_FieldPack_ocamo",nil,300],
			["B_Bergen_sgg",nil,450],
			["B_Kitbag_cbr",nil,450],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500]
		];
	};
};