//	@file Version: 1.0
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse
//	@file Created: 20/11/2012 05:19
//	@file Args:
// --------------------------------------------------------------------------------------------------- \\
// ----------  !DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU KNOW WHAT YOU ARE DOING!	---------- \\
// ----------																				---------- \\
// ----------			404Games are not responsible for anything that may happen 			---------- \\
// ----------			 as a result of unauthorised modifications to this file.			---------- \\
// --------------------------------------------------------------------------------------------------- \\
if(!X_Server) exitWith {};

diag_log format["WASTELAND SERVER - Initilizing Server Vars"];

CVG_weapons = [];
CVG_weapons = CVG_rifles;
CVG_weapons = CVG_weapons + CVG_Scoped;
CVG_weapons = CVG_weapons + CVG_Heavy;
CVG_weapons = CVG_weapons + CVG_pistols;
CVG_weapons = CVG_weapons + CVG_Launchers;

#ifdef __A2NET__
missionStartTime = 0;
netTime = 0;
#endif

sideMissionPos = "";
mainMissionPos = "";

currentVehicles = [];
publicVariable "currentVehicles";
pvar_teamSwitchList = [];
publicVariable "pvar_teamSwitchList";
pvar_teamKillList = [];
publicVariable "pvar_teamKillList";
pvar_beaconListBlu = []; 
publicVariable "pvar_beaconListBlu";
pvar_beaconListRed = []; 
publicVariable "pvar_beaconListRed";
clientMissionMarkers = [];
pvar_beaconListInd = [];
publicVariable "pvar_beaconListInd";
publicVariable "clientMissionMarkers";
clientRadarMarkers = [];
publicVariable "clientRadarMarkers";
currentDate = [];
publicVariable "currentDate";
currentInvites = [];
publicVariable "currentInvites";
                  
"PlayerCDeath" addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
civilianVehicles = [
    "Lada1_TK_CIV_EP1",
    "Lada2_TK_CIV_EP1",
    "LandRover_TK_CIV_EP1",
    "TT650_TK_CIV_EP1",
    "Old_bike_TK_CIV_EP1",
    "Old_moto_TK_Civ_EP1",
    "hilux1_civil_3_open_EP1",
    "S1203_TK_CIV_EP1",
    "UAZ_Unarmed_TK_CIV_EP1",
    "Ural_TK_CIV_EP1",
    "V3S_Open_TK_CIV_EP1",
    "Volha_1_TK_CIV_EP1",
    "Volha_2_TK_CIV_EP1",
    "VolhaLimo_TK_CIV_EP1",
    "car_sedan",
    "VWGolf",
    "TT650_Civ",
    "MMT_Civ",
    "datsun1_civil_2_covered",
    "datsun1_civil_3_open",
    "datsun1_civil_1_open",
    "hilux1_civil_1_open",
    "hilux1_civil_2_covered",
    "hilux1_civil_3_open",
    "UralCivil2",
    "UralCivil",
    "V3S_Civ",
    "Skoda",
    "SkodaBlue",
    "SkodaRed",
    "SkodaGreen",
    "car_hatchback",
    "Lada_base",
    "Lada1",
    "LadaLM",
    "Lada2"];

//Military Vehicle List - Random Spawns
militaryVehicles = [
    "UAZ_CDF",
    "SUV_PMC",
    "MTVR",
    "BAF_Offroad_W",
    "UAZ_Unarmed_UN_EP1",
    "HMMWV"];

//Armed Military Vehicle List - Random Spawns
armedMilitaryVehicles = [
    "ArmoredSUV_PMC",
    "Pickup_PK_GUE",
    "UAZ_MG_TK_EP1",
    "LandRover_MG_TK_INS_EP1",
    "HMMWV_M2",
    "HMMWV_Armored",
    "HMMWV_MK19",
    "HMMWV_TOW",
    "GAZ_Vodnik"];

//Item Config
pickupList = [
    "Satelit",
    "EvMoney",
    "Suitcase",
    "Fuel_can"];

