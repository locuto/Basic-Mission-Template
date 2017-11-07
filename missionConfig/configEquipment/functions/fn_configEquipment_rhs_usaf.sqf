//=======================================================================================================//
// File: fn_configEquipment_rhs_usaf.sqf                                                                 //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/04/02                                                                             //
// Description: This function equips the unit according to a specified role and depending on the faction //
//              it belongs to.                                                                           //
//                                                                                                       //
//              Arguments:                                                                               //
//               - 0: unit role <STRING> or unit role with additional options <ARRAY>.                   //
//               - 1: unit <OBJECT>.                                                                     //
//               - 2: unit faction <STRING><OPTIONAL>.                                                   //
//                                                                                                       //
//              Examples:                                                                                //
//               - Unit is a Fire Team Leader.                                                           //
//                   ["tl", this] call bmt_fnc_configEquipment;                                          //
//                                                                                                       //
//              Unit role can be one of the following entries:                                           //
//                                                                                                       //
//                  Unit Role               Assigned role                                                //
//                  pl                      Platoon Leader                                               //
//                  psg                     Platoon Sergeant                                             //
//                  rto                     Platoon Radiotelephone Operator                              //
//                  fo                      Forward Observer                                             //
//                  jtac                    Joint Terminal Attack Controller                             //
//                  me                      Platoon Medic                                                //
//                  sl                      Squad Leader                                                 //
//                  tl                      Team Leader                                                  //
//                  rfl                     Rifleman                                                     //
//                  rflat                   Rifleman with AT4                                            //
//                  rfluav                  Rifleman with UAV (Raven)                                    //
//                  gr                      Grenadier                                                    //
//                  ar                      Automatic Rifleman                                           //
//                  aar                     Assitant Automatic Rifleman                                  //
//                  dm                      Designated Marksman                                          //
//                  mg                      Machine Gunner                                               //
//                  amg                     Assitant Machine Gunner                                      //
//                  at                      Anti-Tank                                                    //
//                  aat                     AT Ammo handler                                              //
//                  aa                      Anti-Aircraft gunner                                         //
//                  aaa                     Anti-Aircraft Assitant                                       //
//                  en                      Engineer                                                     //
//                  exp                     Explosives Specialist                                        //
//                  sn                      Sniper                                                       //
//                  sp                      Spotter                                                      //
//                  divsl                   Diver Squad Leader                                           //
//                  divme                   Diver Medic                                                  //
//                  divexp                  Diver Explosives Specialist                                  //
//                  div                     Diver                                                        //
//                  hplt                    Helicopter pilot                                             //
//                  jplt                    Jet pilot                                                    //
//                  ccrw                    Combat Crew                                                  //
//                                                                                                       //
//                  hmmwv                   Equipment for HMMWVs                                         //
//                  abrams                  Equipment for M1A1/M1A2 Abrams                               //
//                                                                                                       //
// Changes: 1.0  (2015/11/26) First public version.                                                      //
//=======================================================================================================//

//=======================================================================================================//
// Variable declarations.                                                                                //
//=======================================================================================================//
private["_isInfantry", "_unitRole"];
private["_uniform", "_vestSL", "_vestTL", "_vestRFL", "_vestGR", "_vestDM", "_vestME", "_vestAR", "_vestMG", "_vestCRW", "_helmet", "_helmetSN", "_helmetCRW", "_backpack", "_uavBackpack", "_unitInsignia"];
private["_uavBattery", "_cableTie", "_mapTools", "_microDAGR", "_earPlugs", "_vectorIV", "_atragmx", "_kestrel", "_clacker", "_clackerm26", "_defusalKit", "_cellphone"];
private["_atropine", "_epinephrine", "_morphine", "_bandage", "_elasticBandage", "_quickClot", "_packingBandage"];
private["_bloodBag250", "_bloodBag500", "_bloodBag1000", "_plasmaBag250", "_plasmaBag500", "_plasmaBag1000", "_salineBag250", "_salineBag500", "_salineBag1000"];
private["_personalAidKid", "_surgicalKit", "_tourniquet"];
private["_flashlight"];

//=======================================================================================================//
// Get unit role and if it is an infantry unit.                                                          //
//=======================================================================================================//

params ["_unitOptions", "_unit", "_unitFaction"];

if ((typeName _unitOptions) == "STRING") then {
    _unitRole = _unitOptions;
} else {
    _unitRole = _unitOptions select 0; // First entry must always be the unit role
};

_unitRole = toLower _unitRole;

if ( isNil "_unitFaction") then {
    _unitFaction = toLower (faction _unit);
} else {
    _unitFaction = toLower _unitFaction;
};

_isInfantry = _unit isKindOf "CAManBase";

