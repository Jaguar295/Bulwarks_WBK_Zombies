_player = _this select 0;

// Find safe position near player
_heliPos = [_player, 1, 15, 5, 0, 30, 0] call BIS_fnc_findSafePos;

// Spawn Little Bird (armed variant with pylons)
_littleBird = createVehicle ["B_Heli_Light_01_dynamicLoadout_F", _heliPos, [], 0, "FLY"];

// Optional: ensure clean default state
_littleBird setVehicleAmmo 1;
_littleBird setFuel 1;

// Put player into pilot seat
[_player, _littleBird] remoteExec ["moveInDriver", 0];