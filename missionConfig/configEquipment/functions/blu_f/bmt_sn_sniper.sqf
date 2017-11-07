//=======================================================================================================//
// File: bmt_sn_sniper.sqf                                                                               //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "sn" (Sniper)                                           //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

// Uniform and vest.
removeUniform _unit;
_unit forceAddUniform _uniformSN;
_unit addVest _vestRFL;

// Helmet.
removeHeadgear _unit;
_unit addHeadgear _helmetSN;

// Items in the uniform.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (uniformContainer _unit) addItemCargoGlobal [_earPlugs, 1];
    (uniformContainer _unit) addItemCargoGlobal [_morphine, 1];
    (uniformContainer _unit) addItemCargoGlobal [_epinephrine, 1];
};
(uniformContainer _unit) addItemCargoGlobal [_pweaponSilencerSN, 1];
(uniformContainer _unit) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 2];
(uniformContainer _unit) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP", 2];

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
(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 5];

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
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_an_m8hc", 1];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_mk84", 1];
(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010", 5];

// Primary weapon
_unit addWeapon _pweaponSN;
_unit addPrimaryWeaponItem _pweaponLaserLanternSN;
_unit addPrimaryWeaponItem _pweaponScopeSN;

//============================================= END OF FILE =============================================//
