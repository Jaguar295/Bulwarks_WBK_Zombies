_player = _this select 0;

_minigunKitPos = _player modelToWorld [0, 1, 1];

if (_minigunKitPos isEqualTo [0,0,0]) exitWith {};

_holder = createVehicle ["GroundWeaponHolder", _minigunKitPos, [], 0, "CAN_COLLIDE"];

_holder addWeaponCargoGlobal ["HLC_wp_M134Painless", 1];
_holder addMagazineCargoGlobal ["hlc_500rnd_762x51_belt", 1];

_chemlight = createVehicle ["Chemlight_red", _minigunKitPos, [], 0, "CAN_COLLIDE"];

[_chemlight] spawn {
    params ["_light"];

    sleep (1 * 60);

    if (!isNull _light) then {
        deleteVehicle _light;
    };
};