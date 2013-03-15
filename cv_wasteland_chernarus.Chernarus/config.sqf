//	@file Version: 1.0
//	@file Name: config.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:13
//	@file Description: Main config.
      
// --------------------------------------------------------------------------------------------------- \\
// ----------  !DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU KNOW WHAT YOU ARE DOING!	---------- \\
// ----------											---------- \\
// ----------			404Games are not responsible for anything that may happen 	---------- \\
// ----------			 as a result of unauthorised modifications to this file.	---------- \\
// --------------------------------------------------------------------------------------------------- \\

                                                                                                
//Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost, sell amount
weaponsArray = [
	["AK-74","AK_74",50,15],
	["AK-107 Kobra","AK_107_kobra",75,25],
	["AKM","AK_47_M",100,30],
    	["M16A4","M16A4",50,15],
    	["M16A4 ACG","m16a4_acg",150,75],
    	["M4A1","M4A1",50,15],
    	["M4A1 CCO","M4A1_Aim",75,25],
    	["M4A1 SD Holo GL","M4A1_HWS_GL_SD_Camo",150,75],
                ["M4A1 RCO GL","M4A1_RCO_GL",150,75],
                ["M1014","M1014",50,15],
    	["Saiga 12K","Saiga12K",50,15],
    	["M249","M249_EP1",200,60],
    	["Mk48 Mod","Mk_48",250,75],
    	["M240","M240",200,90],
    	["Pecheneg","Pecheneg",200,60],
    	["M47 Dragon","M47Launcher_EP1",500,150],
    	["RPG-7","RPG7V",300,90],
    	["SMAW","SMAW",300,90],
    	["Stinger","Stinger",750,225],
    	["Strela","Strela",750,225],
    	["Javelin","Javelin",1000,300],
    	["NLAW","BAF_NLAW_Launcher",750,225],
    	["Mk12 SPR","M4SPR",300,90],
    	["DMR","DMR",1800,540],
    	["Mk17 Sniper","SCAR_H_LNG_Sniper",1500,450],
    	["M107","m107",2500,750],
    	["L110A1","BAF_L110A1_Aim",250,75],
	["L7A2 GPMG","BAF_L7A2_GPMG",200,60],
	["L85A2 Acog","BAF_L85A2_RIS_ACOG",300,90],
    	["L85A2 Holo GL","BAF_L85A2_UGL_Holo",250,75],
    	["L86A2 LSW","BAF_L86A2_ACOG",300,90],
    	["G36a","G36a",75,25],
    	["G36c Sd EoTech","G36_C_SD_eotech",100,30],
    	["G36K Camo","G36K_camo",150,45],
    	["M14","M14_EP1",400,120],
    	["M60","M60A4_EP1",250,75],
    	["MG36","MG36",175,55],
    	["M8 Carbine","m8_carbine",175,55],
    	["SCAR H CCO","SCAR_H_CQC_CCO",400,120],
    	["GOLD AKS","AKS_GOLD",500,150],
    	["Hunting Rifle","huntingrifle",500,150],
    	["SCAR L CQC","SCAR_L_CQC",300,90]               
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = [
	["30Rnd AK","30Rnd_545x39_AK",10],
	["AKM Mag","30Rnd_762x39_AK47",15],
	["30Rnd. STANAG","30Rnd_556x45_Stanag",10],
    	["30Rnd. STANAG SD","30Rnd_556x45_StanagSD",15],
    	["Mk17 Mag.","20Rnd_762x51_B_SCAR",20],
	["Mk17 SD Mag.","20Rnd_762x51_SB_SCAR",20],
	["10Rnd. M107","10Rnd_127x99_m107",50],
	["8Rnd. M1014 Slug","8Rnd_B_Beneli_74Slug",10],
	["8Rnd. Saiga 12K Slug","8Rnd_B_Saiga12_74Slug",10],
	["200Rnd. M249 Belt","200Rnd_556x45_M249",50],
	["100Rnd. M240","100Rnd_762x51_M240",50],
	["PKM Mag.","100Rnd_762x54_PK",50],
    	["PG-7V.","PG7V",75],
    	["SMAW-HEAA","SMAW_HEAA",75],
    	["Stinger Ammo","Stinger",200],
    	["Strela Ammo","Strela",200],
    	["Javelin Ammo","Javelin",300],
    	["NLAW Ammo","NLAW",150],
    	["M57 Dragon Ammo","Dragon_EP1",150],
    	["200Rnd. L110A1 Belt","200Rnd_556x45_L110A1",50],
	["30Rnd G36","30Rnd_556x45_G36",25],
	["20 Rnd M14 DMR","20Rnd_762x51_DMR",75],
    	["100Rnd MG36 C Mag","100Rnd_556x45_BetaCMag",40],
    	["CZ550 Hunting Ammo","5x_22_LR_17_HMR",35],
    	["20Rnd SCAR","20Rnd_762x51_B_SCAR",50],
                ["M203 Smoke","1Rnd_Smoke_M203",10],
                ["M203 Red Smoke","1Rnd_SmokeRed_M203",10],
	["M203 Green Smoke","1Rnd_SmokeGreen_M203",10],
                ["M203 Yellow Smoke","1Rnd_SmokeYellow_M203",10],
                ["Grenade","HandGrenade_West",20],
	["Satchel Charge","PipeBomb",125],
                ["Smoke Grenade","SmokeShell",10],
                ["Smoke Grenade Red","SmokeShellRed",10], 
                ["Smoke Grenade Green","SmokeShellGreen",10],
                ["Smoke Grenade Blue","SmokeShellBlue",10]
];

//Gun Store Equipment List
//Text name, classname, buy cost
accessoriesArray = [
	["Range Finder","Binocular_Vector",500],
	["NV Goggles","NVGoggles",100],
    	["GPS","ItemGPS",100]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
generalStore = [
	["Water","water",localize "STR_WL_ShopDescriptions_Water","client\icons\water.paa",30,15],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\icons\cannedfood.paa",30,15],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\briefcase.paa",400,200],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",200,100],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",150,75],
    	["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",50,25],
	["Spawn Beacon","spawnBeacon",localize "STR_WL_ShopDescriptions_spawnBeacon","client\icons\radar_store.paa",1500,750],
	["Camo Net","camonet", localize "STR_WL_ShopDescriptions_Camo","client\icons\camo.paa",200,100] 
];

