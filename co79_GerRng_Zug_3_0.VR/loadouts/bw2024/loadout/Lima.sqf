//------------------------------------------------------------------
//------------------------------------------------------------------
//
//	Lima
//
//------------------------------------------------------------------
//------------------------------------------------------------------
player setVariable ["GR_unitLoadout","Lima"];

//	https://community.bistudio.com/wiki/Unit_Loadout_Array
player setUnitLoadout [
	["CUP_arifle_G36KA3_grip_wdl","","CUP_acc_LLM_od","CUP_optic_Elcan_SpecterDR_RMR_od",["CUP_30Rnd_556x45_G36_wdl",30],[],"CUP_Bipod_G36_wood"],
	[],
	["CUP_hgun_M17_Black","","","",["CUP_17Rnd_9x19_M17_Black",17],[],""],
	["CUP_U_B_GER_Fleck_Crye",[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_packingBandage",5],["kat_chestSeal",2],["ACE_morphine",1],["ACE_salineIV_500",2],["ACE_splint",2],["ACE_tourniquet",2],["ACE_CableTie",2],["ACE_EarPlugs",1],["ItemcTabHCam",1],["ACE_IR_Strobe_Item",2],["ACE_Flashlight_XL50",1],["ACE_MapTools",1]]],
	["GRE_PlateCarrier1_Flecktarn",[["CUP_NVG_PVS15_black",1],["ACE_EntrenchingTool",1],["ACE_wirecutter",1],["CUP_17Rnd_9x19_M17_Black",2,17],["HandGrenade",3,1],["SmokeShell",3,1],["CUP_30Rnd_556x45_G36_wdl",10,30],["CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl",4,30]]],
	["TFAR_rt1523g_big_bwmod",[["ToolKit",1]]],
	"CUP_H_OpsCore_Covered_Fleck_SF","",[],
	["ItemMap","","TFAR_anprc152","ItemCompass","ItemWatch",""]
];

//------------------------------------------------------------------
//	ACE Optionen fuer Spieler
//------------------------------------------------------------------
//	Medic:
player setVariable ["ACE_medical_medicClass",2,true];

//	Combat Engineer:
player setVariable ["ACE_isEngineer",2,true];

//	Explosive Specialist:
player setVariable ["ACE_isEOD",true,true];

//	Waffe sichern
player setVariable ["ace_safemode_safedweapons", []];
[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;