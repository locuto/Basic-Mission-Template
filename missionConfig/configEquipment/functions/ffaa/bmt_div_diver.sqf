//=======================================================================================================//
// File: bmt_div_diver.sqf                                                                               //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "div" (Diver)                                           //
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
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 3 do {_unit addItemToUniform "ffaa_556x45_g36";};
_unit addVest "ffaa_brilat_chaleco_01_ds";
_unit addHeadgear "H_Beret_02";
_unit addGoggles "rhs_googles_black";

comment "Add weapons";
_unit addWeapon "ffaa_armas_hkg36k_tir";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadioAcreFlagged";
_unit linkItem "ItemGPS";

comment "Set identity";
_unit setFace "WhiteHead_17";
_unit setSpeaker "ace_novoice";

//============================================= END OF FILE =============================================//
