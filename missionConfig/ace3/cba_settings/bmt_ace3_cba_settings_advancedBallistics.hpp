//=======================================================================================================//
// File: bmt_ace3_cba_settings_advancedBallistics.hpp                                                    //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/01/21                                                                             //
// Description: This file has contains the different cba settings for ACE 3 Advanced Ballistics. If the  //
//              force keyword is present at the begining of the line, the setting will be forced on all  //
//              clients. Server configuration can still be used in order to overwrite mission forced     //
//              settings.                                                                                //
// Changes: 1.0 (2017/01/21) First public version.                                                       //
//=======================================================================================================//

force ace_advanced_ballistics_enabled = BMT_ACE3_BALLISTICS;
force ace_advanced_ballistics_muzzleVelocityVariationEnabled = true;
force ace_advanced_ballistics_ammoTemperatureEnabled = true;
force ace_advanced_ballistics_barrelLengthInfluenceEnabled = true;
force ace_advanced_ballistics_bulletTraceEnabled = true;
force ace_advanced_ballistics_simulationInterval = 0.05;

//============================================= END OF FILE =============================================//
