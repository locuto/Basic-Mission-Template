//=======================================================================================================//
// File: bmt_aar_assistantAutomaticRifleman.sqf                                                          //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "aar" (Assistant Automatic Rifleman)                    //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

_unit addHeadgear "fow_h_usmc_m1";
_unit forceAddUniform "fow_u_usmc_p41_01_private";
_unit addVest "fow_v_usmc_garand";
_unit addbackpack "fow_b_usmc_m1928";

_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs", 1];

(uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot", 8];
(uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 2];

(vestContainer _unit) addMagazineCargoGlobal ["fow_8Rnd_762x63", 4];
_unit addWeapon "fow_w_m1_garand";

(vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2", 2];
(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];

(uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp", 3];
_unit addWeapon "fow_w_m1911";

(unitBackpack _unit) addMagazineCargoGlobal ["fow_20Rnd_762x63", 10];
(unitBackpack _unit) addItemCargoGlobal ["ACE_EntrenchingTool", 1];
(unitBackpack _unit) addItemCargoGlobal ["fow_8Rnd_762x63", 6];

//============================================= END OF FILE =============================================//
