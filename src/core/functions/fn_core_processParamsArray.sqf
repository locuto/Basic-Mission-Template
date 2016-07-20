//=======================================================================================================//
// File: fn_core_processParamsArray.sqf                                                                  //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/03/08                                                                             //
// Description: This function processes the paramsArray matrix.                                          //
//              Arguments:                                                                               //
//               - none                                                                                  //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

private ["_paramArray", "_paramName", "_paramValue"];

_paramArray = paramsArray;
{
    _paramName = (configName ((missionConfigFile >> "Params") select _forEachIndex));
    if (!(["paramLine", _paramName, true] call BIS_fnc_inString)) then {
        _paramValue = _paramName call BIS_fnc_getParamValue;
        call compile format["%1 = %2", _paramName, _paramValue];
        if (isServer) then {
          publicVariable _paramName;
        };
    };
} forEach _paramArray;

//============================================= END OF FILE =============================================//
