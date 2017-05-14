//=======================================================================================================//
// File: fn_briefing_listRadioFrequencies.sqf                                                            //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 17/16/2016                                                                             //
// Description: Function to list radio frequencies in the briefing.                                      //
//                                                                                                       //
//              Arguments:                                                                               //
//               - none                                                                                  //
//                                                                                                       //
// Changes:  1.0 (2016/12/17) First public version.                                                      //
//=======================================================================================================//

private _shortRangeFrequencies = ""; private _longRangeFrequencies = "";
private _channel = 1; private _block = 1;
{
    private _teamList = _x;
    private _frequencySRList = bmt_array_frequenciesShortRange select _forEachIndex;
    private _frequencyLRList = bmt_array_frequenciesLongRange select _forEachIndex;

    {
        private _frequency = _frequencySRList select _forEachIndex;
        private _team = _teamList select _forEachIndex;
        if (_forEachIndex == 0) then {
            _shortRangeFrequencies = _shortRangeFrequencies + format ["<font color='#00FFFF'>%1:</font> %2 MHz.", _team, _frequency];
        } else {
            _shortRangeFrequencies = _shortRangeFrequencies + format ["     <font color='#00FFFF'>%1:</font> %2 MHz.", _team, _frequency];
        };

        if (bmt_mod_acre2) then {
            _shortRangeFrequencies =  _shortRangeFrequencies + format [" AN/PRC 343 on block %1 channel %2.<br/>", _block, _channel];
        } else {
            _shortRangeFrequencies =  _shortRangeFrequencies + ".<br/>";
        };

        _channel = _channel + 1;
        if (_channel > 16) then {
            _channel = 1; _block = _block + 1;
        };
    } forEach _teamList;
    _shortRangeFrequencies = _shortRangeFrequencies + "<br/>";

    _longRangeFrequencies = _longRangeFrequencies + format ["<font color='#00FFFF'>%1:</font> %2 MHz.<br/>", _teamList select 0, _frequencyLRList select 0];
} forEach bmt_array_groups;

private _radioFrequencies = format ["<font color='#FF0000' size='18'>Short Range Radios</font><br/><br/>%1<font color='#FF0000' size='18'>Long Range Radios</font><br/><br/>%2", _shortRangeFrequencies, _longRangeFrequencies];

_radioFrequencies
