//=======================================================================================================//
// File: bmt_acre2_init.sqf                                                                              //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/04/27                                                                             //
// Description: This script configures the Advanced Combat Radio Environment 2 (ACRE2) mod that can be   //
//              found in http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home               //
//                                                                                                       //
//              Arguments:                                                                               //
//               - none                                                                                  //
//                                                                                                       //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Include the configuration file.
#include "..\..\..\missionConfig\acre2\scripts\bmt_acre2_configuration.sqf"

// Configure presets for each radio.
if (bmt_param_acre2_configureChannels == 1) then {
    [] call bmt_fnc_acre2_configurePresets;
};

// Configure the client side.
if (hasInterface) then {

    if (bmt_param_acre2_configureBabel == 1) then {
        {
            _x call acre_api_fnc_babelAddLanguageType;
        } foreach bmt_acre2_languages;
    };

    if (didJIP) then {
        uiSleep 5;
        waitUntil {uiSleep 0.1; !isNull player};
    };

    [] execVM "src\acre2\scripts\bmt_acre2_initClient.sqf";
};

//============================================= END OF FILE =============================================//
