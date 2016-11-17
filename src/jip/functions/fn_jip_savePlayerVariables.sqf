//=======================================================================================================//
// File: fn_jip_savePlayerVariables.sqf                                                                  //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2016/11/12                                                                             //
// Description: This function saves player related variables (BMT and ACE variables) in case a client    //
//              disconnects. The variables are retrieved in the `fn_jip_retrievePlayerVariables.sqf`     //
//              fucntion.                                                                                //
//                                                                                                       //
//              Arguments:                                                                               //
//               - 0: unit that whill have its variables saved <OBJECT>.                                 //
//                                                                                                       //
// Changes: 1.0 (2016/11/12) First public version.                                                       //
//=======================================================================================================//

params["_unit"];
private ["_jipPlayerVariables"];

_jipPlayerVariables = [];

{
    if ((_x select [0,3] isEqualTo "ace") OR (_x select [0,3] isEqualTo "bmt") OR ((_x select [0,3] isEqualTo "cba"))) then {
        _jipPlayerVariables pushBack [_x, _unit getVariable _x];
    };
    //diag_log _jipPlayerVariables;
} forEach  (allVariables _unit);

_jipPlayerVariables

//============================================= END OF FILE =============================================//
