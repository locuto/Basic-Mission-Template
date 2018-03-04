//=======================================================================================================//
// File: bmt_rfl_rifleman.sqf                                                                            //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "rfl" (Rifleman)                                        //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

comment "Exported from Arsenal by Sgt Genomas";

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
this forceAddUniform "rhs_uniform_FROG01_d";
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {this addItemToUniform "ACE_CableTie";};
this addVest "rhsusf_mbav_light";
for "_i" from 1 to 4 do {this addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 4 do {this addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
this addItemToVest "CUP_HandGrenade_M67";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addHeadgear "rhsusf_mich_helmet_marpatd";
this addGoggles "rhs_googles_black";

comment "Add weapons";
this addWeapon "rhs_weap_m16a4_carryhandle";
this addWeapon "rhsusf_weap_m9";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadioAcreFlagged";

comment "Set identity";
this setFace "WhiteHead_17";
this setSpeaker "ace_novoice";
//============================================= END OF FILE =============================================//
