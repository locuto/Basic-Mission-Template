//=======================================================================================================//
// File: bmt_jplt_jetPilot.sqf                                                                           //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "jplt" (Jet Pilot)                                      //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

// Remove uniform, helmet and vest.
removeUniform _unit;
removeHeadgear _unit;
removeGoggles _unit;

// Uniform and parachute.
_unit forceAddUniform _uniformJPLT;
_unit addBackpack _parachuteJPLT;
_unit addHeadgear _helmetJPLT;

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
(uniformContainer _unit) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 4];

// Primary weapon.
_unit addWeapon _pweapon;
_unit addPrimaryWeaponItem _pweaponSurefire;
_unit addPrimaryWeaponItem _pweaponLaserLantern;
_unit addPrimaryWeaponItem _pweaponScope;

//============================================= END OF FILE =============================================//
