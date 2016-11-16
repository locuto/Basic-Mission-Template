//=======================================================================================================//
// File: fn_jip_retrieveGear.sqf                                                                         //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2016/11/12                                                                             //
// Description: This function applies a gear previously stored in the profileNamespace variable          //
//              "bmt_arrayProfile_savedLoadout". This is only true if the current mission name is equal  //
//              to the one stored in "bmt_varProfile_missionName". See also the script:                  //
//              "src/jip/bmt_jip_saveGear.sqf".                                                          //
//              Arguments:                                                                               //
//               - 0: unit to equip <OBJECT>.                                                            //
// Changes: 1.0 (2016/11/12) First public version.                                                       //
//=======================================================================================================//

params ["_unit"];
private ["_jipEquipment_List", "_uid", "_name", "_found"];

_jipEquipment_List = missionNamespace getVariable ["bmt_arrayMission_jipDisconnect", nil];

if (isNil "_jipEquipment_List") exitWith {
    player sideChat format ["ERROR (fn_jip_retrieveGear): Variable bmt_arrayMission_jipDisconnect is not defined."];
};

_found = false;

{
    if ((_x select 0 == getPlayerUID _unit) AND (_x select 1 == profileName)) then {
        _unit setUnitLoadout [_x select 2, false];
        _found =  true;
    };
} forEach _jipEquipment_List;

if (!_found) then {
    player sideChat format ["ERROR (fn_jip_retrieveGear): Could not find your previous gear!!"];
} else {
    if (bmt_param_debugOutput == 1) then {
        player sidechat format ["DEBUG (fn_jip_saveGear.sqf): Gear of player %1 with UID %2 retrieved.", profileName, getPlayerUID _unit];
    };
};

//============================================= END OF FILE =============================================//
