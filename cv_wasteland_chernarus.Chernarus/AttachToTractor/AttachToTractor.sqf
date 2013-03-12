////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// AttachToTractor scripts made by Baco
//
// What does it do? 	Make towingtractors operational to move planes and heli's anywere on a map, as long as they are present.
// How does it work? 	Jump in towingtractor and position in front of a plane or heli and 
// 			head nose to the plane or heli nose within 5 degrees, to get the towing option.
//
// To make these scripts work, place a trigger in the mission and:
// 1) let it trigger repeatable and by anyone
// 2) put in the "bedingung" field:		vehicle player != player and local player;
// 3) put in the "on act." field: 		myvec = vehicle player; temp = [myvec] execVM "AttachToTractor\AttachToTractor.sqf";
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
if not (local player) exitWith {};
_Tractor = _this select 0;
_vectype = typeof _Tractor;
_doexit = 1;
if(_vectype == "TowingTractor") then { _doexit = 0; };
if(_vectype == "tractor") then { _doexit = 0; };
if(_doexit == 1) exitWith {};
Tractorcargo = 0;
_actionadded = 0;
_cargo = nil;
hint format ["Welcome to towtruck Position in front of a plane or heli and head the towtruck nose to the plane or heli nose within 5 degrees, to get the towing option.", typeOf _Tractor];
while{ (alive _Tractor) && ((driver _Tractor) == player) } do 
{
	if (Tractorcargo == 0) then 
	{
		_nObject = nearestObject [_Tractor, "Air"];
		if not (isNull _nObject) then 
		{
			if ((_nObject distance _Tractor) > 18) then 
			{
				_Tractor removeAction actioncargo;
				_actionadded = 0;

				_TractorPos = getPosASL _Tractor;
				//hint format ["Position: x= %1, y= %2, z= %3.", (_TractorPos select 0), (_TractorPos select 1), (_TractorPos select 2)];
				//sleep 2;
			}
			else
			{
				if((_nObject != _cargo) && (_actionadded == 1)) then
				{
					_Tractor removeAction actioncargo;
					_actionadded = 0;
				};
				_TractorPos = getPosASL _Tractor;
				_TractorDir = getDir _Tractor;
				_CargoPos = getPosASL _nObject;
				_CargoDir = getDir _nObject;
				_TractorHeading = (((_TractorPos select 0) - (_CargoPos select 0)) atan2 ((_TractorPos select 1) - (_CargoPos select 1)));
				_TractorBearing = _TractorHeading - _CargoDir;
				if(_TractorBearing  > 180) then
				{
					_TractorBearing  = _TractorBearing  - 360;
				}else{
					if(_TractorBearing  < -180) then
					{
						_TractorBearing  = _TractorBearing  + 360;
					}
				};
				_CargoHeading = (((_CargoPos select 0) - (_TractorPos select 0)) atan2 ((_CargoPos select 1) - (_TractorPos select 1)));
				_CargoBearing = _CargoHeading - _TractorDir;
				if(_CargoBearing > 180) then
				{
					_CargoBearing = _CargoBearing - 360;
				}else{
					if(_CargoBearing < -180) then
					{
						_CargoBearing = _CargoBearing + 360;
					}
				};
				if( ((_TractorBearing  > -7) && (_TractorBearing  < 7)) && ((_CargoBearing  > -7) && (_CargoBearing  < 7)) && (_actionadded == 0) ) then
				{
					_actionadded = 1;
					_cargo = _nObject;
					actioncargo = _Tractor addAction [format ["Tow %1", typeOf _cargo], "AttachToTractor\AttachToTractor_start.sqf", _cargo];
				};
			};
		};
	}
	else
	{
		_Tractor removeAction actioncargo;
		_actionadded = 0;
	};
	sleep 0.1;
};
_Tractor removeAction actioncargo;
_Tractor removeAction actiondrop;
exit;