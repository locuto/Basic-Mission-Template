//=======================================================================================================//
// File: bmt_acre2.hpp                                                                                   //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2016/12/17                                                                             //
// Description: This file declares the functions that will be available if this module is used during    //
//              the mission. In this case it declares functions related to radio configuration a the     //
//              briefing screen.                                                                         //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Especifies that this component has been loaded.
#ifdef BMT_COMPONENTS
    class briefing {};
#endif

// Define the functions of this component.
#ifdef BMT_FUNCTIONS_INTERNAL
    class briefing {
        file = "src\briefing\functions";
        class briefing_listRadioFrequencies { };
    };
#endif

//============================================= END OF FILE =============================================//
