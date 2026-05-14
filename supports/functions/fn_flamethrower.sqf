_player = _this select 0;

_flameKitPos = _player modelToWorld [0, 1, 1];

if (_flameKitPos isEqualTo [0,0,0]) exitWith {};

_holder = createVehicle ["GroundWeaponHolder", _flameKitPos, [], 0, "CAN_COLLIDE"];

_holder addWeaponCargoGlobal ["M2_Flamethrower_01_F", 1];
_holder addMagazineCargoGlobal ["M2_Fuel_Tank", 1];
_holder addBackpackCargoGlobal ["M2_Flamethrower_Balloons_Pipe", 1];

_chemlight = createVehicle ["Chemlight_red", _flameKitPos, [], 0, "CAN_COLLIDE"];

[_chemlight] spawn {
    params ["_light"];

    sleep (1 * 60);

    if (!isNull _light) then {
        deleteVehicle _light;
    };
};