//=======================================================================================================//
// Summary of equipment: Weapons, accessories, glasses, vests, ...                                       //
//=======================================================================================================//

// Especific equipment of RHS.
if (_unitFaction == "rhs_faction_usarmy_d") then {
    // Uniforms.
    _uniform = "rhs_uniform_cu_ocp";

    // Vests.
    _vestSL = "rhsusf_iotv_ocp_squadleader";
    _vestTL = "rhsusf_iotv_ocp_teamleader";
    _vestRFL = "rhsusf_iotv_ocp_rifleman";
    _vestGR = "rhsusf_iotv_ocp_grenadier";
    _vestDM = "rhsusf_iotv_ocp_rifleman";
    _vestME = "rhsusf_iotv_ocp_medic";
    _vestAR = "rhsusf_iotv_ocp_SAW";
    _vestMG = "rhsusf_iotv_ocp_SAW";
    _vestCRW = "rhsusf_iotv_ocp";

    // Helmets.
    _helmet = "rhsusf_ach_helmet_headset_ocp";
    _helmetSN = "rhs_Booniehat_ocp";
    _helmetCRW = "rhsusf_cvc_helmet";

    // Backpacks.
    _backpack = "rhsusf_assault_eagleaiii_ocp";

    // Insignia
    _unitInsignia = "";
};

if (_unitFaction == "rhs_faction_usarmy_wd") then {
    // Uniforms.
    _uniform = "rhs_uniform_cu_ucp";

    // Vests.
    _vestSL = "rhsusf_iotv_ucp_squadleader";
    _vestTL = "rhsusf_iotv_ucp_teamleader";
    _vestRFL = "rhsusf_iotv_ucp_rifleman";
    _vestGR = "rhsusf_iotv_ucp_grenadier";
    _vestDM = "rhsusf_iotv_ucp_rifleman";
    _vestME = "rhsusf_iotv_ucp_medic";
    _vestAR = "rhsusf_iotv_ucp_SAW";
    _vestMG = "rhsusf_iotv_ucp_SAW";
    _vestCRW = "rhsusf_iotv_ucp";

    // Helmets.
    _helmet = "rhsusf_ach_helmet_headset_ucp";
    _helmetSN = "rhs_Booniehat_ucp";
    _helmetCRW = "rhsusf_cvc_green_helmet";

    // Backpacks.
    _backpack = "rhsusf_assault_eagleaiii_ucp";

    // Insignia
    _unitInsignia = "";
};

if (_unitFaction == "rhs_faction_usmc_d") then {
    // Uniforms.
    _uniform = "rhs_uniform_FROG01_d";

    // Vests.
    _vestSL = "rhsusf_spc_squadleader";
    _vestTL = "rhsusf_spc_teamleader";
    _vestRFL = "rhsusf_spc_rifleman";
    _vestGR = "rhsusf_spc_rifleman";
    _vestDM = "rhsusf_spc_marksman";
    _vestME = "rhsusf_spc_corpsman";
    _vestAR = "rhsusf_spc_iar";
    _vestMG = "rhsusf_spc_mg";
    _vestCRW = "rhusf_spc_crew";

    // Helmets.
    _helmet = "rhsusf_mich_helmet_marpatd_norotos_arc";
    _helmetSN = "rhs_booniehat_marpatd";
    _helmetCRW = "rhsusf_cvc_helmet";

    // Backpacks.
    _backpack = "rhsusf_assault_eagleaiii_ocp";

    // Insignia
    _unitInsignia = "";
};

if (_unitFaction == "rhs_faction_usmc_wd") then {
    // Uniforms.
    _uniform = "rhs_uniform_FROG01_wd";

    // Vests.
    _vestSL = "rhsusf_spc_squadleader";
    _vestTL = "rhsusf_spc_teamleader";
    _vestRFL = "rhsusf_spc_rifleman";
    _vestGR = "rhsusf_spc_rifleman";
    _vestDM = "rhsusf_spc_marksman";
    _vestME = "rhsusf_spc_corpsman";
    _vestAR = "rhsusf_spc_iar";
    _vestMG = "rhsusf_spc_mg";
    _vestCRW = "rhusf_spc_crew";

    // Helmets.
    _helmet = "rhsusf_mich_helmet_marpatwd_norotos_arc";
    _helmetSN = "rhs_booniehat_marpatwd";
    _helmetCRW = "rhsusf_cvc_green_helmet";

    // Backpacks.
    _backpack = "rhsusf_assault_eagleaiii_ucp";

    // Insignia
    _unitInsignia = "";
};

// Common uniforms.
private _uniformSN = "U_B_GhillieSuit";
private _uniformDIV = "U_B_Wetsuit";
private _uniformHPLT = "U_B_HeliPilotCoveralls";
private _uniformJPLT = "U_B_HeliPilotCoveralls";

