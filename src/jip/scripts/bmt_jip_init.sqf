//=======================================================================================================//
// File: bmt_jip_init.sqf                                                                                //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/04/03                                                                             //
// Description: This script checks whether JIP players are supported or not. If JIP is not allowed after //
//              a certain amount of time, the player is killed.                                          //
//                                                                                                       //
//              Arguments:                                                                               //
//               - none                                                                                  //
//                                                                                                       //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

private ["_initialPlayer"];

// If time limit is a positive value check until when JIP players are allowed. With a negative value, JIP
// players are allowed to enter the game at any time.
if (bmt_param_jip_enabled == 1) then {
    bmt_var_jipAllowedTime = getNumber (missionConfigFile >> "bmt_config" >> "bmt_config_jipAllowedTime");

    if (bmt_var_jipAllowedTime == 0.0) then {
        player sideChat format ["ERROR (bmt_jip_init.sqf): JIP is enabled but JIP allowed time is set to 0 in bmt_missionConfig.hpp!"];
    };
} else {
    bmt_var_jipAllowedTime = 0.0;
};

if (isServer) then {
    if (bmt_param_jip_enabled == 1) then {
        if (bmt_var_jipAllowedTime > 0) then {
            bmt_script_jipServerTime = [] spawn {
                waitUntil {sleep 1; time > bmt_var_jipAllowedTime};
                missionNamespace setVariable ["bmt_var_jip_allowed", false, true];
            };
        };

        if (bmt_param_jip_saveGear == 1) then {
            bmt_missionEH_jip = addMissionEventHandler ["HandleDisconnect", {[_this select 0, _this select 2, _this select 3] call bmt_fnc_jip_saveGear;}];
        };

    } else {
        // If JIP is disabled deny entry to JIP players.
        missionNamespace setVariable ["bmt_var_jip_allowed", false, true];
    };
};

if (hasInterface) then {
    if (bmt_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (bmt_jip_init.sqf): player is JIP: %1. JIP is enabled: %2.", didJip, missionnamespace getVariable ["bmt_var_jip_allowed", true]];
    };

    if (didJiP) then {

        // Check if the player is in the initial player list
        _initialPlayer = [player] call bmt_fnc_jip_check_allowedJIPPlayerList;

        // Kill the player if JIP is not allowed and exit.
        if (!(missionNamespace getVariable ["bmt_var_jip_allowed", true]) AND !_initialPlayer) exitWith {
            // Wait a little before killing the player.
            sleep 1;

            // Remove any possibility of respawning.
            player setVariable ["bmt_var_numRespawns", -1, true];
            player setDamage 1;

            sleep 5;
            "normal" cutText ["This mission does not support JIP. Be punctual next time!", "PLAIN"];
        };

        // Since JIP is still allowed, add the new player to the list of allowed players.
        if (!_initialPlayer) then {
            [player] call bmt_fnc_jip_addTo_allowedJIPPlayerList;
        };

        // Teleport to squad. Thanks to Columndrum for the elegant KeyDown concept. Enhanced by TheMagnetar.
        player setVariable ["bmt_var_jipTeleport_enabled", true];
        hint "Press F11 to teleport to your squad or any other friendly unit";

        [] spawn {
            waituntil{!(isNull (findDisplay 46))};
            bmt_displayEventHandler_jipTeleport = (findDisplay 46) displayAddEventHandler ["KeyDown","[_this, player] call bmt_fnc_jip_teleport"];
        };

        if (bmt_param_jip_saveGear == 1) then {
            [player] call bmt_fnc_jip_retrieveGear;
        };
    } else {
        // Initialise a list of all players that initially connect.
        [player] remoteExecCall ["bmt_fnc_jip_init_allowedJIPPlayerList", 2, false];
    };
};

//============================================= END OF FILE =============================================//
