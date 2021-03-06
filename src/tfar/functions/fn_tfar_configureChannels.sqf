//=======================================================================================================//
// File: fn_tfar_configureChannels.sqf                                                                   //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/07/25                                                                             //
// Description: This function configures the channels and frequencies on the different radios of the     //
//              Task Force Arrowhead Radio (TFAR)                                                        //
//              https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki                         //
//                                                                                                       //
//              Arguments:                                                                               //
//               - 0: unit whose radios must be configured <OBJECT>.                                     //
//                                                                                                       //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Variable declarations.
params [["_unit", objNull]];

private _unitGroup = _unit getVariable ["bmt_var_unitGroup", ["nil", -1]];
private _unitOptions = _unit getVariable ["bmt_var_configEquipment", "nil"];

private _unitRole = "";
if ((typeName _unitOptions) == "STRING") then {
    _unitRole = _unitOptions;
} else {
    _unitRole = _unitOptions select 0; // First entry must always be the unit role
};

if (_unitGroup select 0 != "nil") then {
    private _squadChannel = 0;

    // Configure the frequencies of short range radios.
    if ((_unitRole in bmt_array_shortRangeRadio) or (_unitRole in bmt_array_riflemanRadio)) then {
        private _channel = 0;
        private _fireteamChannel = 0;
        {
            private _frequencies = bmt_array_frequenciesShortRange select _forEachIndex;
            if (_unitGroup select 0 in _x) then {
                _squadChannel = _channel;
                _fireteamChannel = _squadChannel + (_unitGroup select 1);

                if (_unitGroup select 1 >= count _x) exitWith {
                   diag_log format ["ERROR (fn_tfar_configureChannels.sqf): Fire team %1-%2 is not defined.", _x select 0, _unitGroup select 1];
                };

                {
                    [(call TFAR_fnc_activeSwRadio), _channel + 1, format ["%1",_x]] call TFAR_fnc_SetChannelFrequency;
                    _channel = _channel + 1;
                } forEach _frequencies;

            } else {
                [(call TFAR_fnc_activeSwRadio), _channel + 1, format ["%1",_frequencies select 0]] call TFAR_fnc_SetChannelFrequency;
                _channel = _channel + 1;
            };
        } forEach bmt_array_groups;

        // Select the active channel depending on the fire team.
        [(call TFAR_fnc_activeSwRadio), _fireteamChannel] call TFAR_fnc_setSwChannel;

        // Units with a radio superior to the "Rifleman Radio" have the additional channel configured. It
        // defaults to the squad channel.
        if (_unitGroup select 1 != 0) then{
            if (_unitRole in bmt_array_shortRangeRadio) then {
                [(call TFAR_fnc_activeSwRadio), _squadChannel] call TFAR_fnc_setAdditionalSwChannel;
            };
        };
    };

    // Configure long range radios.
    // Active channel defaults to squad channel while additional channel defaults to command channel.
    // assignats i amb comandament al canal alternatiu.
    if (_unitRole in bmt_array_longRangeRadio) then {
        private _commandChannel = 0;
        private _channel = 0;
        {
            private _frequencies = bmt_array_frequenciesLongRange select _forEachIndex;
            [(call TFAR_fnc_activeLrRadio), _channel + 1, format ["%1",_frequencies select 0]] call TFAR_fnc_SetChannelFrequency;
            if (bmt_var_tfar_commandingGroup in _x) then {
                _commandChannel = _channel;
            };
            _channel = _channel + 1;
        } forEach bmt_array_groups;

        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _squadChannel] call TFAR_fnc_setLrChannel;
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _commandChannel] call TFAR_fnc_setAdditionalLrChannel;
    };
};

//============================================= END OF FILE =============================================//
