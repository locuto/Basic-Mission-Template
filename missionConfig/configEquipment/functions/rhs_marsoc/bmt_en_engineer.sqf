//=======================================================================================================//
// File: bmt_en_engineer.sqf                                                                             //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "em" (Engineer)                                         //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

// Vest and Backpack.
_unit addVest _vestRFL;
_unit addBackpack _backpack;

// Items in the uniform.
(uniformContainer _unit) addItemCargoGlobal [_pweaponSilencer, 1];
(uniformContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 1];
if (bmt_mod_ace3 or bmt_mod_agm) then{
    (uniformContainer _unit) addItemCargoGlobal [_clacker, 1];
};

// Items in the vest.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (vestContainer _unit) addItemCargoGlobal [_bandage, 2];
};
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8];
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1];
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67", 4];

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
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_mk84", 1];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 4];
(unitBackpack _unit) addItemCargoGlobal ["ToolKit", 1];

// Primary weapon.
_unit addWeapon _pweapon;
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

//============================================= END OF FILE =============================================//
