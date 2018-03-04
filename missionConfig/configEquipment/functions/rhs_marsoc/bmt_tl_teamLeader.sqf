//=======================================================================================================//
// File: bmt_tl_teamLeader.sqf                                                                           //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "tl" (Team Leader)                                      //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

// Vest and Backpack.
_unit addVest _vestTL;
_unit addBackpack _backpack;

// Items in the uniform.
(uniformContainer _unit) addItemCargoGlobal [_pweaponSilencer, 1];
(uniformContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 1];

// Items in the vest.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (vestContainer _unit) addItemCargoGlobal [_bandage, 2];
    (vestContainer _unit) addItemCargoGlobal [_mapTools, 1];
};
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8];
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1];
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 2];
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_mk84", 1];
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67", 2];

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
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 2];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_m714_White", 2];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_an_m8hc", 2];

// Primary weapon.
_unit addWeapon _pweapon320;
_unit addPrimaryWeaponItem _pweaponSurefire;
_unit addPrimaryWeaponItem _pweaponLaserLantern;
_unit addPrimaryWeaponItem _pweaponScope;

// Night vision.
if ((bmt_var_equipNightVision == 1) or (bmt_var_equipNightVision == 2)) then {
    if (bmt_var_equipNightVision == 1) then {
        (unitBackpack _unit) addItemCargoGlobal [_nightVision, 1];
    } else {
        _unit linkItem _nightVision;
    };
};

// Binoculars.
_unit addWeapon _vectorIV;

//============================================= END OF FILE =============================================//
