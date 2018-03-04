//=======================================================================================================//
// File: bmt_sn_sniper.sqf                                                                               //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "sn" (Sniper)                                           //
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
_unit addVest "CUP_V_OI_TKI_Jacket6_02";
for "_i" from 1 to 4 do {_unit addItemToVest "ACE_elasticBandage";};
_unit addHeadgear "ffaa_brilat_casco_d";

comment "Add weapons";

comment "Add items";
_unit linkItem "ItemWatch";

comment "Set identity";
_unit setFace "WhiteHead_17";
_unit setSpeaker "ace_novoice";

//============================================= END OF FILE =============================================//
