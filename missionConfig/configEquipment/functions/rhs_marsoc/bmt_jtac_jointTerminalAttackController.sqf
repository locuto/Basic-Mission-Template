//=======================================================================================================//
// File: bmt_jtac_jointTerminalAttackController.sqf                                                      //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "jtac" (Joint Terminal Attack Controller)               //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

// Vest and Backpack.
_unit addVest _vestSL;
_unit addBackpack _backpack;

// Items in the uniform.
(uniformContainer _unit) addItemCargoGlobal [_pweaponSilencer, 1];
(uniformContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 1];
(uniformContainer _unit) addMagazineCargoGlobal ["Laserbatteries", 1];

// Items in the vest.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (vestContainer _unit) addItemCargoGlobal [_bandage, 2];
    (vestContainer _unit) addItemCargoGlobal [_mapTools, 1];
    if (bmt_mod_ace3) then {
        (vestContainer _unit) addItemCargoGlobal [_microDAGR, 1];
    };
};
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 5];
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 1];
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m714_White", 2];
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

// Objects.
_unit addWeapon "Laserdesignator";

//============================================= END OF FILE =============================================//
