//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: MarKeR
//////////////////////////////////////////////////////////////////

_car = _this select 0;
(gunner _car) action ["moveToCargo", _car,0];

_car animate ["HideGun_01", 1];
sleep 1;
_car animate ["CloseCover1", 1];
_car animate ["CloseCover2", 1];

_open =  _car addaction [("<t color=""#FF3300"">" + ("Move To Gunner") +"</t>"), "SUV\gun.sqf",false,9,false,true,"","Local player && vehicle player != player && !(player getVariable 'gunner')"];

_cargoR = _car addaction [("<t color=""#FF3300"">" + ("Move To Back Right") +"</t>"), "SUV\closeR.sqf",false,8,false,true,"","Local player && vehicle player != player && !(player getVariable 'bright')"];

_cargoL = _car addaction [("<t color=""#FF3300"">" + ("Move To Back Left") +"</t>"), "SUV\closeL.sqf",false,7,false,true,"","Local player && vehicle player != player && !(player getVariable 'bleft')"];

_cargoP = _car addaction [("<t color=""#FF3300"">" + ("Move To Passenger") +"</t>"), "SUV\closeP.sqf",false,6,false,true,"","Local player && vehicle player != player && !(player getVariable 'pfront')"]; 