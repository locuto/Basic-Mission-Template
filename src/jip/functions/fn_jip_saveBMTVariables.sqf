//=======================================================================================================//
// File: fn_jip_retrieveACE3Variables.sqf                                                                //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2016/11/12                                                                             //
// Description: This function saves the variables defined by the Arma 3 Basic Mission Template in case a //
//              a client disconnects. These include number of respawns left and if the unit was alive or //
//              in spectator mode. The variables are retrieved in the `fn_jip_retrieveBMTVariables`      //
//              fucntion.                                                                                //
//                                                                                                       //
//              Arguments:                                                                               //
//               - 0: unit that whill have its BMT variables saved <OBJECT>.                             //
//                                                                                                       //
// Changes: 1.0 (2016/11/12) First public version.                                                       //
//=======================================================================================================//

params["_unit"];
private ["_bmtVariables"];

_bmtVariables = [];

_bmtVariables set [0, _unit getVariable ["bmt_var_playerAlive", true]];
_bmtVariables set [1, _unit getVariable ["bmt_var_numRespawns", -1]];

_bmtVariables

//============================================= END OF FILE =============================================//
