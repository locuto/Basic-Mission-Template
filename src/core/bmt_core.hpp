//=======================================================================================================//
// File: bmt_comu.hpp                                                                                    //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/11/26                                                                             //
// Description: This file declares the functions that will be available if this module is used during    //
//              the mission. In this case it declares functions that declare common variables (with      //
//              global scope) that are used by other scripts in the template.                            //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Especifies that this component has been loaded.
#ifdef BMT_COMPONENTS
    class core {};
#endif

// Define the functions of this component.
#ifdef BMT_FUNCTIONS_INTERNAL
    class core {
        file = "src\core\functions";
        class core_checkConfiguration { postInit = 1; };
        class core_initBMTParams      { };
        class core_processParamsArray { preInit = 1;  };
        class core_processMods        { preInit = 1;  };
    };
#endif

// Define configurable parameters at mission start.
#ifdef BMT_PARAMETERS
    //===================================================================================================//
    // Debug: Variable to control the level of debug output. Activated by default.                       //
    //===================================================================================================//
    class bmt_param_debugOutput {
        title = "Debug Mode";
        values[] = {0, 1};
        texts[] = {"Deactivated", "Activated"};
        default = BMT_DEBUG;
    };
#endif
//============================================= END OF FILE =============================================//
