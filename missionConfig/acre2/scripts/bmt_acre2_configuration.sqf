//=======================================================================================================//
// File: bmt_acre2_configuration.sqf                                                                     //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/04/27                                                                             //
// Description: This document is used in order to define basic configuration parameters of the mod       //
//              Advanced Combat Radio Environment 2 (ACRE2) that can be found in:                        //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
//                                                                                                       //
//              Arguments:                                                                               //
//               - none                                                                                  //
//                                                                                                       //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
// Todo: Remove second argument after ACRE2 v2.7.0                                                       //
//=======================================================================================================//

//=======================================================================================================//
// Babel functionality configuration.                                                                    //
//=======================================================================================================//

bmt_acre2_languages =   [
                            ["english", "English"],
                            ["russian", "Russian"],
                            ["arabic", "Arabic"],
                            ["farsi", "Farsi"],
                            ["greek", "Greek"],
                            ["german", "German"],
                            ["spanish", "Spanish"]
                        ];

bmt_acre2_language_rhsusaf  = ["english"];
bmt_acre2_language_rhsafrf  = ["russian"];
bmt_acre2_language_rhsins   = ["arabic"];
bmt_acre2_language_blufor   = ["english"];
bmt_acre2_language_opfor    = ["farsi"];
bmt_acre2_language_indfor   = ["greek"];
bmt_acre2_language_fia      = ["english", "greek"];
bmt_acre2_language_civ      = ["greek"];
bmt_acre2_language_bwa3     = ["german"];
bmt_acre2_language_ffaa     = ["spanish"];
bmt_acre2_language_fow_usmc = ["english"];
bmt_acre2_language_fallback = ["english"];

//=======================================================================================================//
// Configuration of radio assignement depending on role.                                                 //
//=======================================================================================================//

// Variable to control wether the radio presets are shared between sides.
//   - false: sides share radio presets.
//   - true: sides do not share radio presets.
bmt_acre2_differentPresets = true;

// Variable to determine if the radio defined in "bmt_acre2_riflemanRadio", an AN/PRC 343 by default,
// is distributed to everybody indenpendently to the unit's role.
//    - false: only the units in "bmt_array_riflemanRadio" will get this radio.
//    - true: all units will receive the radio defined in "bmt_acre2_riflemanRadio".
bmt_acre2_riflemanRadioEverybody = true;

// Radio assigned to regular soldiers.
bmt_acre2_riflemanRadio = "ACRE_PRC343";

// Radio assigned to officers.
bmt_acre2_shortRangeRadio = "ACRE_PRC152";

// Radio assigned to RTO.
bmt_acre2_longRangeRadio = "ACRE_PRC117F";

//============================================= END OF FILE =============================================//