//Object List - Random Spawns.
objectList = [
    "Land_Barrel_water",
    "Land_prebehlavka",
    "Land_leseni2x",
    "Fort_Crate_wood",
    "Suitcase",
    "Fuel_can",
    "CZ_VestPouch_EP1",
    //"Land_CamoNet_NATO",
    "Land_Barrel_water",
    "Land_stand_small_EP1",
    "Land_stand_small_EP1",
    "Base_WarfareBBarrier10xTall",
    "Base_WarfareBBarrier10xTall",
    "Base_WarfareBBarrier10xTall",
    "Base_WarfareBBarrier10x",
    "Base_WarfareBBarrier10x",
    "Base_WarfareBBarrier10x",
    "Base_WarfareBBarrier5x",
    "Base_WarfareBBarrier5x",   
    "Base_WarfareBBarrier5x",
    "Land_Misc_deerstand",
    "Fort_Barricade",
    "Concrete_Wall_EP1",
    "Concrete_Wall_EP1",
    "Land_fort_bagfence_long",
    "Land_fort_bagfence_long",
    "Land_fort_bagfence_round",
    "Land_fort_bagfence_round",
    "Land_fort_bagfence_corner",
    "Land_BagFenceLong",
    "Land_BagFenceLong",
    "Land_fort_artillery_nest_EP1",
    //"Land_fortified_nest_small_EP1",
    //"Land_Misc_deerstand",
    "Land_fort_rampart",
    "Land_fort_rampart_EP1",
    "Land_HBarrier_large",
    "Land_HBarrier_large",
    //"Land_Misc_Scaffolding",
    //"Land_Misc_Scaffolding",
    "Land_fort_artillery_nest_EP1",
    "Land_fort_rampart_EP1",
    "Land_Fort_Watchtower_EP1",
    "Land_Fort_Watchtower",
    "Land_fortified_nest_big",
    "Land_fortified_nest_small_EP1",
    "RampConcrete",
    "WarfareBDepot",
    "WarfareBCamp",
    "Hedgehog",
    "MASH",
    "Land_ConcreteRamp",
    "Land_CncBlock_Stripes",
    //"Land_Campfire_burning",
    "Fort_Nest_M240",
    "Fort_Nest_M240",
    "Fort_RazorWire",
    "Fort_RazorWire",
    //"Hhedgehog_concreteBig",
    //"Hhedgehog_concreteBig",
    //"Hhedgehog_concrete",
    //"Hhedgehog_concrete",
    //"USMC_WarfareBFieldhHospital",
    //"USMC_WarfareBLightFactory",
    "Land_GuardShed",
    "Land_tent_east"];
                                         
//Object List - Random Spawns.
staticWeaponsList = [
    "M2StaticMG_US_EP1",
    "DSHKM_TK_INS_EP1"];

//Object List - Random Helis.
staticHeliList = [
    "UH1H_TK_GUE_EP1",
    "AH6X_EP1",
    "MH6J_EP1"];
    
