//=======================================================================================================//
// File: bmt_sp_spotter.sqf                                                                              //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "sn" (Sniper)                                           //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

// Uniforme, armilla i motxilla
removeUniform _unit;
_unit forceAddUniform _uniformSN;
_unit addVest _vestRFL;
_unit addBackpack _backpack;

// Helmet.
removeHeadgear _unit;
_unit addHeadgear _helmetSN;

// Items in the uniform.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (uniformContainer _unit) addItemCargoGlobal [_earPlugs, 1];
    (uniformContainer _unit) addItemCargoGlobal [_morphine, 1];
    (uniformContainer _unit) addItemCargoGlobal [_epinephrine, 1];
    if (bmt_var_equipFlashlight) then {
        (uniformContainer _unit) addItemCargoGlobal [_flashlight, 1];
    };
};
(uniformContainer _unit) addItemCargoGlobal [_pweaponSilencer, 1];
(uniformContainer _unit) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP", 2];
(uniformContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 1];

// Items in the vest.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (vestContainer _unit) addItemCargoGlobal [_bandage, 2];
    if (bmt_mod_ace3) then {
        (vestContainer _unit) addItemCargoGlobal [_microDAGR, 1];
        (vestContainer _unit) addItemCargoGlobal [_atragmx, 1];
    };
    (vestContainer _unit) addItemCargoGlobal [_mapTools, 1];
    (vestContainer _unit) addItemCargoGlobal [_kestrel, 1];
};

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
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_mk84", 2];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_an_m8hc", 2];

_unit addWeapon _pweapon;
_unit addPrimaryWeaponItem _pweaponSurefire;
_unit addPrimaryWeaponItem _pweaponLaserLantern;
_unit addPrimaryWeaponItem _pweaponScope;

// Objects.
//_unit linkItem _gps;

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
