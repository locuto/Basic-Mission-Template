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

private _unitGroup = tolower (groupId (group player));

// Identify which faction the unit belongs to.
private _unitFaction = player getVariable ["bmt_var_unitFaction", ""];

if (_unitFaction isEqualTo "") then {
    _unitFaction = toLower (faction player);
};

// Use leader faction if unit's faction is different.
private _factionLeader = (leader group player) getVariable ["bmt_var_unitFaction", ""];

if (_factionLeader isEqualTo "") then {
    _factionLeader = toLower (faction (leader group player));
};

if !(_unitFaction isEqualTo _factionLeader) then {
    _unitFaction = _factionLeader;
};

private _unitSide = tolower format ["%1", side player];

// Try first if there is a specific marker for respawning the group, next try if there is a specific
// faction marker for respawning, and last try if there is a side marker (respawn_west, respawn_east, ...)
private _couldRespawn = false;
{
    private _respawnMarkerName = format ["respawn_%1", _x];
    if (getMarkerColor _respawnMarkerName != "") exitWith {
        player setPosATL [getMarkerPos _respawnMarkerName select 0, getMarkerPos _respawnMarkerName select 1, 0];
        _couldRespawn = true;
    };
} forEach [_unitGroup, _unitFaction, _unitSide];

// If it is not possible to respawn, kill the player and disable further respawn.
if (!_couldRespawn) then {
    player setVariable ["bmt_var_numRespawns", -1, true];
    player setDamage 1;
    sleep 2;
    "normal" cutText ["Not possible to respawn anywhere. There are no suitable respawn markers!", "PLAIN"];
};

//============================================= END OF FILE =============================================//
