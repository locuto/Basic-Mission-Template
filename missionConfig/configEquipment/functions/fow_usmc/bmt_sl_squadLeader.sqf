//=======================================================================================================//
// File: bmt_sl_squadLeader.sqf                                                                          //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "sl" (Squad Leader)                                     //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

_unit addHeadgear "fow_h_usmc_m1";
_unit forceAddUniform "fow_u_usmc_p41_01_private";
_unit addVest "fow_v_usmc_thompson_nco";
_unit addbackpack "fow_b_usmc_m1928";

_unit linkItem "fow_i_whistle";
_unit addweapon "LIB_Binocular_GER";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

(uniformContainer _unit) addItemCargoGlobal ["ACE_Flashlight_MX991", 1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs", 1];

(uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot", 8];
(uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 2];

(vestContainer _unit) addMagazineCargoGlobal ["fow_30Rnd_45acp", 4];
_unit addWeapon "fow_w_m1a1_thompson";

(vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2", 2];
(vestContainer _unit) addMagazineCargoGlobal ["SmokeShell", 2];

(uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp",3];
_unit addWeapon "fow_w_m1911";

(unitBackpack _unit) addItemCargoGlobal ["ACE_EntrenchingTool",1];
(unitBackpack _unit) addItemCargoGlobal ["fow_30Rnd_45acp_T",3];

//============================================= END OF FILE =============================================//
