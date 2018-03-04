//=======================================================================================================//
// File: bmt_sl_squadLeader.sqf                                                                          //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "sl" (Squad Leader)                                     //
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
_unit addItemToUniform "ACE_DAGR";
_unit addVest "ffaa_brilat_chaleco_03_ds";
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_elasticBandage";};
_unit addItemToVest "ACE_HuntIR_monitor";
_unit addItemToVest "SmokeShell";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 3 do {_unit addItemToVest "ffaa_9x19_pistola";};
for "_i" from 1 to 3 do {_unit addItemToVest "ffaa_556x45_g36";};
for "_i" from 1 to 4 do {_unit addItemToVest "ffaa_556x45_g36_tracer_green";};
_unit addHeadgear "ffaa_brilat_casco_d";
_unit addGoggles "ffaa_Glasses";

comment "Add weapons";
_unit addWeapon "ffaa_armas_hkg36k";
_unit addWeapon "ffaa_armas_usp";
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
