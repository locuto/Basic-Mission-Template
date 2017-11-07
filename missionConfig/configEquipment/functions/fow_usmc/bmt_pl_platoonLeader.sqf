//=======================================================================================================//
// File: bmt_me_platoonLeader.sqf                                                                        //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "pl" (Platoon Leader)                                   //
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

(uniformContainer _unit) addItemCargoGlobal ["ACE_Flashlight_MX991",1];
(uniformContainer _unit) addItemCargoGlobal ["fow_i_whistle",1];
(uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];

(uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot",8];
(uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 2];

(vestContainer _unit) addMagazineCargoGlobal ["fow_30Rnd_45acp",4];

_unit addWeapon "fow_w_m1a1_thompson";

(vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2",1];

(vestContainer _unit) addMagazineCargoGlobal ["ACE_HandFlare_Red",1];

(vestContainer _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
(vestContainer _unit) addMagazineCargoGlobal ["LIB_1Rnd_flare_white",4];
(uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp",3];
_unit addWeapon "fow_w_m1911";

(unitBackpack _unit) addItemCargoGlobal ["ACE_EntrenchingTool",1];
(unitBackpack _unit) addItemCargoGlobal ["fow_30Rnd_45acp_T",3];
(unitBackpack _unit) addItemCargoGlobal ["LIB_FLARE_PISTOL",1];

//============================================= END OF FILE =============================================//
