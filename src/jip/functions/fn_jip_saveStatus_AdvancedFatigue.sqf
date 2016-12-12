//=======================================================================================================//
// File: fn_jip_saveStatus_AdvancedFatigue.sqf                                                           //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2016/11/12                                                                             //
// Description: This function stores global client variables related to ACE advanced fatigue in order to //
//              persist them.                                                                            //
//                                                                                                       //
//              Arguments:                                                                               //
//               - 0: unit that whill have its ACE advanced fatigue.                                     //
//                                                                                                       //
// Changes: 1.0 (2016/11/12) First public version.                                                       //
//=======================================================================================================//

params ["_unit"];
private ["_ace_advancedfatigue"];

_ace_advancedfatigue = [];
_ace_advancedfatigue pushback ["ace_advanced_fatigue_ae1Reserve", ace_advanced_fatigue_ae1Reserve];
_ace_advancedfatigue pushback ["ace_advanced_fatigue_ae2Reserve", ace_advanced_fatigue_ae2Reserve];
_ace_advancedfatigue pushback ["ace_advanced_fatigue_anReserve", ace_advanced_fatigue_anReserve];
_ace_advancedfatigue pushback ["ace_advanced_fatigue_anFatigue", ace_advanced_fatigue_anFatigue];
_ace_advancedfatigue pushback ["ace_advanced_fatigue_muscleDamage", ace_advanced_fatigue_muscleDamage];

_unit setVariable ["bmt_var_ace_advancedfatigue", _ace_advancedfatigue, true];
//============================================= END OF FILE =============================================//
