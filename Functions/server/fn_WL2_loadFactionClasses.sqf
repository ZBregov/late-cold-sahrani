#include "..\warlords_constants.inc"
/*
BIS_WL_factionUnitClasses = [];

_cfgVehicles = "getNumber (_x >> 'scope') == 2 && getNumber (_x >> 'isMan') == 1 && vectorMagnitude getArray (_x >> 'threat') > 0.5 && (BIS_WL_blacklistedBackpacks find (getText (_x >> 'backpack')) == -1) && count getArray (_x >> 'weapons') > 2 && !((tolower getText (_x >> 'vehicleClass')) in ['menstory', 'mendiver'])" configClasses (configFile >> "CfgVehicles");

{
	private _side = _x;
	private _sideID = if (_forEachIndex < 2) then {abs (_forEachIndex - 1)} else {_forEachIndex};
	private _faction = missionNamespace getVariable format ["BIS_WL_faction_%1", _side];
	private _factionConfigs = _cfgVehicles select {
		getNumber (_x >> "side") == _sideID &&
		toLower getText (_x >> "faction") == toLower _faction
	};
	private _factionClassWeights = _factionConfigs apply {(1000000 - getNumber (_x >> "cost")) / 100000};
	_factionClassesWeighted = [];
	{
		_factionClassesWeighted pushBack configName _x;
		_factionClassesWeighted pushBack (_factionClassWeights # _forEachIndex);
	} forEach _factionConfigs;
	BIS_WL_factionUnitClasses pushBack _factionClassesWeighted;
} forEach BIS_WL_sidesArray;
*/

BIS_WL_factionUnitClasses = [
	[
		"UK3CB_CW_US_B_LATE_RIF_1",			 5, //rifleman, default 100
		"UK3CB_CW_US_B_LATE_GL",		    70, //Grenadir, default 80
		"UK3CB_CW_US_B_LATE_AR",		    40, //Autorifleman, default 70
		"UK3CB_CW_US_B_LATE_MG_ASST",		15, //Asst Autorifleman, default 70
		"UK3CB_CW_US_B_LATE_TL",		     5, //Team leader. default 30
		"UK3CB_CW_US_B_LATE_MK",		    30, //Marksman, default 20
		"UK3CB_CW_US_B_LATE_LAT",		    10, //PCML, default 20
		"UK3CB_CW_US_B_LATE_AT",		    50, //MAAWS? , default 20
		"UK3CB_CW_US_B_LATE_SL",		    15, //Squad leader, default 15
		"UK3CB_CW_US_B_LATE_MD",			15, //Medic, default 15
		"UK3CB_CW_US_B_LATE_ENG",	         5, //Repair, default 15
		"UK3CB_CW_US_B_LATE_ENG",			 5, //engineer, default 15
		"UK3CB_CW_US_B_LATE_AT_ASST",		 5, //Asst AT, default 15
		"UK3CB_CW_US_B_LATE_AA_ASST",		 5, //Asst AA, default 15
		"UK3CB_CW_US_B_LATE_MG",		    15, //338, default 15
		"UK3CB_CW_US_B_LATE_AA",			 5, //officer, default 10
		"UK3CB_CW_US_B_LATE_SF_SNI",		 5 //sniper, default 10
	],
	[
		"UK3CB_CW_SOV_O_LATE_VDV_RIF_1",	   	   5, //rifleman, default 100
		"UK3CB_CW_SOV_O_LATE_VDV_GL",		      70, //Grenadir, default 80
		"UK3CB_CW_SOV_O_LATE_VDV_AR",		      40, //Autorifleman, default 70
		"UK3CB_CW_SOV_O_LATE_VDV_MG_ASST",		  15, //Asst Autorifleman, default 70
		"UK3CB_CW_SOV_O_LATE_VDV_TL",		       5, //Team leader. default 30
		"UK3CB_CW_SOV_O_LATE_VDV_MK",		      30, //Marksman, default 20
		"UK3CB_CW_SOV_O_LATE_VDV_LAT",		      50, //RPG32, default 20
		"UK3CB_CW_SOV_O_LATE_VDV_SL",		      15, //Squad leader, default 15
		"UK3CB_CW_SOV_O_LATE_VDV_AT_ASST",		   5, //Asst AT, default 15
		"UK3CB_CW_SOV_O_LATE_AA",		           5, //Asst AA, default 15
		"UK3CB_CW_SOV_O_LATE_VDV_MG",		      15, //93x64, default 15
		"UK3CB_CW_SOV_O_LATE_VDV_AT",		      25, //Titan AT, default 15
		"UK3CB_CW_SOV_O_LATE_AA",		          25, //Titan AA, default 15
		"UK3CB_CW_SOV_O_LATE_VDV_ENG",			   5, //engineer, default 15
		"UK3CB_CW_SOV_O_LATE_VDV_MD",			  15, //Medic, default 15
		"UK3CB_CW_SOV_O_LATE_SF_SNI",			   5 //sniper, default 10
	],
	[
		"UK3CB_AAF_I_RIF_2",			15, //rifleman, default 100
		"UK3CB_AAF_I_GL",		40, //Grenadir, default 80
		"UK3CB_AAF_I_AR",		30, //Autorifleman, default 70
		"UK3CB_AAF_I_TL",		5, //Team leader. default 30
		"UK3CB_AAF_I_MG_ASST",		5, //Ammo, default 20
		"UK3CB_AAF_I_MK",		30, //Marksman, default 20
		"UK3CB_AAF_I_LAT",		30, //PCML, default 20
		"UK3CB_AAF_I_SL",		15, //Squad leader, default 15
		"UK3CB_AAF_I_AT_ASST",		5, //Asst AT, default 15
		"UK3CB_AAF_I_AA_ASST",		5, //Asst AA, default 15
		"UK3CB_AAF_I_AT",		15, //Titan AT, default 15
		"UK3CB_AAF_I_AA",		15, //Titan AA, default 15
		"UK3CB_AAF_I_MD",			20, //Medic, default 15
		"UK3CB_AAF_I_ENG",			5, //engineer, default 15
		"UK3CB_AAF_I_SPOT",			5, //spotter, default 10
		"UK3CB_AAF_I_SNI",			5 //sniper, default 10
	]
];

