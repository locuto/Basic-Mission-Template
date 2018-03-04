//=======================================================================================================//
// File: bmt_dm_designatedMarksman.sqf                                                                   //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "dm" (Designated Marksman)                              //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

// Vest and Backpack.
_unit addVest _vestDM;
_unit addBackpack _backpack;

// Items in the uniform.
(uniformContainer _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 1];

// Items in the vest.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (vestContainer _unit) addItemCargoGlobal [_bandage, 2];
    (vestContainer _unit) addItemCargoGlobal [_kestrel, 1];
    if (bmt_mod_ace3) then {
        (vestContainer _unit) addItemCargoGlobal [_atragmx, 1];
    };
};
(vestContainer _unit) addMagazineCargoGlobal ["rhs_mag_m67", 3];
(vestContainer _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 6];

// Items in the vest.
if (bmt_mod_ace3 or bmt_mod_agm) then {
    (unitBackpack _unit) addItemCargoGlobal [_bandage, 2];
    if (bmt_mod_ace3 and (bmt_param_ace3_medicalSystem == 2)) then {
        (unitBackpack _unit) addItemCargoGlobal [_elasticBandage, 3];
        (unitBackpack _unit) addItemCargoGlobal [_quickClot, 3];
        (unitBackpack _unit) addItemCargoGlobal [_packingBandage, 3];
        (unitBackpack _unit) addItemCargoGlobal [_tourniquet, 1];
    };
};
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_mk84", 2];
(unitBackpack _unit) addMagazineCargoGlobal ["rhs_mag_an_m8hc", 1];
(unitBackpack _unit) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 5];

// Primary weapon.
// Missing muzzle attachment
_unit addWeapon _pweaponDM;
_unit addPrimaryWeaponItem _pweaponLaserLanternSN;
_unit addPrimaryWeaponItem _pweaponScopeDM;
_unit addPrimaryWeaponItem _pweaponBipodDM;

// Night vision.
if ((bmt_var_equipNightVision == 1) or (bmt_var_equipNightVision == 2)) then {
    if (bmt_var_equipNightVision == 1) then {
        (unitBackpack _unit) addItemCargoGlobal [_nightVision, 1];
    } else {
        _unit linkItem _nightVision;
    };
};

//============================================= END OF FILE =============================================//