//Object List - Random Planes.
staticPlaneList = [
    "An2_1_TK_CIV_EP1",
    "An2_2_TK_CIV_EP1"];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons = [
    "AK_107_kobra",
    "AK_107_kobra",
    "AK_107_kobra",
    "AK_107_kobra",
    "AK_47_M",
    "AK_47_M",
    "AK_47_M",
    "AK_47_M",
    "AK_47_M",
    "AK_47_S",
    "AK_47_S",
    "AK_47_S",
    "AK_47_S",
    "AK_47_S",
    "AK_74",
    "AK_74",
    "AK_74",
    "AK_74",
    //"AK_74_GL",
    //"AK_74_GL_kobra",
    "BAF_L110A1_Aim",
    "BAF_L7A2_GPMG",
    "BAF_L85A2_RIS_ACOG",
    "BAF_L85A2_UGL_Holo",
    "BAF_L86A2_ACOG",
    "bizon",
    "bizon",
    "bizon",
    "bizon_silenced",
    "FN_FAL",
    "FN_FAL",
    "G36a",
    "G36a",
    "G36_C_SD_eotech",
    "LeeEnfield",
    "LeeEnfield",
    "LeeEnfield",
    "LeeEnfield",
    "LeeEnfield",
    "M1014",
    "M1014",
    "M1014",
    "M16A2",
    "M16A2",
    "M16A2",
    "M16A2",
    "M16A2",
    "M14_EP1",
    "M16A2GL",
    "M16A2GL",
    "M16A2GL",
    "m16a4",
    "m16a4",
    "m16a4",
    "m16a4",
    "m16a4",
    "M240",
    "M249",
    "UZI_EP1",
    "UZI_EP1",
    "UZI_EP1",
    "Sa61_EP1",
    "Sa61_EP1",
    "Sa61_EP1",
    "M4A1_Aim",
    "M4A1_Aim",
    "M4A1_Aim",
    "M4A1_HWS_GL",
    "M4A3_CCO_EP1",
    "M60A4_EP1",
    "M60A4_EP1",
    "m8_carbine",
    "MG36",
    "Mk_48",
    "MP5A5",
    "MP5A5",
    "MP5A5",
    "Sa58V_CCO_EP1",
    "Sa58V_EP1",
    "Sa58V_RCO_EP1",
    "Saiga12K",
    "Saiga12K",
    "Saiga12K",
    "SCAR_H_CQC_CCO",
    "SCAR_L_CQC"];
                
MissionSpawnMarkers = [
            ["Mission_1",false],
            ["Mission_2",false],
            ["Mission_3",false],
            ["Mission_4",false],
            ["Mission_5",false],
            ["Mission_6",false],
            ["Mission_7",false],
            ["Mission_8",false],
            ["Mission_9",false],
            ["Mission_10",false],
            ["Mission_11",false],
            ["Mission_12",false],
            ["Mission_13",false],
            ["Mission_14",false],
            ["Mission_15",false],
            ["Mission_16",false],
            ["Mission_17",false],
            ["Mission_18",false],
            ["Mission_19",false],
            ["Mission_20",false],
            ["Mission_21",false],
            ["Mission_22",false],
            ["Mission_23",false],
            ["Mission_24",false],
            ["Mission_25",false],
            ["Mission_26",false],
            ["Mission_27",false],
            ["Mission_28",false],
            ["Mission_29",false],
            ["Mission_30",false],
            ["Mission_31",false],
            ["Mission_32",false],
            ["Mission_33",false],
            ["Mission_34",false],
            ["Mission_35",false],
            ["Mission_36",false],
            ["Mission_37",false],
            ["Mission_38",false],
            ["Mission_39",false],
            ["Mission_40",false],
            ["Mission_41",false],
            ["Mission_42",false],
            ["Mission_43",false],
            ["Mission_44",false],
            ["Mission_45",false],
            ["Mission_46",false],
            ["Mission_47",false],
            ["Mission_48",false],
            ["Mission_49",false],
            ["Mission_50",false]
];

CitySpawnMarkers = [
["Town_0",600,"Chernogorsk"],
		["Town_1",false],
		["Town_2",false],
		["Town_3",false],
		["Town_4",false],			
		["Town_5",false],
		["Town_7",false],
		["Town_8",false],
		["Town_9",false],
		["Town_10",false],
		["Town_11",false],
		["Town_12",false],
		["Town_13",false],
		["Town_14",false],
		["Town_15",false],
		["Town_16",false],
		["Town_17",false],
		["Town_18",false],
		["Town_19",false],
		["Town_20",false],
		["Town_21",false],
		["Town_22",false],
		["Town_23",false],
		["Town_24",false],
		["Town_25",false],
		["Town_26",false],
		["Town_27",false],
		["Town_28",false],
		["Town_29",false],
		["Town_30",false],
		["Town_31",false],
		["Town_32",false],
		["Town_33",false],
		["Town_34",false],
		["Town_35",false],
		["Town_36",false],
		["Town_37",false],
		["Town_38",false],
		["Town_39",false],
		["Town_40",false],
		["Town_42",false],
		["Town_43",false],
		["Town_44",false],
		["Town_45",false],
		["Town_46",false]
		];