//=======================================================================================================//
// File: bmt_at_antiTank.sqf                                                                             //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "at" (Anti-Tank)                                        //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

comment "Exported from Arsenal by Cbo V.Arias";

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
_unit forceAddUniform "rhs_uniform_cu_ucp";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_CableTie";};
_unit addVest "rhsusf_iotv_ucp_Rifleman";
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
for "_i" from 1 to 3 do {_unit addItemToVest "CUP_HandGrenade_M67";};
_unit addBackpack "B_Carryall_cbr";
_unit addItemToBackpack "rhs_fgm148_magazine_AT";
_unit addHeadgear "rhsusf_ach_helmet_ucp";
_unit addGoggles "rhs_googles_black";

comment "Add weapons";
_unit addWeapon "rhs_weap_m4a1_pmag";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
_unit addWeapon "rhs_weap_fgm148";
_unit addWeapon "rhsusf_weap_m9";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadioAcreFlagged";

comment "Set identity";
_unit setFace "Sturrock";
_unit setSpeaker "male01gre";



//============================================= END OF FILE =============================================//
