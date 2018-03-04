//=======================================================================================================//
// File: bmt_briefing_rhs_usarmy_wd.sqf                                                                  //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/02/22                                                                             //
// Description: This document generates the mission briefing for units belonging to the RHS faction      //
//              United States Army "rhs_faction_usarmy_d".                                               //
//              http://class.rhsmods.org/rhsusaf/CfgGroups_West_rhs_faction_usarmy_d.html                //
//                                                                                                       //
//              Arguments:                                                                               //
//               - none                                                                                  //
//                                                                                                       //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

//=======================================================================================================//
// NOTES: CREDITS.                                                                                       //
//=======================================================================================================//
private _credits = player createDiaryRecord ["diary", ["Credits","
Mission created by <font color='#00FFFF'>*** Authors ***</font> for the community <font color='#00FFFF'>*** name of the community ***</font>.
<br/><br/>
With the collaboration of Magnetar (A3-BMT template) and *** possible collaborators ***.
"]];

//=======================================================================================================//
// NOTES: RADIO.                                                                                         //
//=======================================================================================================//
private _radio = player createDiaryRecord ["diary", ["Radio frequencies", [] call bmt_fnc_briefing_listRadioFrequencies]];

//=======================================================================================================//
// NOTES: ADMINISTRATION/LOGISTICS.                                                                       //
//=======================================================================================================//
private _adminLog = player createDiaryRecord ["diary", ["Administration/Logistics","
<font color='#FF0000' size='18'>Support</font>
<br/>
*** Description, if they exist, of support units like CAS, field artillery, medevac, ... ***
<br/><br/>
<font color='#FF0000' size='18'>Supply</font>
<br/>
*** Troop supply: additional ammunition, ... ***
"]];

//=======================================================================================================//
// NOTES: INTEL.                                                                                         //
//=======================================================================================================//
private _intel = player createDiaryRecord ["diary", ["Intel","
*** Intelligence information. ***
<br/><br/>
<font color='#FF0000' size='18'>Enemy forces</font>
<br/>
*** Description of enemy forces.***
<br/><br/>
<font color='#FF0000' size='18'>Allied forces</font>
<br/>
*** Description of allied forces. ***
"]];

//=======================================================================================================//
// NOTES: MISSION AND EXECUTION.                                                                         //
//=======================================================================================================//
private _missionExecution = player createDiaryRecord ["diary", ["Mission and Execution","
<font color='#FF0000' size='18'>Mission</font>
<br/>
*** Mission description. ***
<br/><br/>
<font color='#FF0000' size='18'>Main tasks</font>
<br/>
- <font color='#00FFFF'>Main task 1</font>: *** Brief description ***.
<br/>
- <font color='#00FFFF'>Main task 2</font>: *** Brief description ***.
<br/><br/>
<font color='#FF0000' size='18'>Secondary tasks</font>
<br/>
- <font color='#00FFFF'>Secondary task 1</font>: *** Brief description ***.
<br/>
- <font color='#00FFFF'>Secondary task 2</font>: *** Brief description ***.
<br/><br/>
<font color='#FF0000' size='18'>Execution</font>
<br/>
*** Description, using bullet points, of how to execute the mission. ***
"]];

//=======================================================================================================//
// NOTES: SITUATION.                                                                                     //
//=======================================================================================================//
private  _situation = player createDiaryRecord ["diary", ["SITREP","
*** Brief description of the situation.***
"]];

//============================================= END OF FILE =============================================//
