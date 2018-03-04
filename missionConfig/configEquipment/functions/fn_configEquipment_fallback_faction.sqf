//=======================================================================================================//
// File: fn_configEquipment_fallback_faction.sqf                                                         //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/11/09                                                                             //
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
//                   ["tl", this] call bmt_fnc_configEquipment_fallback_faction;                         //
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
//                                                                                                       //
// Changes: 1.0  (2017/09/11) First public version.                                                      //
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

// Identify which faction the unit belongs to.
if (_unitFaction isEqualTo "") then {
    _unitFaction = _unit getVariable ["bmt_var_unitFaction", ""];

    if (_unitFaction isEqualTo "") then {
        _unitFaction = toLower (faction _unit);
    };
} else {
    _unitFaction = toLower _unitFaction;
};

_isInfantry = _unit isKindOf "CAManBase";

//=======================================================================================================//
// Summary of equipment: Weapons, accessories, glasses, vests, ...                                       //
//=======================================================================================================//

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
    // Implement infantry case
};

// Configure equipment for each unit.
switch (_unitRole) do
{
    // Platoon Leader.
    case "pl": {
        #include "fallback_faction\bmt_pl_platoonLeader.sqf"
    };

    // Platoon Sergeant.
    case "psg": {
         #include "fallback_faction\bmt_psg_platoonSergeant.sqf"
    };

    // Platoon Radiotelephone Operator.
    case "rto": {
       #include "fallback_faction\bmt_rto_platoonRadiotelephoneOperator.sqf"
    };

    // Forward Observer.
    case "fo": {
        #include "fallback_faction\bmt_fo_forwardObserver.sqf"
    };

    // Joint Terminal Attack Controller.
    case "jtac": {
        #include "fallback_faction\bmt_jtac_jointTerminalAttackController.sqf"
    };

    // Platoon Medic.
    case "me": {
        #include "fallback_faction\bmt_me_platoonMedic.sqf"
    };

    // Squad Leader.
    case "sl": {
        #include "fallback_faction\bmt_sl_squadLeader.sqf"
    };

    // Team leader.
    case "tl": {
        #include "fallback_faction\bmt_tl_teamLeader.sqf"
    };

    // Rifleman.
    case "rfl": {
        #include "fallback_faction\bmt_rfl_rifleman.sqf"
    };

    // Rifleman with AT4.
    case "rflat": {
        #include "fallback_faction\bmt_rflat_riflemanAntiTank.sqf"
    };

    // Rifleman with UAV.
    case "rfluav": {
        #include "fallback_faction\bmt_rfluav_riflemanUAV.sqf"
    };

    // Grenadier.
    case "gr": {
        #include "fallback_faction\bmt_gr_grenadier.sqf"
    };

    // Automatic Rifleman.
    case "ar": {
        #include "fallback_faction\bmt_ar_automaticRifleman.sqf"
    };

    // Assitant Automatic Rifleman.
    case "aar": {
        #include "fallback_faction\bmt_aar_assistantAutomaticRifleman.sqf"
    };

    // Designated Marksman.
    case "dm": {
        #include "fallback_faction\bmt_dm_designatedMarksman.sqf"
    };

    // Machine Gunner.
    case "mg": {
        #include "fallback_faction\bmt_mg_machineGunner.sqf"
    };

    // Assitant Machine Gunner.
    case "amg": {
        #include "fallback_faction\bmt_amg_assistantMachineGunner.sqf"
    };

    // Anti-Tank.
    case "at": {
        #include "fallback_faction\bmt_at_antiTank.sqf"
    };

    // AT Ammo handler.
    case "aat": {
        #include "fallback_faction\bmt_aat_assistantAntiTank.sqf"
    };

    // Anti-Aircraft gunner.
    case "aa": {
        #include "fallback_faction\bmt_aa_antiAircraftGunner.sqf"
    };

    // Anti-Aircraft Assitant.
    case "aaa": {
        #include "fallback_faction\bmt_aaa_assistantAntiAircraftGunner.sqf"
    };

    // Engineer.
    case "en": {
        #include "fallback_faction\bmt_en_engineer.sqf"
    };

    // Explosives Specialist.
    case "exp": {
        #include "fallback_faction\bmt_exp_explosivesSpecialist.sqf"
    };

    // Sniper.
    case "sn": {
        #include "fallback_faction\bmt_sn_sniper.sqf"
    };

    // Spotter.
    case "sp": {
        #include "fallback_faction\bmt_sp_spotter.sqf"
    };

    // Diver Squad Leader.
    case "divsl": {
        #include "fallback_faction\bmt_divsl_diverSquadLeader.sqf"
    };

    // Diver Medic.
    case "divme": {
        #include "fallback_faction\bmt_divme_diverMedic.sqf"
    };

    // Diver Explosives Specialist.
    case "divexp": {
        #include "fallback_faction\bmt_divexp_diverExplosivesSpecialist.sqf"
    };

    // Diver.
    case "div": {
        #include "fallback_faction\bmt_div_diver.sqf"
    };

    // Helicopter pilot.
    case "hplt": {
        #include "fallback_faction\bmt_hplt_helicopterPilot.sqf"
    };

    // Jet pilot.
    case "jplt": {
        #include "fallback_faction\bmt_jplt_jetPilot.sqf"
    };

    // Combat crew
    case "ccrw": {
        #include "fallback_faction\bmt_ccrw_combatCrew.sqf"
    };

    case "hmmwv": {
        #include "fallback_faction\bmt_hmmwv.sqf"
    };

    case "abrams": {
        #include "fallback_faction\bmt_abrahams.sqf"
    };

    default {
        diag_log format ["DEBUG (bmt_configEquipment_fallback_faction.sqf): unit role %1 is not defined. Defaulting to rifleman.", _unitRole];
        #include "fallback_faction\bmt_rfl_rifleman.sqf"
    };
};

// Primary weapon selected by default.
if (_isInfantry) then {
    _unit selectWeapon (primaryWeapon _unit);
};

// Unit insignia.
[_unit, _unitInsignia] call bis_fnc_setUnitInsignia;

//============================================= END OF FILE =============================================//
