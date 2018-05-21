//=======================================================================================================//
// File: fn_acre2_addRadios.sqf                                                                          //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/04/28                                                                             //
// Description: This function adds the defined radios to a unit's inventory in case the default radios   //
//              that are assigned are not suficient. Advanced Combat Radio Environment 2 (ACRE2)         //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
//                                                                                                       //
//              Arguments:                                                                               //
//               - 0: unit whose radios must be configured <OBJECT>.                                     //
//                                                                                                       //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Variable declarations.
params [["_unit", objNull]];

private _unitOptions = _unit getVariable ["bmt_var_configEquipment", "undefined"];
private _network = _unit getVariable ["bmt_var_acreNetwork", ""];

private _unitRole = "";
if ((typeName _unitOptions) == "STRING") then {
    _unitRole = _unitOptions;
} else {
    _unitRole = _unitOptions select 0; // First entry must always be the unit role
};

// Assign radios depending on the unit role (fn_configEquipment).
if (!(_unitRole isEqualTo "") && {!(_network isEqualTo "")}) then {

    private _networkEntries = missionConfigFile >> "CfgAcreNetworks";
    {
        private _networkEntry = toLower (configName _x);
        if (_networkEntry isEqualTo _network) then {
            {
                private _roles = getArray (_x >> "roles");
                private _radio = configName _x;
                //[_radio, toLower (configName _networkEntries)] call acre_api_fnc_setPreset;
                [_radio, _networkEntry] call acre_api_fnc_setPreset;

                if (_unitRole in _roles && {_unit canAdd _radio}) then {
                    _unit addItem _radio;
                };
            } forEach (configProperties [_x, "isClass _x", true]);
        };
    } forEach (configProperties [_networkEntries, "isClass _x", true]);
} else {
    diag_log format ["ERROR (fn_acre2_addRadios.sqf): Undefined unit role."];
};

//============================================= END OF FILE =============================================//
