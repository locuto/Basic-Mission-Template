//=======================================================================================================//
// File: bmt_ar_automaticRifleman.sqf                                                                    //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "ar" (Automatic Rifleman)                               //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

// Vest and Backpack.
_unit addVest _vestSAW;
_unit addBackpack _backpack;

// Items in the uniform.
(uniformContainer _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch", 2];

// Items in the vest.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (vestContainer _unit) addItemCargoGlobal [_bandage, 2];
};
(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch", 3];
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67", 3];

// Items in the backpack.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
    if (bmt_mod_ace3 and (bmt_param_ace3_medicalSystem == 2)) then {
        (unitBackpack _unit) addItemCargoGlobal [_elasticBandage, 3];
        (unitBackpack _unit) addItemCargoGlobal [_quickClot, 3];
        (unitBackpack _unit) addItemCargoGlobal [_packingBandage, 3];
        (unitBackpack _unit) addItemCargoGlobal [_tourniquet, 1];
    };
};
(unitBackpack _unit) addItemCargoGlobal [_nightVision, 1];
(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch", 1];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_mk84", 2];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_an_m8hc", 1];

// Primary weapon
_unit addWeapon _pweaponAR;
_unit addPrimaryWeaponItem _pweaponLaserLanternAR;
_unit addPrimaryWeaponItem _pweaponScopeAR;

//============================================= END OF FILE =============================================//
