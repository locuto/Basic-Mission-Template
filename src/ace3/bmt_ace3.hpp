//=======================================================================================================//
// File: bmt_ace3.hpp                                                                                    //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/11/26                                                                             //
// Description: This file declares the functions that will be available if this module is used during    //
//              the mission. In this case it declares functions related to Advanced Combat Environment 3 //
//              (ACE 3).                                                                                 //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Especifies that this component has been loaded.
#ifdef BMT_COMPONENTS
    #define BMT_COMPONENTS_ACE3
#endif

// Define the functions of this component.
#ifdef BMT_FUNCTIONS_INTERNAL
    class ace3 {
        file = "src\ace3\functions";
        class ace3_assignWounds      { };
        class ace3_config_preInit    { PreInit = 1; };
        class ace3_config_postInit   { PostInit = 1; };
    };
#endif

// Define configurable parameters at mission start.
#ifdef BMT_PARAMETERS
    //===================================================================================================//
    // Delimiter                                                                                         //
    //===================================================================================================//
    class bmt_paramLine_ace3 {
        title = "========== ACE 3 configuration";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Spectator: Use ACE3 spectator mode instead of BI's End Game Spectator                             //
    // Default option: ACE 3 Spectator.                                                                  //
    //===================================================================================================//
    class bmt_param_ace3_spectator {
        title = "ACE 3 Spectator mode";
        values[] = {0,1};
        texts[] = {"BI (End Game)", "ACE 3 Spectator"};
        default = BMT_ACE3_SPECTATOR;
    };
#endif

#ifdef BMT_CBA_SETTINGS
    // Advanced Combat Environment 3 (ACE 3)
    #include "..\..\missionConfig\ace3\cba_settings\bmt_ace3_cba_settings.hpp"
    #include "..\..\missionConfig\ace3\cba_settings\bmt_ace3_cba_settings_advancedBallistics.hpp"
    #include "..\..\missionConfig\ace3\cba_settings\bmt_ace3_cba_settings_advancedFatigue.hpp"
    #include "..\..\missionConfig\ace3\cba_settings\bmt_ace3_cba_settings_medical.hpp"
    #include "..\..\missionConfig\ace3\cba_settings\bmt_ace3_cba_settings_repair.hpp"
    #include "..\..\missionConfig\ace3\cba_settings\bmt_ace3_cba_settings_scopes.hpp"
    #include "..\..\missionConfig\ace3\cba_settings\bmt_ace3_cba_settings_ui.hpp"
#endif

//============================================= END OF FILE =============================================//