//Vehicle Store Vehicle List
//Text name, Classname, Description, Picture, Buy Price, Sell Price
civilianArray = [
	["Bike","Old_bike_TK_CIV_EP1",50],
	["Mountain Bike","MMT_Civ",60],
	["Red MotorBike","TT650_Civ",150],
	["Hatchback","car_hatchback",250],
	["White Sedan","car_sedan",300],
	["Red Skoda","SkodaRed",350],
	["Brown Hilux","hilux1_civil_1_open",400],
	["White Hilux","hilux1_civil_3_open",400],
	["Green LandRover","BAF_Offroad_W",500],
	["Red LandRover","LandRover_TK_CIV_EP1",500],
	["Brown LandRover","LandRover_CZ_EP1",500],
    	["Bus","Ikarus",500],
    	["Blue Ural Truck","UralCivil2",500],
    	["Yellow Ural Truck","UralCivil",500],
    	["Black SUV","SUV_TK_CIV_EP1",900]
];
//Text name, Classname, Buy Price, Sell Price
militaryArray = [
	["ATV","BAF_ATV_W",200],
	["UAZ","UAZ_CDF",400],
	["Humvee","HMMWV",750],
	["Camo Datsun Technical","Pickup_PK_INS",800],
	["Camo Hilux Technical","Offroad_DSHKM_INS",900],
	["Armoured SUV","ArmoredSUV_PMC",1500]
];

// Chernarus Coastal Random Spawn
//Marker Name, Radius, City Name
RandomcityList = [
		["Town_0",600,"Chernogorsk"],
		["Town_1",200,"Prigorodki"],
		["Town_2",200,"Pusta"],
		["Town_3",600,"Elektro"],
		["Town_4",200,"Kamyshovo"],			
		["Town_5",200,"Tulga"],
		["Town_6",250,"Solnychniy"],
		["Town_7",200,"Nizhnoye"],
		["Town_8",500,"Berezino City"],
		["Town_9",500,"Berezino Dock"],
		["Town_10",250,"Khelm"],
		["Town_11",200,"Olsha"],
		["Town_12",350,"Krasnostav"],
		["Town_13",250,"Gvozdno"],
		["Town_14",300,"Grishino"],
		["Town_15",200,"Petrovka"],
		["Town_16",200,"Lopatino"],
		["Town_17",300,"Vybor"],
		["Town_18",250,"Pustoshka"],
		["Town_19",200,"Myshkino"],
		["Town_20",200,"Sosnovka"],
		["Town_21",300,"Zelenogorsk"],
		["Town_22",200,"Pavlovo"],
		["Town_23",200,"Kamenka"],
		["Town_24",200,"Komarovo"],
		["Town_25",200,"Balota"],
		["Town_26",200,"Bor"],
		["Town_27",200,"Drozhino"],
		["Town_28",200,"Kozlovka"],
		["Town_29",200,"Pulkovo"],
		["Town_30",200,"Pogorevka"],
		["Town_31",200,"Rogovo"],
		["Town_32",200,"Kabanino"],
		["Town_33",300,"StarySobor"],
		["Town_34",200,"NovySobor"],
		["Town_35",200,"Vyshnoye"],
		["Town_36",250,"Mogilevka"],
		["Town_37",200,"Guglovo"],
		["Town_38",350,"Gorka"],
		["Town_39",200,"Shakhovka"],
		["Town_40",200,"Staroye"],
		["Town_41",200,"Msta"],
		["Town_42",200,"Dolina"],
		["Town_43",200,"Orlovets"],
		["Town_44",200,"Polana"],
		["Town_45",200,"Nadezhdino"],
		["Town_46",200,"Dubrovka"]
];

