//=======================================================================================================//
// File: bmt_safeStart.hpp                                                                               //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/11                                                                             //
// Description: This file declares the functions that will be available if this module is used during    //
//              the mission. In this case it declares functions related to safe start.                   //
// Changes: 1.0 (2017/11/11) First public version.                                                       //
//=======================================================================================================//

// Especifies that this component has been loaded.
#ifdef BMT_COMPONENTS
    class safeStart {};
#endif

// Define configurable parameters at mission start.
#ifdef BMT_PARAMETERS
    //===================================================================================================//
    // Delimiter                                                                                         //
    //===================================================================================================//
    class bmt_paramLine_safeStart {
        title = "========== Safe Start configuration";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Safe start confiuration.                                                                          //
    //===================================================================================================//
    class  bmt_param_safeStart {
        title = "Safe start";
        values[] = {0, 1};
        texts[] = {"Disabled", "Enabled"};
        default = BMT_SAFE_START;
    };
#endif

//============================================= END OF FILE =============================================//
