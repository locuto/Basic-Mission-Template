//=======================================================================================================//
// File: bmt_en_engineer.sqf                                                                             //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "em" (Engineer)                                         //
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
_unit forceAddUniform "ffaa_brilat_CombatUniform_item_d";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 3 do {_unit addItemToUniform "ffaa_556x45_g36";};
_unit addVest "ffaa_brilat_chaleco_01_ds";
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_elasticBandage";};
_unit addItemToVest "ffaa_granada_alhambra";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 9 do {_unit addItemToVest "ffaa_556x45_g36";};
for "_i" from 1 to 4 do {_unit addItemToVest "ffaa_556x45_g36_tracer_green";};
_unit addBackpack "ffaa_brilat_mochila_viaje_arida";
_unit addItemToBackpack "ACE_Clacker";
_unit addItemToBackpack "ACE_DefusalKit";
for "_i" from 1 to 5 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
_unit addHeadgear "ffaa_brilat_casco_d";
_unit addGoggles "ffaa_Glasses";

comment "Add weapons";
_unit addWeapon "ffaa_armas_hkg36e_tir";
_unit addPrimaryWeaponItem "ffaa_optic_holografico";
_unit addWeapon "ACE_VMM3";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadioAcreFlagged";

comment "Set identity";
_unit setFace "WhiteHead_17";
_unit setSpeaker "ace_novoice";


//============================================= END OF FILE =============================================//
