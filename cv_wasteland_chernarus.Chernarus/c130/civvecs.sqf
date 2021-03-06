//C130 Cargo drop for wasteland by Signaller

if !((getPlayerUID player) in serverAdministrators) exitWith {hint "SiG Server Admin access only"}; //uncomment to make avalable for server admins only

if ((getPosATL herc select 2) < 50) exitWith {hint "Altitude too low! fly above 50 metres!"}; // stop drops below 50 metres
private ["_car","_mags","_rnd","_weapon","_mag"];
_car = _this select 0;

// Random weapons array

vweps = [

	"AK_107_kobra",
	"AK_47_M",
	"AK_47_S",
	"AK_74",
	"BAF_L85A2_RIS_ACOG",
	"m8_compact",
	"G36A_camo",
	"FN_FAL",
	"G36a",
	"SCAR_H_CQC_CCO",
	"M1014","M16A2",
	"m16a4","M4A1_Aim",
	"MP5A5","Sa58V_EP1",
	"Saiga12K",
	"SCAR_L_CQC",
	"Pecheneg",
	"BAF_L86A2_ACOG",
	"BAF_L85A2_RIS_SUSAT",
	"Sa61_EP1","UZI_EP1" //note, no comma at end of array 
];
 
 
// Random civilian vehicle array
                
_cvec = [

	"car_hatchback",
	"hilux1_civil_1_open",
	"hilux1_civil_2_covered",
	"hilux1_civil_3_open",
	"datsun1_civil_1_open",
	"datsun1_civil_3_open",
	"datsun1_civil_2_covered",
	"LadaLM",
	"car_sedan",
	"SkodaGreen",
	"Lada2",
	"V3S_Civ",
	"VWGolf",
	"Lada1_TK_CIV_EP1",
	"S1203_TK_CIV_EP1",
	"UAZ_Unarmed_TK_CIV_EP1",
	"ATV_US_EP1",
	"datsun1_civil_3_open",
	"S1203_ambulance_EP1" //note, no comma at end of array 
];

_car = _cvec select floor (random (count _cvec)) createvehicle getpos c130;
  		_car setFuel (0.50);
  		_car setDamage (random 0.50);
    
    		// Animate ramp
		sleep 1;
		herc animate ["ramp_top", 1];
		herc animate ["ramp_bottom", 1];
		
		// Detach object (drop)
		sleep 2;
		deTach _car;
		_car attachTo [herc,[0,-18,-2.5]];
    


	//Set authenticity
	_car setVariable["original",1,true];

sleep 0.1;
		deTach _car;
		_car setPos [(getPos _car select 0),(getPos _car select 1),(getPos _car select 2)-0];

		// Create parachute and smoke
		sleep 2;
		_Parachute = "ParachuteBigWest_EP1" createVehicle position _car;
		_Parachute setPos (getPos _car);
		_smoke = "smokeShellgreen" createVehicle position _car;
		_smoke setPos (getPos _car);
		_car attachTo [_Parachute,[0,0,-0.0]];
		_smoke attachTo [_Parachute,[0,0,-1.5]];
		// close ramp again
		sleep 1;
		
		herc animate ["ramp_top", 0];
		herc animate ["ramp_bottom", 0];
		
	Hint "Cargo dropped";
	
     
		// Wait until on ground
		waitUntil {(getPos _car select 2) < 2};
		deTach _car;
		sleep 3;
		_car setPos [(getPos _car select 0),(getPos _car select 1),0.001];
		sleep 1;
		    	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;



//Grabs carname from array in execVM


_num = floor (random 100);
if (_num < 75) then { _car addWeaponCargoGlobal ["Binocular", 1]};
if (_num < 15) then { _car addWeaponCargoGlobal ["NVgoggles", 1]};

//Get Random Gun From randomWeapons Array.
_weapon = vweps select (random (count vweps - 1));
_mag = (getArray (configFile >> "Cfgweapons" >> _weapon >> "magazines")) select 0;

//Add guns and magazines, note the Global at the end..
_car addMagazineCargoGlobal [_mag,1];
_car addMagazineCargoGlobal [_mag,(random 4)];
_car addWeaponCargoGlobal [_weapon,1];


		// Delete parachute
		sleep 15;
		
		deleteVehicle _Parachute;
		sleep 5;