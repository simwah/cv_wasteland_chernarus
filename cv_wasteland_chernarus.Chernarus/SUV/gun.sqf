//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: MarKeR
//////////////////////////////////////////////////////////////////
_car = _this select 0;
_caller = _this select 1;
_turret = _this select 2;

_car animate ["HideGun_01", 0];
_car animate ["CloseCover1", 0];
_car animate ["CloseCover2", 0];

player action ["moveToTurret", _car,[0]];


player setVariable ["pfront", false,true];
player setVariable ["gunner", true,true];
player setVariable ["bleft", false,true];
player setVariable ["bright", false,true];