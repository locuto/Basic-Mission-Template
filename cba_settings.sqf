//=======================================================================================================//
// File: cba_settings.sqf                                                                                //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/02/22                                                                             //
// Description: This file has the different cba settings for the modules. As of CBA version 3.3, using   //
//              it allows to still overwrite the settings using server configuration.                    //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

//=======================================================================================================//
// File: bmt_ace3_cba_settings.hpp                                                                       //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/02/22                                                                             //
// Description: This file has contains the different cba settings for ACE 3. If the force keyword is     //
//              present at the begining of the line, the setting will be forced on all clients. Server   //
//              configuration can still be used in order to overwrite mission forced settings.           //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//


#define BMT_CBA_SETTINGS
    #include "missionConfig\bmt_missionParameters_definitions.hpp"
    #include "bmt_components.hpp"
#undef BMT_CBA_SETTINGS

//============================================= END OF FILE =============================================//
