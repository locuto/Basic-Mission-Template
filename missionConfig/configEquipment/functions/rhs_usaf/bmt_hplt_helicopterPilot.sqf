//=======================================================================================================//
// File: bmt_hplt_helicopterPilot.sqf                                                                    //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "hplt" (Helicopter Pilot)                               //
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
_unit forceAddUniform "CUP_U_B_USArmy_PilotOverall";
_unit addItemToUniform "ACE_microDAGR";
_unit addItemToUniform "ACE_EarPlugs";
_unit addHeadgear "rhsusf_hgu56p_black";
_unit addGoggles "G_Aviator";

comment "Add weapons";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadioAcreFlagged";

comment "Set identity";
_unit setFace "Sturrock";
_unit setSpeaker "male01gre";


//============================================= END OF FILE =============================================//
