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
_unit forceAddUniform "rhs_uniform_acu_ucp";
_unit addItemToUniform "ACE_microDAGR";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag";};
_unit addVest "rhsusf_spcs_ucp_rifleman";
_unit addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";
_unit addHeadgear "H_Beret_02";
_unit addGoggles "G_Aviator";

comment "Add weapons";
_unit addWeapon "rhs_weap_m4a1_carryhandle";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadioAcreFlagged";
_unit linkItem "ItemGPS";

comment "Set identity";
_unit setFace "Sturrock";
_unit setSpeaker "male01gre";


//============================================= END OF FILE =============================================//
