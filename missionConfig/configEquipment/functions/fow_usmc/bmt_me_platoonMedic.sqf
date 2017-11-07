//=======================================================================================================//
// File: bmt_me_platoonMedic.sqf                                                                         //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/07                                                                             //
// Description: Configuration equipment for role "me" (Platoon Medic)                                    //
// Changes: 1.0 (2017/11/07) First public version.                                                       //
//=======================================================================================================//

_unit addHeadgear "fow_h_usmc_m1";
_unit forceAddUniform "fow_u_usmc_p41_01_private";
_unit addVest "fow_v_us_medic";
_unit addbackpack "csa38_GeMedicbag";

        //_unit addGoggles "G_LIB_GER_Gloves1";
        _unit linkItem "ItemWatch";

        (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs", 1];

        (vestContainer _unit) addMagazineCargoGlobal ["fow_15Rnd_762x33", 6];
        _unit addWeapon "fow_w_m1_carbine";

        (unitBackpack _unit) addItemCargoGlobal ["ACE_BodyBag", 2];
        (unitBackpack _unit) addItemCargoGlobal ["ACE_packingbandage", 15];
        (unitBackpack _unit) addItemCargoGlobal ["ACE_elasticBandage", 15];
        (unitBackpack _unit) addItemCargoGlobal ["ACE_quikclot", 15];
        (unitBackpack _unit) addItemCargoGlobal ["ACE_morphine", 10];
        (unitBackpack _unit) addItemCargoGlobal ["ACE_epinephrine", 10];
        (unitBackpack _unit) addItemCargoGlobal ["ACE_tourniquet", 5];
        (unitBackpack _unit) addItemCargoGlobal ["ACE_salineiv_500", 15];
        (unitBackpack _unit) addItemCargoGlobal ["ACE_plasmaiv_500", 15];
        (unitBackpack _unit) addItemCargoGlobal ["ACE_atropine", 10];

        (vestContainer _unit) addMagazineCargoGlobal ["SmokeShell", 2];
        (vestContainer _unit) addMagazineCargoGlobal ["SmokeShellGreen", 2];

//============================================= END OF FILE =============================================//
