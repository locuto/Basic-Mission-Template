//=======================================================================================================//
// File: fn_configEquipment.sqf                                                                          //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2018/05/16                                                                             //
// Description: This function equips the unit according to a specified role and depending on the defined //
//              faction.                                                                                 //
//                                                                                                       //
// Arguments:                                                                                            //
//    - 0: Unit <OBJECT>                                                                                 //
//    - 1: Unit role <STRING><OPTIONAL>                                                                  //
//    - 2: Unit faction <STRING><OPTIONAL>                                                               //
//                                                                                                       //
// Return:                                                                                               //
//      None                                                                                             //
//                                                                                                       //
// Changes: 1.0  (2015/11/26) First public version.                                                      //
//          2.0  (2018/05/16) Rewrite.                                                                   //
//=======================================================================================================//

#include "../script_component.hpp"

params [["_role", ""], "_unit", ["_faction", ""]];

if (_role isEqualTo "") then {
    _role = _unit getVariable ["bmt_var_configEquipment", "rfl"];
} else {
    _unit setVariable ["bmt_var_configEquipment", _role, true];
};

if (_faction isEqualTo "") then {
    _faction = _unit getVariable ["bmt_var_unitFaction", faction _unit];
} else {
    _unit setVariable ["bmt_var_unitFaction", _faction, true];
};

// Begin gear assignement depending on unit's role.
_unit setVariable ["bmt_var_init_configEquipmentReady", false, true];
systemChat format ["faction player %1", _faction];
private _configEntry = missionConfigFile >> "CfgLoadouts" >> _faction;


if (!isClass _configEntry) exitWith {
    systemChat format ["Faction not found %1", _faction];
};

_configEntry = _configEntry >> _role;

if (!isClass _configEntry) exitWith {
    systemChat format ["Role not found %1", _role];
};

[_unit] call compile (getText (_configEntry >> "preLoadout"));

{
    if (isArray (_configEntry >> _x)) then {
        [_unit, getArray (_configEntry >> _x), _x] call bmt_fnc_configEquipment_replaceGear;
    };
} forEach ["uniform", "vest", "backpack", "headgear", "goggles", "binoculars", "nightvision"];

{
    if (isArray (_configEntry >> _x)) then {
        [_unit, getArray (_configEntry >> _x), _x] call bmt_fnc_configEquipment_replaceWeapon;
    };
} forEach ["primaryWeapon", "secondaryWeapon", "launcher"];


private _backpackItems = getArray (_configEntry >> "backpackItems");
{
    if (isArray (_configEntry >> _x)) then {
        systemChat format ["%1", _forEachIndex];
        _backpackItems append ([_unit, getArray (_configEntry >> _x), _x] call bmt_fnc_configEquipment_replaceItem);
    };
} forEach ["magazines", "items"];

private _couldNotAdd = [_unit, _backpackItems, "backpackitems"] call bmt_fnc_configEquipment_replaceItem;

if !(_couldNotAdd isEqualTo []) then {
    systemChat format ["The following items could not be added %1", _couldNotAdd];
};

{
    if (isArray (_configEntry >> _x)) then {
        [_unit, getArray (_configEntry >> _x), _x] call bmt_fnc_configEquipment_replaceLinkItems;
    };
} forEach ["map", "radio", "gps", "compass", "watch"];

_unit setUnitRank (selectrandom (getArray (configEntry >> "rank")));
[_unit, (getArray (configEntry >> "insignia"))] call bis_fnc_setUnitInsignia;

private _languages = getArray (_configEntry >> "languages");
_unit setVariable ["bmt_acre2_languages", _languages, true];

[_unit] call compile (getText (_configEntry >> "postLoadout"));

_unit setVariable ["bmt_var_init_configEquipmentReady", true, true];

//============================================= END OF FILE =============================================//
