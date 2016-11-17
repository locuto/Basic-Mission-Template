//=======================================================================================================//
// File: fn_jip_retrieveACE3Variables.sqf                                                                //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2016/11/12                                                                             //
// Description: This function retrieves ACE3 related variables that were stored once a player            //
//              disconnected. In this way information regarding medical status, role (medic, engineer)   //
//              and if the unit had is preserved if a player drops but can rejoin later due to           //
//              connection problems. The variables are stored in the `fn_jip_saveACE3Variables`          //
//              fucntion.                                                                                //
//                                                                                                       //
//              Arguments:                                                                               //
//               - 0: unit that whill have its previous ACE3 variables restored <OBJECT>.                //
//               - 1: List containing the values of the ACE3 variables <ARRAY>.                          //
//                                                                                                       //
// Changes: 1.0 (2016/11/12) First public version.                                                       //
//=======================================================================================================//

params["_unit", "_jipACE3Variables"];

// Medical basic
[_unit, _jipACE3Variables select 0] call ace_medical_fnc_adjustPainLevel;
_unit setVariable ["ace_medical_morphine", _jipACE3Variables select 1, true];
_unit setVariable ["ace_medical_bloodVolume", _jipACE3Variables select 2, true];
_unit setVariable ["ACE_isUnconscious", _jipACE3Variables select 3, true];

// Medical Advanced: tourniquets
_unit setvariable ["ace_medical_tourniquets", _jipACE3Variables select 4, true];

// Medical Advanced: Delayed Medications (from tourniquets)
_unit setvariable ["ace_medical_occludedMedications", _jipACE3Variables select 5, true];

// Medical Advanced: wounds and injuries
_unit setvariable ["ace_medical_openWounds", _jipACE3Variables select 6, true];
_unit setvariable ["ace_medical_bandagedWounds", _jipACE3Variables select 7, true];
_unit setVariable ["ace_medical_internalWounds", _jipACE3Variables select 8, true];
_unit setvariable ["ace_medical_lastUniqueWoundID", _jipACE3Variables select 9, true];

// Medical Advanced: vitals
_unit setVariable ["ace_medical_heartRate", _jipACE3Variables select 10];
_unit setvariable ["ace_medical_heartRateAdjustments", _jipACE3Variables select 11];
_unit setvariable ["ace_medical_bloodPressure", _jipACE3Variables select 12];
_unit setVariable ["ace_medical_peripheralResistance", _jipACE3Variables select 13];

// Medical Advanced: fractures
_unit setVariable ["ace_medical_fractures", _jipACE3Variables select 14, true];

// Medical Advanced: triage card and logs
_unit setvariable ["ace_medical_triageLevel", _jipACE3Variables select 15, true];
_unit setvariable ["ace_medical_triageCard", _jipACE3Variables select 16, true];

// Medical Advanced: IVs
_unit setVariable ["ace_medical_salineIVVolume", _jipACE3Variables select 17, true];
_unit setVariable ["ace_medical_plasmaIVVolume", _jipACE3Variables select 18, true];
_unit setVariable ["ace_medical_bloodIVVolume", _jipACE3Variables select 19, true];

// Medical Advanced: damage storage
_unit setvariable ["ace_medical_bodyPartStatus", _jipACE3Variables select 20, true];

// Medical Advanced: airway
_unit setvariable ["ace_medical_airwayStatus", _jipACE3Variables select 21];
_unit setVariable ["ace_medical_airwayOccluded", _jipACE3Variables select 22, false];
_unit setvariable ["ace_medical_airwayCollapsed", _jipACE3Variables select 23, false];

// Medical Advanced: generic medical admin
_unit setvariable ["ace_medical_addedToUnitLoop", _jipACE3Variables select 24, true];
_unit setvariable ["ace_medical_inCardiacArrest", _jipACE3Variables select 25, true];
_unit setvariable ["ace_medical_hasLostBlood", _jipACE3Variables select 26, true];
_unit setvariable ["ace_medical_isBleeding", _jipACE3Variables select 27, true];
_unit setvariable ["ace_medical_hasPain", _jipACE3Variables select 28, true];
_unit setvariable ["ace_medical_painSuppress", _jipACE3Variables select 29, true];
_unit setvariable ["ace_medical_bleedingCoefficient", _jipACE3Variables select 30, true];

// Medical Advanced: medication
_unit setvariable ["ace_medical_allUsedMedication", _jipACE3Variables select 31, true];

_unit setDamage (_jipACE3Variables select 32);

// Roles
_unit setvariable ["ace_medical_medicClass", _jipACE3Variables select 33, true];
_unit setvariable ["ACE_IsEngineer", _jipACE3Variables select 34, true];
_unit setvariable ["ACE_IsEOD", _jipACE3Variables select 35, true];

// Earplugs
_unit setvariable ["ACE_hasEarPlugsin", _jipACE3Variables select 36, true];

//============================================= END OF FILE =============================================//
