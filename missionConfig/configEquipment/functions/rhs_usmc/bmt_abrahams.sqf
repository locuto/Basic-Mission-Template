//=======================================================================================================//
// File: bmt_abrahams.sqf                                                                                //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for vehicle role "abrahams" (M1A1 Abrahams)                      //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

clearWeaponCargoGlobal _unit;
clearMagazineCargoGlobal _unit;
clearItemCargoGlobal _unit;
clearBackpackCargoGlobal _unit;

_unit addWeaponCargoGlobal ["rhs_weap_M136", 2];
_unit addMagazineCargoGlobal ["rhs_m136_mag", 2];
_unit addItemCargoGlobal ["ToolKit", 1];
_unit addItemCargoGlobal ["rhs_mine_M19_mag", 3];
_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20];
_unit addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10];
_unit addMagazineCargoGlobal ["rhs_mag_m67", 10];
_unit addMagazineCargoGlobal ["rhs_mag_m714_White", 3];
_unit addMagazineCargoGlobal ["rhs_mag_an_m8hc", 2];
_unit addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 5];

if (bmt_mod_ace3 or bmt_mod_agm) then {
    _unit addItemCargoGlobal [_clacker, 1];
    _unit addItemCargoGlobal [_morphine, 10];
    _unit addItemCargoGlobal [_epinephrine, 10];
    _unit addItemCargoGlobal [_bandage, 10];
    if (bmt_mod_ace3 and (bmt_param_ace3_medicalSystem == 2)) then {
        _unit addItemCargoGlobal [_atropine, 10];
        _unit addItemCargoGlobal [_elasticBandage, 10];
        _unit addItemCargoGlobal [_quickClot, 10];
        _unit addItemCargoGlobal [_packingBandage, 10];
        _unit addItemCargoGlobal [_salineBag500, 5];
    };
};

//============================================= END OF FILE =============================================//