BIS_WL_factionVehicleClasses = [
	[
		"B_APC_Wheeled_01_cannon_F",		50, //Marshall, default 50
		"B_AFV_Wheeled_01_up_cannon_F",		20, //Rhino UP?, default 50
		"B_AFV_Wheeled_01_cannon_F",		20, //Rhino? defualt 50
		"B_APC_Tracked_01_CRV_F",			10, //Bobcat, default 50
		"B_APC_Tracked_01_rcws_F",			10, //Panther, default 50
		"B_LSV_01_armed_F",					25, //Prowler HMG, default 75
		"B_LSV_01_AT_F",					25, //Prowler AT, Default 75
		"B_MRAP_01_hmg_F",					51, //Hunter hmg, default 100
		"B_MRAP_01_gmg_F",					50, //Hunter GMG, default 100
		"B_APC_Tracked_01_AA_F",			51, //Cheetah, default 50
		"B_MBT_01_cannon_F",				25, //Slammer, default 25
		"B_MBT_01_TUSK_F",					25 //slammer up, default 25
	],
	[
			
		"O_APC_Wheeled_02_rcws_v2_F",
		"O_MRAP_02_gmg_F",					50, //Ifrit GMG, default 100
		"O_MRAP_02_hmg_F",					51, //Ifrit HMG, default 100
		"O_LSV_02_AT_F",					25, //Qilin AT, default 75		
		"O_LSV_02_armed_F",					25, //Qilin minigun, default 75
		"O_MBT_02_cannon_F",				25, //T-100, default 25
		"O_APC_Tracked_02_cannon_F",		50, //Kamysh 30mm, default 50		
		"O_MBT_04_cannon_F",				15, //T-140, default 15
		"O_MBT_04_command_F",				15, //T-140, default 15
		"O_APC_Tracked_02_AA_F",			51 //Tigris, default 50
	],
	[
		
		"UK3CB_AAF_I_ZsuTank",				50, //Nyx AA, default 50
		"UK3CB_AAF_I_BTR60",		        60, //Gorgan, default 50
		"UK3CB_AAF_I_BRDM2",		        40, //Mora, default 50
		"UK3CB_AAF_I_LR_SPG9",				70, //Nyx AT, default 50		"UK3CB_AAF_I_BMP1",					70, //Nyx AT, default 50
		"UK3CB_AAF_I_MTLB_PKT",				40, //Nyx 20mm, default 50
		"UK3CB_AAF_I_LR_SF_AGS30",			40, //strider GMG, default 100
		"UK3CB_AAF_I_Pickup_M2",			40, //strider HMG, default 100
		"UK3CB_AAF_I_Pickup_DSHKM",			40, //strider HMG, default 100
		"UK3CB_AAF_I_SUV_Armed",			40, //strider HMG, default 100
		"UK3CB_AAF_I_FV4201",				60 //Kuma, default 25
	]
];

BIS_WL_factionAircraftClasses = [
	[
		"B_Plane_CAS_01_F",	100 //Wipeout, default 100
		//"B_Heli_Attack_01_F", 70, //blackfoot, deault 50
		//"B_Plane_Fighter_01_F", 50  // F/A-181 Black Wasp II 
		//"B_Heli_Light_01_dynamicLoadout_F",	100, //AH9, default 100
		
	],
	[
		"O_Plane_CAS_02_F",	100 //Neophron, default 100
		//"O_Heli_Attack_02_F", 70, //Kajmen, defualt 50
		//"O_Plane_Fighter_02_F", 50 //To-201 Shikra
		//"O_Heli_Light_02_dynamicLoadout_F",	100 //Orca, default 100
	],
	[
		"UK3CB_AAF_I_Su25SM",	100, //Indy A-10, default 100
		"UK3CB_AAF_I_Bell412_Armed_dynamicLoadout", 70, //Hellcat with rockets, default 70
		"UK3CB_AAF_I_L39_AA", 50 //A-149 Gryphon. default 50
		//default value "I_Heli_light_03_dynamicLoadout_F" //hellcat without rockets
		
	]
];