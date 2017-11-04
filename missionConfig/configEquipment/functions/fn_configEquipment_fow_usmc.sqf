//=======================================================================================================//
// File: fn_configEquipment_fow_usmc.sqf                                                                 //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2017/10/31                                                                             //
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
// Changes: 1.0  (2017/10/31) First public version.                                                      //
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
if (_unitFaction == "fow_usmc") then {
    // Uniforms.
    _uniform = "fow_u_usmc_p41_01_private";

    // Vests.
    _vestSL = "fow_v_usmc_thompson_nco";
    _vestTL = "fow_v_usmc_garand";
    _vestRFL = "fow_v_usmc_garand";
    _vestGR = "fow_v_usmc_garand";
    _vestDM = "fow_v_usmc_garand";
    _vestME = "fow_v_uk_para_base";
    _vestAR = "fow_v_usmc_bar";
    _vestMG = "fow_v_usmc_garand";
    _vestCRW = "fow_v_usmc_garand";

    // Helmets.
    _helmet = "rhsusf_ach_helmet_headset_ocp";
    _helmetSN = "rhs_Booniehat_ocp";
    _helmetCRW = "rhsusf_cvc_helmet";

    // Backpacks.
    _backpack = "fow_b_usmc_m1928";

    // Insignia
    _unitInsignia = "";
};


// Remove all gear from a infantry unit.
if (_isInfantry) then {
    removeAllWeapons _unit;
    removeAllAssignedItems _unit;
    clearAllItemsFromBackpack _unit;
    removeAllContainers _unit;
    removeHeadgear _unit;
};

