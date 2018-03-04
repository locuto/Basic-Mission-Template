//=======================================================================================================//
// File: bmt_tl_teamLeader.sqf                                                                           //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "tl" (Team Leader)                                      //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

comment "Exported from Arsenal by Cbo V.Arias";

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "rhs_uniform_cu_ucp";
for "_i" from 1 to 4 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToUniform "ACE_elasticBandage";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {this addItemToUniform "ACE_CableTie";};
this addVest "rhsusf_iotv_ucp_Teamleader";
for "_i" from 1 to 4 do {this addItemToVest "SmokeShell";};
for "_i" from 1 to 9 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
for "_i" from 1 to 3 do {this addItemToVest "CUP_HandGrenade_M67";};
this addHeadgear "rhsusf_ach_helmet_ESS_ucp";
this addGoggles "rhs_googles_black";

comment "Add weapons";
this addWeapon "rhs_weap_m4a1_pmag";
this addPrimaryWeaponItem "rhsusf_acc_compm4";
this addWeapon "rhsusf_weap_m9";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadioAcreFlagged";

comment "Set identity";
this setFace "Sturrock";
this setSpeaker "male01gre";


//============================================= END OF FILE =============================================//
