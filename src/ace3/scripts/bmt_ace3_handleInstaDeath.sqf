//=======================================================================================================//
// File: bmt_ace3_handleInstaDeath.sqf                                                                   //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/10                                                                             //
// Description: This scripts handles the ACE3 medical feature instant death. After a certain amount of   //
//              game time, instant death will be disabled.                                               //
//                                                                                                       //
//              Arguments:                                                                               //
//               - None                                                                                  //
//                                                                                                       //
// Changes: 1.0 (2017/11/10) First public version.                                                       //
//=======================================================================================================//

if (!isServer) exitWith {};

waitUntil {sleep 1; time > bmt_var_instaDeathPreventedTime};

{ace_medical_preventInstaDeath = false;} remoteExecCall ["bis_fnc_call", 0, true];

//============================================= END OF FILE =============================================//
