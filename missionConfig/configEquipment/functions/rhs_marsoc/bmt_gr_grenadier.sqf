//=======================================================================================================//
// File: bmt_gr_grenadier.sqf                                                                            //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "gr" (Grenadier)                                        //
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
_unit forceAddUniform "rhs_uniform_g3_m81";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ACE_tourniquet";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {_unit addItemToUniform "CUP_15Rnd_9x19_M9";};
_unit addItemToUniform "ACE_M84";
_unit addItemToUniform "SmokeShell";
_unit addVest "rhsusf_spc_rifleman";
_unit addItemToVest "SmokeShell";
for "_i" from 1 to 2 do {_unit addItemToVest "MiniGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_HuntIR_M203";};
for "_i" from 1 to 4 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
for "_i" from 1 to 5 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
_unit addHeadgear "rhsusf_mich_bare_norotos_arc_semi_headset";
_unit addGoggles "rhs_googles_black";

comment "Add weapons";
_unit addWeapon "rhs_weap_m4a1_blockII_M203_d";
_unit addPrimaryWeaponItem "rhsusf_acc_nt4_tan";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552_d";
_unit addWeapon "CUP_hgun_M9";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadioAcreFlagged";

comment "Set identity";
_unit setFace "Sturrock";
_unit setSpeaker "male01gre";



//============================================= END OF FILE =============================================//
