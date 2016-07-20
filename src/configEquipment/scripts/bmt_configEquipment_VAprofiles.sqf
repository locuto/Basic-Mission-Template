//=======================================================================================================//
// File: bmt_configEquipment_VAProfiles.sqf                                                              //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/04/02                                                                             //
// Description: This script equips the unit according to a specified role and depending on the faction   //
//              it belongs to. It relies on Virtual Arsenal Profiles, which need to be saved previously, //
//              in order to load the desired set of equipment.                                           //
//              Arguments:                                                                               //
//               - none                                                                                  //
//                                                                                                       //
//              Unit role can be one of the following entries:                                           //
//                                                                                                       //
//                  Unit Role           Virtual Arsenal Profile                                          //
//                  sl                  CC - Lider d'esquadra M4A1+M320 OCP                              //
//                  tl                  CC - Lider d'equip M4A1+M320 OCP                                 //
//                  rfl                 CC - Fuseller M4A1 OCP                                           //
//                  rflat               CC - AT M4A1+AT4 OCP                                             //
//                  gr                  CC - Granader M4A1+M320 OCP                                      //
//                  ar                  CC - FA M249 OCP                                                 //
//                  mg                  CC - Metrallador M240B OCP                                       //
//                  at                  CC - AT M4A1+Javelin OCP                                         //
//                  aa                  CC - AT M4A1+Stinger OCP                                         //
//                  dm                  CC - Tirador SR-25EC OCP                                         //
//                  me                  CC - Metge M4A1 OCP                                              //
//                  exp                 CC - Explosius M4A1 OCP                                          //
//                  sn                  CC - Franctirador M2010ESR OCP                                   //
//                  sp                  CC - Observador M4A1 OCP                                         //
//                  divsl               CC - Bussejador lider M4A1                                       //
//                  divme               CC - Bussejador metge M4A1                                       //
//                  divexp              CC - Bussejador explosius M4A1                                   //
//                  div                 CC - Bussejador M4A1                                             //
//                                                                                                       //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

private["_unit", "_unitRole", "_loadout", "_VAProfile", "_recognised"];

// Only execute if unit is local.
if !(local player) exitWith {};

_unit = player;
_unitRole = _unit getVariable ["bmt_var_configEquipment", "NIL"];
_recognised = true;

// Configure equipment for each unit.
switch (_unitRole) do
{
    // Squad Leader.
    case "sl": { _VAProfile = "CC - Lider d'esquadra MARPAT WD";  };

    // Team leader.
    case "tl": { _VAProfile = "CC - Lider d'equip MARPAT WD";     };

    // Rifleman.
    case "rfl": { _VAProfile = "CC - Fuseller MARPAT WD";         };

    // Rifleman AT4.
    case "rflat": { _VAProfile = "CC - Fuseller AT4 MARPAT WD";   };

    // Grenadier.
    case "gr": { _VAProfile = "CC - Granader MARPAT WD";          };

    // IAR.
    case "iar": { _VAProfile = "CC - Granader MARPAT WD";         };

    // Automatic Rifleman.
    case "ar": { _VAProfile = "CC - FA M249 MARPAT WD";           };

    // Machine Gunner.
    case "mg": { _VAProfile = "CC - Metrallador M240B MARPAT WD"; };

    // Anti-Tank.
    case "at": { _VAProfile = "CC - AT Javelin MARPAT WD";        };

    // (Anti-Aircraft Gunner.
    case "aa": { _VAProfile = "CC - AA Stinger MARPAT WD";        };

    // Designated Marksman.
    case "dm": { _VAProfile = "CC - Tirador MARPAT WD";           };

    // Platoon Medic.
    case "me": { _VAProfile = "CC - Metge MARPAT WD";             };

    // Explosives Specialist.
    case "exp": { _VAProfile = "CC - Explosius MARPAT WD";        };

    // Sniper.
    case "sn": { _VAProfile = "CC - Franctirador MARPAT WD";      };

    // Spotter.
    case "sp": { _VAProfile = "CC - Observador MARPAT WD";        };

    // Diver Squad Leader.
    case "divsl": { _VAProfile = "CC - Bussejador lider";         };

    // Diver Medic.
    case "divme": { _VAProfile = "CC - Bussejador metge";         };

    // Diver Explosives Specialist.
    case "divexp": { _VAProfile = "CC - Bussejador explosius";    };

    // Diver.
    case "div": { _VAProfile = "CC - Bussejador";                 };

    default {
        _VAProfile = "CC - Fuseller MARPAT WD";
        _recognised = false;
        _unit sideChat format ["ERROR (bmt_configEquipment_VAProfiles.sqf): VA profile for unit role %1 is not defined. Using instead VA profile %2", _unitRole, _VAProfile];
    };
};

// Apply the loadout.
_loadout = [_unit,[profileNamespace,_VAProfile]] call BIS_fnc_loadInventory;

if ((bmt_param_debugOutput == 1) and _recognised) then {
    _unit sideChat format ["DEBUG (bmt_configEquipment_VAProfiles.sqf): Using VA profile %1 for unit role %2.", _VAProfile, _unitRole];
};

//============================================= END OF FILE =============================================//
