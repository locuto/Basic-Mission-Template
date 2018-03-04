//=======================================================================================================//
// File: bmt_mg_machineGunner.sqf                                                                        //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "mg" (Machine Gunner)                                   //
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
_unit forceAddUniform "ffaa_brilat_CombatUniform_item_d";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_CableTie";};
_unit addVest "ffaa_brilat_chaleco_03_ds";
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "ffaa_762x51_mg3";};
for "_i" from 1 to 3 do {_unit addItemToVest "ffaa_9x19_pistola";};
_unit addHeadgear "ffaa_brilat_casco_d";
_unit addGoggles "ffaa_Glasses";

comment "Add weapons";
_unit addWeapon "ffaa_armas_mg3";
_unit addWeapon "ffaa_armas_usp";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadioAcreFlagged";

comment "Set identity";
_unit setFace "WhiteHead_17";
_unit setSpeaker "ace_novoice";

//============================================= END OF FILE =============================================//
