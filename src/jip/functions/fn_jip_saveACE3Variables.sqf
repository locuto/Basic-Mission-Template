params["_unit"];
private ["_jipACE3Variables"];

_jipACE3Variables = [];

// Medical
_jipACE3Variables set [0, _unit getVariable ["ace_medical_pain", 0]];
_jipACE3Variables set [1, _unit getVariable ["ace_medical_morphine", 0]];
_jipACE3Variables set [2, _unit getVariable ["ace_medical_bloodVolume", 100]];
_jipACE3Variables set [3, _unit getVariable ["ACE_isUnconscious", false]];
_jipACE3Variables set [4, _unit getVariable ["ace_medical_tourniquets", [0,0,0,0,0,0]]];
_jipACE3Variables set [5, _unit getVariable ["ace_medical_openWounds", []]];
_jipACE3Variables set [6, _unit getVariable ["ace_medical_bandagedWounds", []]];
_jipACE3Variables set [7, _unit getVariable ["ace_medical_internalWounds", []]];
_jipACE3Variables set [8, _unit getVariable ["ace_medical_lastUniqueWoundID", 1]];
_jipACE3Variables set [9, _unit getVariable ["ace_medical_heartRate", 80]];
_jipACE3Variables set [10, _unit getVariable ["ace_medical_heartRateAdjustments", []]];
_jipACE3Variables set [11, _unit getVariable ["ace_medical_bloodPressure", [80,120]]];
_jipACE3Variables set [12, _unit getVariable ["ace_medical_peripheralResistance", 100]];
_jipACE3Variables set [13, _unit getVariable ["ace_medical_fractures", []]];
_jipACE3Variables set [14, _unit getVariable ["ace_medical_triageLevel", 0]];
_jipACE3Variables set [15, _unit getVariable ["ace_medical_triageCard", []]];
_jipACE3Variables set [16, _unit getVariable ["ace_medical_salineIVVolume", 0]];
_jipACE3Variables set [17, _unit getVariable ["ace_medical_plasmaIVVolume", 0]];
_jipACE3Variables set [18, _unit getVariable ["ace_medical_bloodIVVolume", 0]];
_jipACE3Variables set [19, _unit getVariable ["ace_medical_bodyPartStatus", [0,0,0,0,0,0]]];
_jipACE3Variables set [20, _unit getVariable ["ace_medical_airwayStatus", 100]];
_jipACE3Variables set [21, _unit getVariable ["ace_medical_airwayOccluded", false]];
_jipACE3Variables set [22, _unit getVariable ["ace_medical_airwayCollapsed", false]];
_jipACE3Variables set [23, _unit getVariable ["ace_medical_addedToUnitLoop", false]];
_jipACE3Variables set [24, _unit getVariable ["ace_medical_inCardiacArrest", false]];
_jipACE3Variables set [25, _unit getVariable ["ace_medical_hasLostBlood", 0]];
_jipACE3Variables set [26, _unit getVariable ["ace_medical_isBleeding", false]];
_jipACE3Variables set [27, _unit getVariable ["ace_medical_hasPain", false]];
_jipACE3Variables set [28, _unit getVariable ["ace_medical_painSuppress", 0]];
_jipACE3Variables set [29, damage _unit];

// Roles
_jipACE3Variables set [30, _unit getVariable ["ace_medical_medicClass", nil]];
_jipACE3Variables set [31, _unit getVariable ["ACE_IsEngineer", nil]];
_jipACE3Variables set [32, _unit getVariable ["ACE_IsEOD", nil]];

_jipACE3Variables

//============================================= END OF FILE =============================================//
