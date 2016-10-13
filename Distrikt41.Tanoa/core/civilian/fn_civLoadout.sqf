/*
	File: fn_civLoadout.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
	
	Description:
	Loads the civs out with the default gear, with randomized clothing.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

_clothings = ["U_C_Poor_1",
			"U_Rangemaster",
			"U_PMC_BgPolo_GrnPants",
			"U_C_Journalist",
			"U_PMC_RedPlaidShirt_DenimCords",
			"U_C_Commoner1_1",
			"TRYK_shirts_DENIM_RED2",
			"CUP_B_USMC_Navy_Green",
			"TRYK_U_B_PCUGs_gry_R",
			"TRYK_U_denim_hood_nc",
			"TRYK_U_B_BLTAN_T",
			"TRYK_U_denim_jersey_blu"
			];
player addUniform (_clothings select (floor(random (count _clothings))));

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "D41_Handy";
player assignItem "D41_Handy";


[] call life_fnc_saveGear;