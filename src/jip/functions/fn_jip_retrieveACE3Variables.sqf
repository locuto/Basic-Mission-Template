params["_unit", "_jipACE3Variables"];

// Medical
_unit setVariable ["ace_medical_pain", _jipACE3Variables select 0, true];
_unit setVariable ["ace_medical_morphine", _jipACE3Variables select 1, true];
_unit setVariable ["ace_medical_bloodVolume", _jipACE3Variables select 2, true];
_unit setVariable ["ACE_isUnconscious", _jipACE3Variables select 3, true];
_unit setvariable ["ace_medical_tourniquets", _jipACE3Variables select 4, true];
_unit setvariable ["ace_medical_openWounds", _jipACE3Variables select 5, true];
_unit setvariable ["ace_medical_bandagedWounds", _jipACE3Variables select 6, true];
_unit setVariable ["ace_medical_internalWounds", _jipACE3Variables select 7, true];
_unit setvariable ["ace_medical_lastUniqueWoundID", _jipACE3Variables select 8, true];
_unit setVariable ["ace_medical_heartRate", _jipACE3Variables select 9, true];
_unit setvariable ["ace_medical_heartRateAdjustments", _jipACE3Variables select 10, true];
_unit setvariable ["ace_medical_bloodPressure", _jipACE3Variables select 11, true];
_unit setVariable ["ace_medical_peripheralResistance", _jipACE3Variables select 12, true];
_unit setVariable ["ace_medical_fractures", _jipACE3Variables select 13, true];
_unit setvariable ["ace_medical_triageLevel", _jipACE3Variables select 14, true];
_unit setvariable ["ace_medical_triageCard", _jipACE3Variables select 15, true];
_unit setVariable ["ace_medical_salineIVVolume", _jipACE3Variables select 16, true];
_unit setVariable ["ace_medical_plasmaIVVolume", _jipACE3Variables select 17, true];
_unit setVariable ["ace_medical_bloodIVVolume", _jipACE3Variables select 18, true];
_unit setvariable ["ace_medical_bodyPartStatus", _jipACE3Variables select 19, true];
_unit setvariable ["ace_medical_airwayStatus", _jipACE3Variables select 20, true];
_unit setVariable ["ace_medical_airwayOccluded", _jipACE3Variables select 21, true];
_unit setvariable ["ace_medical_airwayCollapsed", _jipACE3Variables select 22, true];
_unit setvariable ["ace_medical_addedToUnitLoop", _jipACE3Variables select 23, true];
_unit setvariable ["ace_medical_inCardiacArrest", _jipACE3Variables select 24, true];
_unit setvariable ["ace_medical_hasLostBlood", _jipACE3Variables select 25, true];
_unit setvariable ["ace_medical_isBleeding", _jipACE3Variables select 26, true];
_unit setvariable ["ace_medical_hasPain", _jipACE3Variables select 27, true];
_unit setvariable ["ace_medical_painSuppress", _jipACE3Variables select 28, true];
_unit setDamage (_jipACE3Variables select 29);

// Roles
_unit setvariable ["ace_medical_medicClass", _jipACE3Variables select 30, true];
_unit setvariable ["ACE_IsEngineer", _jipACE3Variables select 31, true];
_unit setvariable ["ACE_IsEOD", _jipACE3Variables select 32, true];

//============================================= END OF FILE =============================================//
