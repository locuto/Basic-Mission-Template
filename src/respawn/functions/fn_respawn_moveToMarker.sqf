//=======================================================================================================//
// File: fn_respawn_moveToMarker.sqf                                                                     //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/10/02                                                                             //
// Description: This function enters spectator mode. The spectator mode that is used, ACE3 spectator or  //
//              BI's End Game Spectator, depends on mission parameters.                                  //
//                                                                                                       //
//              Arguments:                                                                               //
//               - none                                                                                  //
//                                                                                                       //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

private ["_unitFaction", "_unitGroup", "_respawnMarkerName",];

// Try first if there is a specific marker for respawning the group.
_unitGroup = tolower (groupId (group player));
_respawnMarkerName = format ["respawn_%1", _unitGroup];

if (getMarkerColor _respawnMarkerName != "") exitWith {
    player setPosATL [getMarkerPos _respawnMarkerName select 0, getMarkerPos _respawnMarkerName select 1, 0];
};

// Next, try if there is a specific faction marker for respawning.
_unitFaction = tolower (faction player);

// Use leader faction if unit's faction is different.
if (_unitFaction != toLower (faction (leader group player))) then {
    _unitFaction = toLower (faction (leader group player));
};

_respawnMarkerName = format ["respawn_%1", _unitFaction];

if (getMarkerColor _respawnMarkerName != "") exitWith {
    player setPosATL [getMarkerPos _respawnMarkerName select 0, getMarkerPos _respawnMarkerName select 1, 0];
};

// If a specific faction marker does not exist, use side marker (respawn_west, respawn_east, ...)
_respawnMarkerName = format ["respawn_%1", tolower format ["%1", side player]];
if (getMarkerColor _respawnMarkerName != "") exitWith {
    player setPosATL [getMarkerPos _respawnMarkerName select 0, getMarkerPos _respawnMarkerName select 1, 0];
};

// If it is not possible to respawn, kill the player and disable further respawn.
player setVariable ["bmt_var_numRespawns", -1, true];
player setDamage 1;
sleep 2;
"normal" cutText ["Not possible to respawn anywhere. There are no suitable respawn markers!", "PLAIN"];

//============================================= END OF FILE =============================================//
