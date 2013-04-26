//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: MarKeR
//////////////////////////////////////////////////////////////////
_car = _this select 0;
_caller = _this select 1;
_closeP = _this select 2;

(gunner _car) action ["moveToCargo", _car,0];

_car animate ["HideGun_01", 1];
sleep 1;
_car animate ["CloseCover1", 1];
_car animate ["CloseCover2", 1];

player setVariable ["pfront", true,true];
player setVariable ["gunner", false,true];
player setVariable ["bleft", true,true];
player setVariable ["bright", true,true];