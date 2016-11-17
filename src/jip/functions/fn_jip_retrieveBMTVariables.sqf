//=======================================================================================================//
// File: fn_jip_retrieveACE3Variables.sqf                                                                //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2016/11/12                                                                             //
// Description: This function retrieves variables defined by the Arma 3 Basic Mission Template. These    //
//              include number of respawns left and if the unit was alive or in spectator mode. The      //
//              variables are stored in the `fn_jip_saveBMTVariables` fucntion.                          //
//                                                                                                       //
//              Arguments:                                                                               //
//               - 0: unit that whill have its previous BMT variables restored <OBJECT>.                 //
//               - 1: List containing the values of the BMT variables <ARRAY>.                           //
//                                                                                                       //
// Changes: 1.0 (2016/11/12) First public version.                                                       //
//=======================================================================================================//

params["_unit", "_bmtVariables"];

_unit setVariable ["bmt_var_playerAlive", _bmtVariables select 0, true];
_unit setVariable ["bmt_var_numRespawns", _bmtVariables select 1, true];

//============================================= END OF FILE =============================================//
