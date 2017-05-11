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

private _ace_advancedFatigue = [];
_ace_advancedFatigue pushback ["ace_advanced_fatigue_ae1Reserve", ace_advanced_fatigue_ae1Reserve];
_ace_advancedFatigue pushback ["ace_advanced_fatigue_ae2Reserve", ace_advanced_fatigue_ae2Reserve];
_ace_advancedFatigue pushback ["ace_advanced_fatigue_anReserve", ace_advanced_fatigue_anReserve];
_ace_advancedFatigue pushback ["ace_advanced_fatigue_anFatigue", ace_advanced_fatigue_anFatigue];
_ace_advancedFatigue pushback ["ace_advanced_fatigue_muscleDamage", ace_advanced_fatigue_muscleDamage];

private _position = bmt_array_advancedFatiguePlayers select bmt_var_advancedFatigueIndex;
if (_position select 0 == name _unit) then {
    _position set [1, _ace_advancedFatigue];
    publicVariableServer "bmt_array_advancedFatiguePlayers";
} else {
    diag_log format ["WARNING (fn_jip_saveStatus_AdvancedFatigue.sqf): Trying to save advanced fatigue status on a different player (%1). Local player: %2", _position select 0, name _unit];
};

//============================================= END OF FILE =============================================//
