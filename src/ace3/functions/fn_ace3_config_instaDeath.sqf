//=======================================================================================================//
// File: fn_ace3_config_instaDeath.sqf                                                                   //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/10                                                                             //
// Description: This function configures the ACE3 medical feature instant death. After a certain amount  //
//              of game time, instant death will be disabled.                                            //
//                                                                                                       //
//              Arguments:                                                                               //
//               - None                                                                                  //
//                                                                                                       //
// Changes: 1.0 (2017/11/10) First public version.                                                       //
//=======================================================================================================//

if (bmt_param_ace3_preventInstaDeath == 1) then {
    bmt_var_instaDeathPreventedTime = getNumber (missionConfigFile >> "bmt_config" >> "bmt_config_preventInstaDeathTime");

    if (bmt_var_instaDeathPreventedTime <= 0 && bmt_param_ace3_preventInstaDeath == 1) then {
        diag_log format ["ERROR (bmt_ace3_handleInstaDeath.sqf): prevent instant death is enabled but the time is equal or less than 0."];
    } else {
        // Enable the prevent instant death ACE 3 option.
        if (hasInterface) then {
            ace_medical_preventInstaDeath = true;
        };

        // Negative time values mean that instant death is prevented during the whole mission.
        if (isServer && {bmt_var_instaDeathPreventedTime > 0} && {bmt_param_ace3_preventInstaDeath == 1}) then {
            bmt_script_ace3PreventInstantDeath = [] execVM "src/ace3/scripts/bmt_ace3_handleInstaDeath";
        };
    };
};

//============================================= END OF FILE =============================================//
