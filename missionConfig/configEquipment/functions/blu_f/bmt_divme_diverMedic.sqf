//=======================================================================================================//
// File: bmt_divme_diverMedic.sqf                                                                        //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "divme" (Diver Medic)                                   //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

// Remove uniform, helmet and vest.
removeUniform _unit;
removeHeadgear _unit;
removeGoggles _unit;

// Uniform, vest and backpack.
_unit forceAddUniform _uniformDIV;
_unit addVest _vestDIV;
_unit addBackpack _backpackDIV;

// Items in the uniform.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (uniformContainer _unit) addItemCargoGlobal [_earPlugs, 1];
    (uniformContainer _unit) addItemCargoGlobal [_morphine, 1];
    (uniformContainer _unit) addItemCargoGlobal [_epinephrine, 1];
    (uniformContainer _unit) addItemCargoGlobal [_bandage, 2];
};
(uniformContainer _unit) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP", 4];
(uniformContainer _unit) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag", 3];

// Items in the vest.
// Items cannot be added to diving rebreather.

// Items in the backpack.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (unitBackpack _unit) addItemCargoGlobal [_morphine, 8];
    (unitBackpack _unit) addItemCargoGlobal [_epinephrine, 8];
    if (bmt_mod_ace3 and (bmt_param_ace3_medicalSystem == 2)) then {
        (unitBackpack _unit) addItemCargoGlobal [_bandage, 8];
        (unitBackpack _unit) addItemCargoGlobal [_elasticBandage, 8];
        (unitBackpack _unit) addItemCargoGlobal [_quickClot, 8];
        (unitBackpack _unit) addItemCargoGlobal [_packingBandage, 6];
        (unitBackpack _unit) addItemCargoGlobal [_tourniquet, 3];
        (unitBackpack _unit) addItemCargoGlobal [_atropine, 8];
        (unitBackpack _unit) addItemCargoGlobal [_surgicalKit, 2];
        (unitBackpack _unit) addItemCargoGlobal [_personalAidKid, 2];
        (unitBackpack _unit) addItemCargoGlobal [_salineBag500, 3];
    };
    if( bmt_mod_agm or (bmt_mod_ace3 and (bmt_param_ace3_medicalSystem == 1))) then {
        (unitBackpack _unit) addItemCargoGlobal [_bandage, 15];
        (unitBackpack _unit) addItemCargoGlobal [_bloodBag500, 2];
    };
};
(unitBackpack _unit) addItemCargoGlobal [_nightVision, 1];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_mk84", 1];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_an_m8hc", 2];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m67", 1];
(unitBackpack _unit) addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 3];
(unitBackpack _unit) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag", 3];

// Glasses.
_unit addGoggles _glassesDIV;

// Primary weapon
_unit addWeapon _pweaponDIV;

//============================================= END OF FILE =============================================//
