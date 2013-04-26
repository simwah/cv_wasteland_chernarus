private ["_unit","_veh"];
   _veh = _this select 0;
while {true} do {
    waitUntil {(_veh animationPhase "HideGun_01")==1};
      _unit = _veh turretUnit [0];
if (!(isNull _unit)) then {
    _unit action ["moveToCargo", _veh,2];
       hint "Open Hatch";
};
sleep 1;
};