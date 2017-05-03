//=======================================================================================================//
// File: bmt_acre2_cba_settings.sqf                                                                      //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/02/22                                                                             //
// Description: This file has contains the different cba settings for ACRE 2. If the force keyword is    //
//              present at the begining of the line, the setting will be forced on all clients. Server   //
//              configuration can still be used in order to overwrite mission forced settings.           //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

force acre_sys_core_postmixGlobalVolume = 1;
force acre_sys_core_premixGlobalVolume = 1;
force acre_sys_core_spectatorVolume = 1;
force acre_sys_core_unmuteClients = true;

// ACRE2: Switch to dedicated TS channel
//        - false: players are not moved to a dedicated TS channel.
//        - true: players are movede to a dedicated TS channel that best matches the server name.
acre_sys_core_ts3ChannelSwitch = true;

// ACRE2: Interference.
//        - false: radio interference will not be modelled when two players transmit on the same frequency.
//        - true: interferences will be modelled when simultaneously transmitting on the same frequency.
force acre_sys_core_interference = true;

// ACRE2: Duplex
//        - false: Transmissions will not be received when radio is transmitting.
//        - true: Transmission will be received when transmitting.
force acre_sys_core_fullDuplex = false;

// ACRE2: Antena direction
//        - false: antena direction is simulated.
//        - true: the signal simulation model ignores antena direction.
force acre_sys_core_ignoreAntennaDirection = false;

// ACRE2: Loss of signal due to terrain. Value between 0 and 1.
//        - 0: Deactivates loss of signal due to terrain.
//        - 1: Loss of signal totally simulated.
force acre_sys_core_terrainLoss = 0.7;

// ACRE2: Allow AI detect players when they speak.
//        - false: AI cannot listen to players.
//        - true: AI can listen to, and therefore detect players using a inverse quadratic model.
force acre_sys_core_revealToAI = true;

//ACRE2: Crew members auto-join passenger intercom?
//        - false: Crew members must manually connect to passenger intercom.
//        - true: Crew members automatically join passenger intercom.
force acre_sys_core_crewAutoJoinPassengerIntercom = false;

//============================================= END OF FILE =============================================//
