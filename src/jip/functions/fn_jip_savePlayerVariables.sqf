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
private ["_jipPlayerVariables", "_variablesToStore"];

_jipPlayerVariables = [];
_variablesToStore = ["bmt", "ace"];
{
    if ((_x select [0, 3] in _variablesToStore) then {
        // Hack for ace medical
        if (_x select [0, 11] isEqualTo "ace_medical") then {
            if (_x isEqualTo "ace_medical_medicClass") then {
                _jipPlayerVariables pushBack [_x, _unit getVariable _x];
            };
        } else {
            _jipPlayerVariables pushBack [_x, _unit getVariable _x];
        };
    };
} forEach  (allVariables _unit);

_jipPlayerVariables

//============================================= END OF FILE =============================================//
