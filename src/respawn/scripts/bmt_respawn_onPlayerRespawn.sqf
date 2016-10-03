//=======================================================================================================//
// File: bmt_respawn_onPlayerRespawn.sqf                                                                 //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/10/02                                                                             //
// Description: This document configures the onPlayerRespawn event. For the moment ACE3 spectator mode   //
//              (http://ace3mod.com/wiki/feature/spectator.html) in case it is available, defaulting to  //
//              the vanila one if ACE3 is not loaded.                                                    //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Parameters passed when onPlayerRespawn.
params [["_unit",objNull], ["_oldUnit",objNull], ["_respawn",0], ["_respawnDelay",0]];
private ["_unitRole"];

// End the mission if there are no alive units and respawn of type "NONE" or "BIRD".
if (_respawn <= 1) then {
    player setVariable ["bmt_var_playerAlive", false, true];
    sleep 5;
    cutText ["You are dead! Entering spectator mode.", "PLAIN DOWN"];
    sleep 5;
    if ({alive _x} count allPlayers <= 0) exitWith {
        [] remoteExecCall ["bmt_fnc_endMission", 0, true];
    };
};

// If there is respawn of type BIRD.
if (_respawn == 1) then {
    [_oldUnit] call bmt_fnc_respawn_enterSpectator;
} else {

    // Hide custom respawn counter.
    [false] call bmt_fnc_respawn_respawnCounter;

    [] call bmt_fnc_respawn_exitSpectator;

    // Assign equipment before death or default one depending on the role
    if (bmt_param_respawn_saveGear == 1) then {
        _unit setUnitLoadout(_unit getVariable["bmt_array_savedLoadout",[]]);
    } else {
        _unitRole = _unit getVariable "bmt_var_configEquipment";
        [_unitRole, _unit] call bmt_fnc_configEquipment;
    };

    [] call bmt_fnc_respawn_moveToMarker;
};

//============================================= END OF FILE =============================================//
