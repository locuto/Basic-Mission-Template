//=======================================================================================================//
// File: fn_jip_retrievePlayerVariables.sqf                                                                //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2016/11/12                                                                             //
// Description: This function retrieves player related variables that were stored once a player          //
//              disconnected. In this way information regarding medical status, role (medic, engineer),  //
//              number or respawns, ... is preserved if a player drops but can rejoin later due to       //
//              connection problems. The variables are stored in the `fn_jip_savePlayerVariables.sqf`    //
//              fucntion.                                                                                //
//                                                                                                       //
//              Arguments:                                                                               //
//               - 0: unit that whill have its player variables restored <OBJECT>       .                //
//               - 1: List containing the values of the player variables <ARRAY>.                        //
//                                                                                                       //
// Changes: 1.0 (2016/11/12) First public version.                                                       //
//=======================================================================================================//

params ["_unit", "_jipPlayerVariables"];

{
    _unit setVariable [_x select 0, _x select 1, true];
} forEach _jipPlayerVariables;

// Handle advanced fatigue
if (bmt_mod_ace3) then {
    private _position = bmt_array_advancedFatiguePlayers select bmt_var_advancedFatigueIndex;
    if (_position select 0 == name _unit) then {
        {
            call compile format ["%1 = %2;", _x select 0, _x select 1];
        } forEach (_position select 1);
    } else {
        diag_log format ["WARNING (fn_jip_retrievePlayerVariables.sqf): Trying to retrieve advanced fatigue status on a different player (%1). Local player: %2", _position select 0, name _unit];
    };
};

if (bmt_param_debugOutput == 1) then {
    diag_log format ["DEBUG (fn_jip_retrievePlayerVariables.sqf): Previous status successfully restored."];
};

player setVariable ["bmt_var_jip_StatusRetrieved", true];

//============================================= END OF FILE =============================================//
