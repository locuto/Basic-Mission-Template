//=======================================================================================================//
// File: bmt_sdv.sqf                                                                                     //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for vehicle role "sdv" (Submarine)                               //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

clearWeaponCargoGlobal _unit;
clearMagazineCargoGlobal _unit;
clearItemCargoGlobal _unit;
clearBackpackCargoGlobal _unit;

_unit addMagazineCargoGlobal ["rhs_mag_mk84", 4];
_unit addMagazineCargoGlobal ["rhs_mag_an_m8hc", 4];
_unit addMagazineCargoGlobal ["rhs_mag_m67", 10];
_unit addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 10];
_unit addMagazineCargoGlobal ["20Rnd_556x45_UW_mag", 15];
_unit addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
if (bmt_mod_ace3 or bmt_mod_agm) then {
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
