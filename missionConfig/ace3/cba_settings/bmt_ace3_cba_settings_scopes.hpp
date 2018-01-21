//=======================================================================================================//
// File: bmt_ace3_cba_settings_scopes.hpp                                                                //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/01/21                                                                             //
// Description: This file has contains the different cba settings for ACE 3 Scopes. If the force         //
//              keyword is present at the begining of the line, the setting will be forced on all        //
//              clients. Server configuration can still be used in order to overwrite mission forced     //
//              settings.                                                                                //
// Changes: 1.0 (2017/01/21) First public version.                                                       //
//=======================================================================================================//

force ace_scopes_enabled = true;
force ace_scopes_forceUseOfAdjustmentTurrets = true;
force ace_scopes_correctZeroing = true;
force ace_scopes_overwriteZeroRange = true;
force ace_scopes_defaultZeroRange = 100;
force ace_scopes_zeroReferenceTemperature = 15;
force ace_scopes_zeroReferenceBarometricPressure = 1013.25;
force ace_scopes_zeroReferenceHumidity = 0;
force ace_scopes_deduceBarometricPressureFromTerrainAltitude = false;
ace_scopes_useLegacyUI = false;
force ace_scopes_simplifiedZeroing = false;

//============================================= END OF FILE =============================================//