// Configure equipment for each unit.
switch (_unitRole) do
{
    // Platoon Leader.
    case "pl": {
        _unit addHeadgear "fow_h_usmc_m1";
        _unit forceAddUniform "fow_u_usmc_p41_01_private";
        _unit addVest "fow_v_usmc_thompson_nco";
        _unit addbackpack "fow_b_usmc_m1928";

        _unit linkItem "fow_i_whistle";
        _unit addweapon "LIB_Binocular_GER";
        _unit linkItem "ItemMap";
        _unit linkItem "ItemCompass";
        _unit linkItem "ItemWatch";

        (uniformContainer _unit) addItemCargoGlobal ["ACE_Flashlight_MX991",1];
        (uniformContainer _unit) addItemCargoGlobal ["fow_i_whistle",1];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];

        (uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot",8];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 2];

        (vestContainer _unit) addMagazineCargoGlobal ["fow_30Rnd_45acp",4];

        _unit addWeapon "fow_w_m1a1_thompson";

        (vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2",1];

        (vestContainer _unit) addMagazineCargoGlobal ["ACE_HandFlare_Red",1];

        (vestContainer _unit) addMagazineCargoGlobal ["SmokeShellRed",2];
        (vestContainer _unit) addMagazineCargoGlobal ["LIB_1Rnd_flare_white",4];
        (uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp",3];
        _unit addWeapon "fow_w_m1911";
		
		(unitBackpack _unit) addItemCargoGlobal ["ACE_EntrenchingTool",1];
        (unitBackpack _unit) addItemCargoGlobal ["fow_30Rnd_45acp_T",3];
		(unitBackpack _unit) addItemCargoGlobal ["LIB_FLARE_PISTOL",1];
    };

    // Platoon Sergeant.
    case "psg": {

    };

    // Platoon Radiotelephone Operator.
    case "rto": {

    };

    // Forward Observer.
    case "fo": {

    };

    // Forward Observer.
    case "jtac": {

    };

    // Platoon Medic.
    case "me": {
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
    };

    // Squad Leader.
    case "sl": {
        _unit addHeadgear "fow_h_usmc_m1";
        _unit forceAddUniform "fow_u_usmc_p41_01_private";
        _unit addVest "fow_v_usmc_thompson_nco";
        _unit addbackpack "fow_b_usmc_m1928";

        _unit linkItem "fow_i_whistle";
        _unit addweapon "LIB_Binocular_GER";
        _unit linkItem "ItemMap";
        _unit linkItem "ItemCompass";
        _unit linkItem "ItemWatch";

        (uniformContainer _unit) addItemCargoGlobal ["ACE_Flashlight_MX991", 1];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs", 1];

        (uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot", 8];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 2];

        (vestContainer _unit) addMagazineCargoGlobal ["fow_30Rnd_45acp", 4];
        _unit addWeapon "fow_w_m1a1_thompson";

        (vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2", 2];
        (vestContainer _unit) addMagazineCargoGlobal ["SmokeShell", 2];

        (uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp",3];
        _unit addWeapon "fow_w_m1911";

        (unitBackpack _unit) addItemCargoGlobal ["ACE_EntrenchingTool",1];
        (unitBackpack _unit) addItemCargoGlobal ["fow_30Rnd_45acp_T",3];
    };

    // Team leader.
    case "tl": {
        _unit addHeadgear "fow_h_usmc_m1";
        _unit forceAddUniform "fow_u_usmc_p41_01_private";
        _unit addVest "fow_v_usmc_garand";
        _unit addbackpack "fow_b_usmc_m1928";

        _unit linkItem "fow_i_whistle";
        _unit addweapon "LIB_Binocular_GER";
        _unit linkItem "ItemCompass";
        _unit linkItem "ItemWatch";

        (uniformContainer _unit) addItemCargoGlobal ["ACE_LIB_LadungPM", 1];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs", 1];

        (uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot", 8];

        (vestContainer _unit) addMagazineCargoGlobal ["fow_8Rnd_762x63", 6];
        _unit addWeapon "fow_w_m1_garand";

        (vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2", 2];
        (vestContainer _unit) addMagazineCargoGlobal ["SmokeShellRed", 2];

        (uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp",3];
        _unit addWeapon "fow_w_m1911";

        (unitBackpack _unit) addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag",2];
        (unitBackpack _unit) addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag",3];
        (unitBackpack _unit) addItemCargoGlobal ["fow_8Rnd_762x63",3];
    };

    // Rifleman.
    case "rfl": {
        _unit addHeadgear "fow_h_usmc_m1";
        _unit forceAddUniform "fow_u_usmc_p41_01_private";
        _unit addVest "fow_v_usmc_garand";
        _unit addbackpack "fow_b_usmc_m1928";

        _unit linkItem "ItemCompass";
        _unit linkItem "ItemWatch";

        (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs", 1];

        (uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot", 8];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 2];

        (vestContainer _unit) addMagazineCargoGlobal ["fow_8Rnd_762x63", 6];
        _unit addWeapon "fow_w_m1_garand";

        (vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2", 2];

        (uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp", 3];
        _unit addWeapon "fow_w_m1911";

        (unitBackpack _unit) addItemCargoGlobal ["ACE_EntrenchingTool", 1];
        (unitBackpack _unit) addItemCargoGlobal ["fow_8Rnd_762x63", 6];
    };

    // Rifleman with AT4.
    case "rflat": {

    };

    // Grenadier.
    case "gr": {

    };

    // Automatic Rifleman.
    case "ar": {
        _unit addHeadgear "fow_h_usmc_m1";
        _unit forceAddUniform "fow_u_usmc_p41_01_private";
        _unit addVest "fow_v_usmc_garand";
        _unit addbackpack "fow_b_usmc_m1928";

        _unit linkItem "ItemCompass";
        _unit linkItem "ItemWatch";

        (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs", 1];

        (uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot", 8];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 2];

        (vestContainer _unit) addMagazineCargoGlobal ["fow_20Rnd_762x63", 6];
        _unit addWeapon "fow_w_m1918a2_bak";
		_unit addPrimaryWeaponItem "fow_w_acc_m1918a2_handle";
        _unit addPrimaryWeaponItem "fow_w_acc_m1918a2_bipod";

        (vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2", 2];

        (uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp", 3];
        _unit addWeapon "fow_w_m1911";

        (unitBackpack _unit) addItemCargoGlobal ["ACE_EntrenchingTool", 1];
        (unitBackpack _unit) addItemCargoGlobal ["fow_20Rnd_762x63", 4];
    };

    // Assitant Automatic Rifleman.
    case "aar": {
        _unit addHeadgear "fow_h_usmc_m1";
        _unit forceAddUniform "fow_u_usmc_p41_01_private";
        _unit addVest "fow_v_usmc_garand";
        _unit addbackpack "fow_b_usmc_m1928";

        _unit linkItem "ItemCompass";
        _unit linkItem "ItemWatch";

        (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs", 1];

        (uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot", 8];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 2];

        (vestContainer _unit) addMagazineCargoGlobal ["fow_8Rnd_762x63", 4];
        _unit addWeapon "fow_w_m1_garand";

        (vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2", 2];
        (vestContainer _unit) addMagazineCargoGlobal ["SmokeShell",2];

        (uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp", 3];
        _unit addWeapon "fow_w_m1911";

        (unitBackpack _unit) addMagazineCargoGlobal ["fow_20Rnd_762x63", 10];
        (unitBackpack _unit) addItemCargoGlobal ["ACE_EntrenchingTool", 1];
        (unitBackpack _unit) addItemCargoGlobal ["fow_8Rnd_762x63", 6];
    };

    // Designated Marksman.
    case "dm": {

    };


    // Machine Gunner.
    case "mg": {

    };

    // Assitant Machine Gunner.
    case "amg": {

    };

    // Anti-Tank.
    case "at": {

    };

    // AT Ammo handler.
    case "aat": {

    };

    // Anti-Aircraft gunner.
    case "aa": {

    };

    // Anti-Aircraft Assitant.
    case "aaa": {

    };

    // Engineer.
    case "en": {

    };

    // Explosives Specialist.
    case "exp": {

    };

    // Sniper.
    case "sn": {

    };

    // Spotter.
    case "sp": {

    };

    // Diver Squad Leader.
    case "divsl": {

    };

    // Diver Medic.
    case "divme": {

    };

    // Diver Explosives Specialist.
    case "divexp": {
    };

    // Diver.
    case "div": {
    };

    // Helicopter pilot.
    case "hplt": {

    };

    // Jet pilot.
    case "jplt": {

    };

    // Combat crew
    case "ccrw": {

    };


    default {
        _unit sideChat format ["DEBUG (bmt_configEquipment_fow_usmc.sqf): unit role %1 is not defined. Defaulting to rifleman.", _unitRole];

        _unit addHeadgear "fow_h_usmc_m1";
        _unit forceAddUniform "fow_u_usmc_p41_01_private";
        _unit addVest "fow_v_usmc_garand";
        _unit addbackpack "fow_b_usmc_m1928";

        _unit linkItem "ItemCompass";
        _unit linkItem "ItemWatch";

        (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs", 1];

        (uniformContainer _unit) addItemCargoGlobal ["ACE_quikclot", 8];
        (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet", 2];

        (vestContainer _unit) addMagazineCargoGlobal ["fow_8Rnd_762x63", 6];
        _unit addWeapon "fow_w_m1_garand";

        (vestContainer _unit) addMagazineCargoGlobal ["fow_e_mk2", 2];

        (uniformContainer _unit) addMagazineCargoGlobal ["fow_7Rnd_45acp", 3];
        _unit addWeapon "fow_w_m1911";

        (unitBackpack _unit) addItemCargoGlobal ["ACE_EntrenchingTool", 1];
        (unitBackpack _unit) addItemCargoGlobal ["fow_8Rnd_762x63", 6];
    };
};

// Primary weapon selected by default.
if (_isInfantry) then {
    _unit selectWeapon (primaryWeapon _unit);
};

// Unit insignia.
[_unit,_unitInsignia] call bis_fnc_setUnitInsignia;

//============================================= END OF FILE =============================================//
