//=======================================================================================================//
// File: bmt_acre2_configurePresets.sqf                                                                  //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/05/10                                                                             //
// Description: This script configures the presets for the different radios of Advanced Combat Radio     //
//              Environment 2 (ACRE2) http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home  //
//                                                                                                       //
//              Arguments:                                                                               //
//               - none                                                                                  //
//                                                                                                       //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

private["_radioList", "_nameList", "_presetList", "_frequencyList", "_radio", "_presetName", "_name", "_channelName", "_channel", "_presetData"];

_radioList = ["ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F","ACRE_SEM52SL"];
_nameList = ["label", "description", "name"];
_presetList = ["default2","default3","default4"];

{
    _radio = _x;
    _name = _nameList select _forEachIndex;
    {
        _presetName = _x;
        _channel = 1;
        {
            _channelName = _x;
            _frequencyList = bmt_array_frequenciesShortRange select _forEachIndex;
            {
                _channelFrequency = _frequencyList select _forEachIndex;
                if (_radio == "ACRE_SEM52SL") then {
                    if (_channel < 12) then {
                        if ((_channelFrequency < 46.000) OR (_channelFrequency > 65.975)) then {
                            player sideChat format ["WARNING (fn_acre2_configurePresets.sqf): Channel frequency for channel %1 out of range for SEM-52SL. It should be between 46.000 and 65.975 but it is %2.", _channel, _channelFrequency];
                        } else {
                            [_radio, _presetName, _channel, "frequencyTX", _channelFrequency] call acre_api_fnc_setPresetChannelField;
                            [_radio, _presetName, _channel, "frequencyRX", _channelFrequency] call acre_api_fnc_setPresetChannelField;
                        };
                    } else {
                        player sideChat format ["WARNING (fn_acre2_configurePresets.sqf): Too many frequencies to configure for SEM-52SL radio."];
                    };
                } else {
                    [_radio, _presetName, _channel, _name, toUpper (_channelName select _forEachIndex)] call acre_api_fnc_setPresetChannelField;
                    [_radio, _presetName, _channel, "frequencyTX", _channelFrequency] call acre_api_fnc_setPresetChannelField;
                    [_radio, _presetName, _channel, "frequencyRX", _channelFrequency] call acre_api_fnc_setPresetChannelField;
                };
                _channel = _channel + 1;
            } forEach _channelName;
        } forEach bmt_array_groups;
    } forEach _presetList;
} forEach _radioList;

//============================================= END OF FILE =============================================//