// Chernarus town and city array
//Marker Name, Radius, City Name
cityList = [
		["Town_0",600,"Chernogorsk"],
		["Town_1",200,"Prigorodki"],
		["Town_2",200,"Pusta"],
		["Town_3",600,"Elektro"],
		["Town_4",200,"Kamyshovo"],			
		["Town_5",200,"Tulga"],
		["Town_6",250,"Solnychniy"],
		["Town_7",200,"Nizhnoye"],
		["Town_8",500,"Berezino City"],
		["Town_9",500,"Berezino Dock"],
		["Town_10",250,"Khelm"],
		["Town_11",200,"Olsha"],
		["Town_12",350,"Krasnostav"],
		["Town_13",250,"Gvozdno"],
		["Town_14",300,"Grishino"],
		["Town_15",200,"Petrovka"],
		["Town_16",200,"Lopatino"],
		["Town_17",300,"Vybor"],
		["Town_18",250,"Pustoshka"],
		["Town_19",200,"Myshkino"],
		["Town_20",200,"Sosnovka"],
		["Town_21",300,"Zelenogorsk"],
		["Town_22",200,"Pavlovo"],
		["Town_23",200,"Kamenka"],
		["Town_24",200,"Komarovo"],
		["Town_25",200,"Balota"],
		["Town_26",200,"Bor"],
		["Town_27",200,"Drozhino"],
		["Town_28",200,"Kozlovka"],
		["Town_29",200,"Pulkovo"],
		["Town_30",200,"Pogorevka"],
		["Town_31",200,"Rogovo"],
		["Town_32",200,"Kabanino"],
		["Town_33",300,"StarySobor"],
		["Town_34",200,"NovySobor"],
		["Town_35",200,"Vyshnoye"],
		["Town_36",250,"Mogilevka"],
		["Town_37",200,"Guglovo"],
		["Town_38",350,"Gorka"],
		["Town_39",200,"Shakhovka"],
		["Town_40",200,"Staroye"],
		["Town_41",200,"Msta"],
		["Town_42",200,"Dolina"],
		["Town_43",200,"Orlovets"],
		["Town_44",200,"Polana"],
		["Town_45",200,"Nadezhdino"],
		["Town_46",200,"Dubrovka"]
];

cityListNW = [
		["Town_14",300,"Grishino"],
		["Town_15",200,"Petrovka"],
		["Town_16",200,"Lopatino"],
		["Town_17",300,"Vybor"],
		["Town_18",250,"Pustoshka"],
		["Town_19",200,"Myshkino"],
		["Town_20",200,"Sosnovka"],
		["Town_30",200,"Pogorevka"],
		["Town_31",200,"Rogovo"],
		["Town_32",200,"Kabanino"],
		["Town_33",300,"StarySobor"]
];

cityListNE = [
		["Town_7",200,"Nizhnoye"],
		["Town_8",500,"Berezino City"],
		["Town_9",500,"Berezino Dock"],
		["Town_10",250,"Khelm"],
		["Town_11",200,"Olsha"],
		["Town_12",350,"Krasnostav"],
		["Town_13",250,"Gvozdno"],
		["Town_34",200,"NovySobor"],
		["Town_38",350,"Gorka"],
		["Town_43",200,"Orlovets"],
		["Town_44",200,"Polana"],
		["Town_46",200,"Dubrovka"]
];

cityListSW = [
		["Town_0",600,"Chernogorsk"],
		["Town_21",300,"Zelenogorsk"],
		["Town_22",200,"Pavlovo"],
		["Town_23",200,"Kamenka"],
		["Town_24",200,"Komarovo"],
		["Town_25",200,"Balota"],
		["Town_26",200,"Bor"],
		["Town_27",200,"Drozhino"],
		["Town_28",200,"Kozlovka"],
		["Town_29",200,"Pulkovo"],
		["Town_35",200,"Vyshnoye"],
		["Town_45",200,"Nadezhdino"]
];
cityListSE = [
		["Town_1",200,"Prigorodki"],
		["Town_2",200,"Pusta"],
		["Town_3",600,"Elektro"],
		["Town_4",200,"Kamyshovo"],
		["Town_5",200,"Tulga"],
		["Town_6",250,"Solnychniy"],
		["Town_36",250,"Mogilevka"],
		["Town_37",200,"Guglovo"],
		["Town_39",200,"Shakhovka"],
		["Town_40",200,"Staroye"],
		["Town_41",200,"Msta"],
		["Town_42",200,"Dolina"]
];



cityLocations = [];
