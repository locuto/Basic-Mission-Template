
params ["_unit", "_uid", "_name"];
private ["_loadout", "_jipEquipment", "_jipEquipment_List", "_found"];

_loadout = getUnitLoadout _unit;
_jipEquipment =  [_uid, _name, _loadout];
_jipEquipment_List = missionNamespace getVariable ["bmt_arrayMission_jipDisconnect", nil];

if (isNil "_jipEquipment_List") then {
    _jipEquipment_List = [];
    _jipEquipment_List = [_jipEquipment];
} else {

    // Check first if an entry for the player already exists.
    _found = false;
    {
        if ((_x select 0 == _uid) AND (_x select 1 == _name)) then {
            _found = true;
            _x set [2, _loadout];
            if (bmt_param_debugOutput == 1) then {
                player sidechat format ["DEBUG (fn_jip_saveGear.sqf): Gear of player %1 with UID %2 already exists. Overwriting it.", _name, _uid];
            };
        };
    } forEach _jipEquipment_List;

    if (!_found) then {
        _jipEquipment_List = _jipEquipment_List + [_jipEquipment];
    };
};

missionNamespace setVariable ["bmt_arrayMission_jipDisconnect", _jipEquipment_List, true];

if (bmt_param_debugOutput == 1) then {
    player sidechat format ["DEBUG (fn_jip_saveGear.sqf): Gear of player %1 with UID %2 saved.", _name, _uid];
    player sidechat format ["DEBUG (fn_jip_saveGear.sqf): Variable with UID %1 and profile name %2.", (_jipEquipment_List select 0) select 0, (_jipEquipment_List select 0) select 1];
    player sideChat format ["DEBUG (fn_jip_saveGear.sqf): Number of entries %1", count _jipEquipment_List];
};

false