// Common vests.
private _vestDIV = "V_RebreatherB";

// Common helmets.
private _helmetHPLT = "rhsusf_hgu56p_mask";
private _helmetJPLT = "rhs_jetpilot_usaf";

// Glasses.
private _glasses = "G_Tactical_Clear";
private _glassesDIV = "G_Diving";

// Common backpacks.
private _backpackDIV = "B_AssaultPack_blk";
private _parachuteHPLT = "B_Parachute";
private _parachuteJPLT = "B_Parachute";
private _uavBackpack = "B_rhsusf_B_BACKPACK";

// Primary weapon.
private _pweapon = "rhs_weap_m4a1";
private _pweapon320 = "rhs_weap_m4a1_m320";
private _pweaponAR = "rhs_weap_m249_pip_S";
private _pweaponMG = "rhs_weap_m240B_CAP";
private _pweaponDM = "rhs_weap_m14ebrri";
private _pweaponSN = "rhs_weap_XM2010_sa";
private _pweaponDIV = "arifle_SDAR_F";

// Silencers.
private _pweaponSilencer = "rhsusf_acc_rotex5_grey";
private _pweaponSurefire = "rhsusf_acc_SF3P556";
private _pweaponSilencerSN = "rhsusf_acc_M2010S";

// Accessories.
private _pweaponLaserLantern = "rhsusf_acc_anpeq15";
private _pweaponLaserLanternAR = "rhsusf_acc_anpeq15A";
private _pweaponLaserLanternSN = "rhsusf_acc_anpeq15side";

// Scopes.
private _pweaponScope = "rhsusf_acc_ACOG";
private _pweaponScopeAR = "rhsusf_acc_ELCAN";
private _pweaponScopeDM = "rhsusf_acc_LEUPOLDMK4";
private _pweaponScopeSN = "rhsusf_acc_LEUPOLDMK4_2";

// Bipods.
private _pweaponBipodDM = "rhsusf_acc_harris_bipod";
private _pweaponBipodSN = "rhsusf_acc_harris_bipod";

// AT/AA Launchers
private _pweaponLauncherRF = "rhs_weap_M136_hedp";
private _pweaponLauncherAT = "rhs_weap_fgm148";
private _pweaponLauncherAA = "rhs_weap_fim92";

// Pistols.
private _pistol = "rhsusf_weap_m1911a1";

// Objects.
private _gps = "ItemGPS";
private _watch = "ItemWatch";
private _map = "ItemMap";
private _compass = "ItemCompass";
private _radio = "ItemRadio";
private _uavTerminal = "B_UavTerminal";

// Binoculars.
private _binoculars = "lerca_1200_tan";

// Night vision.
private _nightVision = "rhsusf_ANPVS_14";

// ACE 3 objects.
if (bmt_mod_ace3) then {
    #include "common\bmt_configEquipment_common_definitionsACE3.hpp"
};

// AGM objects.
if (bmt_mod_agm) then {
    #include "common\bmt_configEquipment_common_definitionsAGM.hpp"
};

// Remove all gear from a infantry unit.
if (_isInfantry) then {
    removeAllWeapons _unit;
    removeAllAssignedItems _unit;
    clearAllItemsFromBackpack _unit;
    removeAllContainers _unit;
    removeHeadgear _unit;

    // Uniform, helment and glasses.
    _unit forceaddUniform _uniform;
    _unit addHeadgear _helmet;
    _unit addGoggles _glasses;

    if (bmt_mod_ace3 or bmt_mod_agm) then {
        (uniformContainer _unit) addItemCargoGlobal [_earPlugs, 1];
        (uniformContainer _unit) addItemCargoGlobal [_morphine, 1];
        (uniformContainer _unit) addItemCargoGlobal [_epinephrine, 1];
        if (bmt_var_equipFlashlight) then {
            (uniformContainer _unit) addItemCargoGlobal [_flashlight, 1];
        };
    };
    (uniformContainer _unit) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP", 2];

    // Secondary weapon.
    _unit addWeapon _pistol;

    // Add common objects.
    _unit linkItem _map;
    _unit linkItem _watch;
    _unit linkItem _compass;
    //_unit linkItem _gps;
    _unit linkItem _radio;
};

