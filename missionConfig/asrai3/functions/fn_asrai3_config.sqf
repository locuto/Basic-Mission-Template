//=======================================================================================================//
// File: fn_asrai3_config.sqf                                                                            //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/09/29                                                                             //
// Description: This file allows for a more mission customised configuration of the mod ASR AI 3. The    //
//              changes made here override those present at the server. ASR AI 3 can be found in:        //
//               - http://www.armaholic.com/page.php?id=24080                                            //
//               - https://github.com/robalo/mods/tree/master/asr_ai3                                    //
//               - https://forums.bistudio.com/topic/163742-asr-ai-3/                                    //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

if (!bmt_mod_asrai3) exitWith {};

if (isServer) then {
    asr_ai3_main_enabled            = bmt_param_asrai3_enabled;        // All the other settings matter only if we have 1 here; set 0 to disable all scripted features
//    asr_ai3_main_radionet           = 1;        // AI groups share known enemy locations over radio
    asr_ai3_main_radiorange         = 700;      // Maximum range for AI radios (warning: increasing this impacts game performance); AI groups share known enemy locations over radio (set to 0 to disable)
    asr_ai3_main_seekcover          = 1;        // Set to 1 if AI should move to near cover in combat when they're exposed in the open, 0 to disable.
    asr_ai3_main_usebuildings       = 0.9;      // Chance the AI group members may enter nearby building positions (0 to 1 values, 0 will disable the feature).
    asr_ai3_main_getinweapons       = 0.5;      // Chance the AI group will mount nearby static and vehicle weapons in combat (0 to 1 values, 0 will disable the feature)
    asr_ai3_main_packNVG            = 1;        // Automatically un-equip NVG during the day (store them in the vest/backpack) and re-equip when it gets dark
    asr_ai3_main_disableAIPGfatigue = 1;        // Disables fatigue for AI units in player's group so they are able to keep up (0 - disabled, 1 - enabled)
    asr_ai3_main_onteamswitch       = 1;        // Teamswitch handler: makes unit switched into the group leader; prevents AI left in place from sending stupid orders (0 - disabled, 1 - enabled)
    asr_ai3_main_copymystance       = 1;        // When enabled AI will auto adjust to player stance changes (0 - disabled, 1 - enabled)
    asr_ai3_main_debug              = bmt_param_asrai3_debug;        // Log extra debugging info to RPT, create debug markers and hints (1-enabled, 0-disabled)

    asr_ai3_main_setskills          = 1;        // Override AI skills based on their unit type (faction, training etc.; 0 - disabled, 1 - enabled)
    asr_ai3_main_joinlast           = 2;        // Groups left with only this number of units will merge with nearest group of the same faction (set to 0 to disable)
    asr_ai3_main_removegimps        = 300;      // Units unable to walk for this time will separate from their group to prevent slowing it down (time in seconds, set 0 to disable)
    asr_ai3_main_rearm              = 40;       // Enable basic AI rearming (resupply radius in meters; set to 0 to disable feature)
    asr_ai3_main_gunshothearing     = 1.1;      // Gunshot hearing range coefficient (applied to shooter's weapon sound range; 0 will disable the feature)
//    asr_ai3_main_throwsmoke         = 0.8;      // AI throws smoke when advancing to cover (set 0 to disable or a number up to 1 to enable, higher number means better chance to do it)
//    asr_ai3_main_reactions          = {1,1,1};  // Infantry groups will randomly react with basic, scripted, random actions, to detecting the enemy or being shot at; format: [enableAttack,enableDefend,enableSupport].
//    asr_ai3_main_dynsvd             = 1;        // Enable dynamic view distance adjustment based on day/night and fog thickness on dedicated servers and headless clients
//    asr_ai3_main_dayscope           = 1;        // Prevent AI from using scope fire modes at night (reduced engagement range and accuracy);

    if ( bmt_param_debugOutput == 1 ) then {
        player sideChat format ["DEBUG (fn_asrai_config.sqf): ASR AI configured."];
    };
};

//============================================= END OF FILE =============================================//
