//=======================================================================================================//
// File: bmt_ar_automaticRifleman.sqf                                                                    //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "ar" (Automatic Rifleman)                               //
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

(vestContainer _unit) addMagazineCargoGlobal ["fow_20Rnd_762x63", 6];
_unit addWeapon "fow_w_m1918a2_bak";
_unit addPrimaryWeaponItem "fow_w_acc_m1918a2_handle";
_unit addPrimaryWeaponItem "fow_w_acc_m1918a2_bipod";

(vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2", 2];

(uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp", 3];
_unit addWeapon "fow_w_m1911";

(unitBackpack _unit) addItemCargoGlobal ["ACE_EntrenchingTool", 1];
(unitBackpack _unit) addItemCargoGlobal ["fow_20Rnd_762x63", 4];

//============================================= END OF FILE =============================================//
