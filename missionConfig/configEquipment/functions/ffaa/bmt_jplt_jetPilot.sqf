//=======================================================================================================//
// File: bmt_jplt_jetPilot.sqf                                                                           //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "jplt" (Jet Pilot)                                      //
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
this forceAddUniform "ffaa_famet_uniforme_item_d";
this addVest "ffaa_brilat_chaleco_01_ds";
for "_i" from 1 to 4 do {this addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 4 do {this addItemToVest "ACE_elasticBandage";};
this addItemToVest "ACE_EarPlugs";
this addItemToVest "ACE_microDAGR";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
this addHeadgear "ffaa_casco_famet_piloto";

comment "Add weapons";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";

comment "Set identity";
this setFace "WhiteHead_17";
this setSpeaker "ace_novoice";

//============================================= END OF FILE =============================================//
