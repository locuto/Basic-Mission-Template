//=======================================================================================================//
// File: bmt_tl_teamLeader.sqf                                                                           //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "tl" (Team Leader)                                      //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

_unit addHeadgear "fow_h_usmc_m1";
_unit forceAddUniform "fow_u_usmc_p41_01_private";
_unit addVest "fow_v_usmc_garand";
_unit addbackpack "fow_b_usmc_m1928";

_unit linkItem "fow_i_whistle";
_unit addweapon "LIB_Binocular_GER";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

(uniformContainer _unit) addItemCargoGlobal ["ACE_LIB_LadungPM", 1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs", 1];

(uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot", 8];

(vestContainer _unit) addMagazineCargoGlobal ["fow_8Rnd_762x63", 6];
_unit addWeapon "fow_w_m1_garand";

(vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2", 2];
(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellRed", 2];

(uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp",3];
_unit addWeapon "fow_w_m1911";

(unitBackpack _unit) addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag",2];
(unitBackpack _unit) addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag",3];
(unitBackpack _unit) addItemCargoGlobal ["fow_8Rnd_762x63",3];

//============================================= END OF FILE =============================================//
