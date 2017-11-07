//=======================================================================================================//
// File: bmt_blx.sqf                                                                                     //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for the vehicle role "blx"                                       //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

clearWeaponCargoGlobal _unit;
clearMagazineCargoGlobal _unit;
clearItemCargoGlobal _unit;
clearBackpackCargoGlobal _unit;

_unit addWeaponCargoGlobal [_pweaponDM, 1];
_unit addItemCargoGlobal [_pweaponScopeDM, 1];
_unit addItemCargoGlobal [_pweaponBipodDM, 1];
_unit addWeaponCargoGlobal [_pweaponLauncherAT, 2];
_unit addWeaponCargoGlobal [_pweaponLauncherRF, 1];
_unit addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 2];
_unit addMagazineCargoGlobal ["rhs_m136_hedp_mag", 1];
_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 15];
_unit addMagazineCargoGlobal ["rhs_mag_m67", 5];
_unit addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch", 7];
_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
_unit addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 8];
_unit addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag", 10];

if (bmt_mod_ace3 or bmt_mod_agm) then {
    _unit addItemCargoGlobal [_clacker, 1];
    _unit addItemCargoGlobal [_morphine, 10];
    _unit addItemCargoGlobal [_epinephrine, 10];
    _unit addItemCargoGlobal [_bandage, 10];
    _unit addItemCargoGlobal [_bloodBag500, 5];
    if (bmt_mod_ace3 and (bmt_param_ace3_medicalSystem == 2)) then {
        _unit addItemCargoGlobal [_atropine, 10];
        _unit addItemCargoGlobal [_elasticBandage, 10];
        _unit addItemCargoGlobal [_quickClot, 10];
        _unit addItemCargoGlobal [_packingBandage, 10];
        _unit addItemCargoGlobal [_salineBag500, 5];

        _unit addItemCargoGlobal [_plasmaBag500, 5];

        _unit addItemCargoGlobal [_surgicalKit, 3];
        _unit addItemCargoGlobal [_personalAidKid, 3];
    };
};

//============================================= END OF FILE =============================================//
