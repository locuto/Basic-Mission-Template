//=======================================================================================================//
// File: bmt_safeStart_init.sqf                                                                          //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/11                                                                             //
// Description: This script configures the safe start feature.                                           //
//                                                                                                       //
//              Arguments:                                                                               //
//               - None                                                                                  //
//                                                                                                       //
// Changes: 1.0 (2017/11/11) First public version.                                                       //
//=======================================================================================================//

bmt_var_safeStartTime = getNumber (missionConfigFile >> "bmt_config" >> "bmt_config_safeStartTime");

if (bmt_var_safeStartTime > 0) then {
    if (hasInterface) then {
        player allowDamage false;
    };

    if (isServer) then {
        bmt_script_safeStartHandle = [] spawn {
            waitUntil {sleep 5; time > bmt_var_safeStartTime};
            {
                if (hasInterface) then {
                    player allowDamage true;
                };
            } remoteExecCall ["bis_fnc_call", 0, true];
        };
    };
} else {
    systemChat format ["ERROR (bmt_safeStart_configure.sqf): safe start is enabled but the time is equal or less than 0."];
};

//============================================= END OF FILE =============================================//
