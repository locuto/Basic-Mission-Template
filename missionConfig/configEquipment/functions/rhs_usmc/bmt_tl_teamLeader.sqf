//=======================================================================================================//
// File: bmt_tl_teamLeader.sqf                                                                           //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "tl" (Team Leader)                                      //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

comment "Exported from Arsenal by Sgt Genomas";

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "rhs_uniform_FROG01_d";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_CableTie";};
_unit addVest "rhsusf_mbav_rifleman";
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
_unit addItemToVest "CUP_HandGrenade_M67";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
_unit addHeadgear "rhsusf_mich_helmet_marpatd_headset";
_unit addGoggles "rhs_googles_black";

comment "Add weapons";
_unit addWeapon "rhs_weap_m16a4_carryhandle";
_unit addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
_unit addWeapon "rhsusf_weap_m9";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadioAcreFlagged";

comment "Set identity";
_unit setFace "WhiteHead_17";
_unit setSpeaker "ace_novoice";

//============================================= END OF FILE =============================================//
