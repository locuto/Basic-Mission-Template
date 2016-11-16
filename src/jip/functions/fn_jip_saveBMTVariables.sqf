params["_unit"];
private ["_bmtVariables"];

_bmtVariables = [];

_bmtVariables set [0, _unit getVariable ["bmt_var_playerAlive", true]];
_bmtVariables set [1, _unit getVariable ["bmt_var_numRespawns", -1]];

_bmtVariables

//============================================= END OF FILE =============================================//