// Configure equipment for each unit.
switch (_unitRole) do
{
    // Platoon Leader.
    case "pl": {
        #include "rhs_usaf\bmt_pl_platoonLeader.sqf"
    };

    // Platoon Sergeant.
    case "psg": {
         #include "rhs_usaf\bmt_psg_platoonSergeant.sqf"
    };

    // Platoon Radiotelephone Operator.
    case "rto": {
       #include "rhs_usaf\bmt_rto_platoonRadiotelephoneOperator.sqf"
    };

    // Forward Observer.
    case "fo": {
        #include "rhs_usaf\bmt_fo_forwardObserver.sqf"
    };

    // Joint Terminal Attack Controller.
    case "jtac": {
        #include "rhs_usaf\bmt_jtac_jointTerminalAttachController.sqf"
    };

    // Platoon Medic.
    case "me": {
        #include "rhs_usaf\bmt_me_platoonMedic.sqf"
    };

    // Squad Leader.
    case "sl": {
        #include "rhs_usaf\bmt_sl_squadLeader.sqf"
    };

    // Team leader.
    case "tl": {
        #include "rhs_usaf\bmt_tl_teamLeader.sqf"
    };

    // Rifleman.
    case "rfl": {
        #include "rhs_usaf\bmt_rfl_rifleman.sqf"
    };

    // Rifleman with AT4.
    case "rflat": {
        #include "rhs_usaf\bmt_rflat_riflemanAntiTank.sqf"
    };

    // Rifleman with UAV.
    case "rfluav": {
        #include "rhs_usaf\bmt_rfluav_riflemanUAV.sqf"
    };

    // Grenadier.
    case "gr": {
        #include "rhs_usaf\bmt_gr_grenadier.sqf"
    };

    // Automatic Rifleman.
    case "ar": {
        #include "rhs_usaf\bmt_ar_automaticRifleman.sqf"
    };

    // Assitant Automatic Rifleman.
    case "aar": {
        #include "rhs_usaf\bmt_aar_assistantAutomaticRifleman.sqf"
    };

    // Designated Marksman.
    case "dm": {
        #include "rhs_usaf\bmt_dm_designatedMarksman.sqf"
    };

    // Machine Gunner.
    case "mg": {
        #include "rhs_usaf\bmt_mg_machineGunner.sqf"
    };

    // Assitant Machine Gunner.
    case "amg": {
        #include "rhs_usaf\bmt_amg_assistantMachineGunner.sqf"
    };

    // Anti-Tank.
    case "at": {
        #include "rhs_usaf\bmt_at_antiTank.sqf"
    };

    // AT Ammo handler.
    case "aat": {
        #include "rhs_usaf\bmt_aat_assistantAntiTank.sqf"
    };

    // Anti-Aircraft gunner.
    case "aa": {
        #include "rhs_usaf\bmt_aa_antiAircraftGunner.sqf"
    };

    // Anti-Aircraft Assitant.
    case "aaa": {
        #include "rhs_usaf\bmt_aaa_assistantAntiAircraftGunner.sqf"
    };

    // Engineer.
    case "en": {
        #include "rhs_usaf\bmt_en_engineer.sqf"
    };

    // Explosives Specialist.
    case "exp": {
        #include "rhs_usaf\bmt_exp_explosivesSpecialist.sqf"
    };

    // Sniper.
    case "sn": {
        #include "rhs_usaf\bmt_sn_sniper.sqf"
    };

    // Spotter.
    case "sp": {
        #include "rhs_usaf\bmt_sp_spotter.sqf"
    };

    // Diver Squad Leader.
    case "divsl": {
        #include "rhs_usaf\bmt_divsl_diverSquadLeader.sqf"
    };

    // Diver Medic.
    case "divme": {
        #include "rhs_usaf\bmt_divme_diverMedic.sqf"
    };

    // Diver Explosives Specialist.
    case "divexp": {
        #include "rhs_usaf\bmt_divexp_diverExplosivesSpecialist.sqf"
    };

    // Diver.
    case "div": {
        #include "rhs_usaf\bmt_div_diver.sqf"
    };

    // Helicopter pilot.
    case "hplt": {
        #include "rhs_usaf\bmt_hplt_helicopterPilot.sqf"
    };

    // Jet pilot.
    case "jplt": {
        #include "rhs_usaf\bmt_jplt_jetPilot.sqf"
    };

    // Combat crew
    case "ccrw": {
        #include "rhs_usaf\bmt_ccrw_combatCrew.sqf"
    };

    case "hmmwv": {
        #include "rhs_usaf\bmt_hmmwv.sqf"
    };

    case "abrams": {
        #include "rhs_usaf\bmt_abrahams.sqf"
    };

    default {
        _unit sideChat format ["DEBUG (bmt_configEquipment_rhs_usaf.sqf): unit role %1 is not defined. Defaulting to rifleman.", _unitRole];
        #include "rhs_usaf\bmt_rfl_rifleman.sqf"
    };
};

// Primary weapon selected by default.
if (_isInfantry) then {
    _unit selectWeapon (primaryWeapon _unit);
};

// Unit insignia.
[_unit,_unitInsignia] call bis_fnc_setUnitInsignia;

//============================================= END OF FILE =============================================//
