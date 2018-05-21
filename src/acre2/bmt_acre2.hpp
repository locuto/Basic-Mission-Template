//=======================================================================================================//
// File: bmt_acre2.hpp                                                                                   //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/11/26                                                                             //
// Description: This file declares the functions that will be available if this module is used during    //
//              the mission. In this case it declares functions related to radio, frequency and babel    //
//              configuration of Advanced Combat Radio Environment 2 (ACRE 2).                           //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Especifies that this component has been loaded.
#ifdef BMT_COMPONENTS
    #define BMT_COMPONENTS_ACRE2
#endif

// Define the functions of this component.
#ifdef BMT_FUNCTIONS_INTERNAL
    class acre2 {
        file = "src\acre2\functions";
        class acre2_addRadios          { };
        class acre2_configureChannels  { };
        class acre2_configureLanguages { };
        class acre2_configurePresets   { };
        class acre2_removeRadios       { };
    };
#endif

// Define configurable parameters at mission start.
#ifdef BMT_PARAMETERS
    //===================================================================================================//
    // Delimiter                                                                                         //
    //===================================================================================================//
    class bmt_paramLine_acre2 {
        title = "========== ACRE 2 configuration";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Redistribute radios?                                                                              //
    // Radios are distributed to the different units. The radios that are assigned can be controlled by  //
    // the variables bmt_acre2_riflemanRadio and bmt_array_riflemanRadio for rifleman radios,            //
    // bmt_acre2_shortRangeRadio and bmt_array_shortRangeRadio for short range radios and                //
    // bmt_acre2_longRangeRadio and bmt_array_longRangeRadio for long range radio.                       //
    //   - false: radios are not distributed.                                                            //
    //   - true: radios are distributed.                                                                 //
    // Default option: true.                                                                             //
    //===================================================================================================//
    class bmt_param_acre2_distributeRadios {
        title = "Distribute radios";
        values[] = {0, 1};
        texts[] = {"No", "Yes"};
        default = BMT_ACRE2_DISTRIBUTE_RADIOS;
    };

    //===================================================================================================//
    // Configure radio channels?                                                                         //
    // Frequencies are defined in "missionConfig/scripts/core/bmt_core_commonVariables.sqf".             //
    //   - false: channels are not configured.                                                           //
    //   - true: radio channels are configured depending on the squad, fireteam and radio type.          //
    // Default option: true.                                                                             //
    //===================================================================================================//
    class bmt_param_acre2_configureChannels {
        title = "Configure radio channels";
        values[] = {0, 1};
        texts[] = {"No", "Yes"};
        default = BMT_ACRE2_CONFIGURE_CHANNELS;
    };

    //===================================================================================================//
    // Configure babel languages?                                                                        //
    // Babel languages are defined in "missionConfig/acre2/bmt_acre2_configuration.sqf".                 //
    //   - false: babel is not configured.                                                               //
    //   - true: babel languages are configured.                                                         //
    // Default option: true.                                                                             //
    //===================================================================================================//
    class bmt_param_acre2_configureBabel {
        title = "Configure babel languages";
        values[] = {0, 1};
        texts[] = {"No", "Yes"};
        default = BMT_ACRE2_CONFIGURE_BABEL;
    };
#endif

#ifdef BMT_CBA_SETTINGS
    // Advanced Combat Radio Environment 2 (ACRE 2)
    #include "..\..\missionConfig\acre2\cba_settings\bmt_acre2_cba_settings.hpp"
#endif

#ifdef BMT_ACRE_NETWORKS

    class networkCommand {
        displayName = "Command";

        side = "west";
        class ACRE_PRC343 {
            roles[] = {"me", "rfl", "rflat", "rfluav", "gr", "ar", "aar", "dm", "mg", "amg", "at", "aat", "aa", "aaa", "en", "exp", "divme", "divexp", "div", "hplt","ccrw"};
            networkConfiguration[] = {
                {"Romeo"},
                {"Mike"},
                {"Punisher"}, {"Punisher 1"}, {"Punisher 2"}, {"Punisher 3"},
                {"Lezo"}, {"Lezo 1"}, {"Lezo 2"}, {"Lezo 3"},
                {"Warrior"},
                {"Wolf"}, {"Wolf 1"}, {"Wolf 2"}, {"Wolf 3"},
                {"Emergencia"},
                {"Aereo"}, {"Halcon"}, {"Medevac"}, {"Eagle"}, {"Papa Bear"}
            };
        };

        class ACRE_PRC152 {
            roles[] = {"pl", "psg", "rto", "fo", "jtac", "sl", "tl", "sn", "sp", "divsl"};
            networkConfiguration[] = {
                {"Romeo", 60},
                {"Mike", 61},
                {"Punisher", 62},
                {"Lezo", 63},
                {"Warrior", 64},
                {"Wolf", 65},
                {"Emergencia", 92},
                {"Sierra", 93}
            };
        };

        class ACRE_PRC117F : ACRE_PRC152 {
            roles[] = {"rto", "fo"};
        };
    };

    class networkAir : networkCommand {
        class ACRE_PRC117F {
            roles[] = {"jtac"};
            networkConfiguration[] = {
                {"Romeo", 60},
                {"Emergencia", 92},
                {"Sierra", 93},
                {"Sierra 1", 93.025},
                {"Sierra 2", 93.050},
                {"Eagle", 94},
                {"Eagle 1", 94.025},
                {"Eagle 2", 94.050}
            };
        };
    };

    class networkLezo : networkCommand {
        class ACRE_PRC152 {
            roles[] = {"pl", "psg", "rto", "fo", "jtac", "sl", "tl", "sn", "sp", "divsl"};
            networkConfiguration[] = {
                {"Romeo", 60},
                {"Mike", 61},
                {"Punisher", 62},
                {"Lezo", 63},
                {"Lezo 1", 63.025},
                {"Lezo 2", 63.050},
                {"Lezo 3", 63.075},
                {"Warrior", 64},
                {"Wolf", 65},
                {"Emergencia", 92},
                {"Sierra", 93}
            };
        };
    };
#endif

//============================================= END OF FILE =============================================//
