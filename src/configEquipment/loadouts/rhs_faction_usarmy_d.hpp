class baseMan {// Weaponless baseclass
    displayName = "Unarmed";

    uniform[] = {"rhs_uniform_cu_ucp"};
    vest[] = {"rhsusf_iotv_ucp_rifleman"};
    backpack[] = {};
    headgear[] = {"rhsusf_ach_helmet_ucp"};
    goggles[] = {"rhs_googles_black"};
    binoculars[] = {};
    nightVision[] = {};

    // Weapons
    primaryWeapon[] = {};       // {weaponName, {attachment1a, attachment1a}, {attachment2, attachment2a}, attachment3, attachment4}
    secondaryWeapon[] = {};
    launcher[] = {};

    // Items and magazines
    magazines[] = {};      // Magazimes {magazineName, count}
    items[] = {};          // Items in uniform and vest {itemName, count}
    backpackItems[] = {};  // Items in the backpack {itemName, count}

    // These are added directly into their respective slots
    map[] = {};
    radio[] = {};
    gps[] = {};
    compass[] = {};
    watch[] = {};

    rank[] = {"private"};
    insignia[] = {};

    preLoadout = "";
    postLoadout = "";

    languages[] = {"english"};
};

class rfl : baseMan {
    displayName = "Rifleman";
    primaryWeapon[] = {
            {"rhs_weap_m4a1_pmag", "rhsusf_acc_compm4"}
        };
    secondaryWeapon[] = {
        {"rhsusf_weap_m9"}
    };
    magazines[] = {
        EXPAND_7("rhs_mag_30Rnd_556x45_M855_Stanag"),
        "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",
        EXPAND_5("SmokeShell"),
        EXPAND_4("rhs_mag_m67"),
        EXPAND_2("rhsusf_mag_15Rnd_9x19_FMJ")
    };
    items[] = {
        "ACE_EarPlugs", EXPAND_4("ACE_packingBandage"), EXPAND_5("ACE_elasticBandage"), EXPAND_5("ACE_CableTie")
    };
};

class rflat : rfl {
    displayName = "Rifleman (AT)";
    launcher[] = {
        {"rhs_weap_M136_hedp"}
    };
    magazines[] += {
        {"rhs_m136_hedp_mag", 1}
    };
};

class rfluav : rfl {
    displayName = "UAV Operator";
    backpack[] = {"B_rhsusf_B_BACKPACK"};
};

class gr : rfl {
    displayName = "Grenadier";
    vest[] = {"rhsusf_iotv_ucp_Grenadier"};
    primaryWeapon[] = {
        {"rhs_weap_m4a1_m320"}
    };
    magazines[] += {
        EXPAND_2("rhsusf_mag_15Rnd_9x19_FMJ"),
        EXPAND_6("rhs_mag_M433_HEDP"),
        EXPAND_4("rhs_mag_m713_Red"),
        EXPAND_3("ACE_HuntIR_M203")
    };
};
//magazines[] = {"rhs_mag_30Rnd_556x45_M855_Stanag","rhs_mag_30Rnd_556x45_M855_Stanag","rhs_mag_30Rnd_556x45_M855_Stanag","rhs_mag_30Rnd_556x45_M855_Stanag","rhs_mag_30Rnd_556x45_M855_Stanag","rhs_mag_30Rnd_556x45_M855_Stanag","rhs_mag_30Rnd_556x45_M855_Stanag","rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red","SmokeShell","SmokeShell","SmokeShell","SmokeShell","SmokeShell","rhs_mag_m67","rhs_mag_m67","rhs_mag_m67","rhs_mag_m67","rhsusf_mag_15Rnd_9x19_FMJ","rhsusf_mag_15Rnd_9x19_FMJ","ACE_HuntIR_M203","rhs_mag_m713_Red","rhs_mag_m713_Red","1Rnd_HE_Grenade_shell"};
class tl : rfl {
    displayName = "Team Leader";
    vest[] = {"rhsusf_iotv_ucp_Teamleader"};
    binoculars[] = {"Binocular"};
    rank[] = {"corporal"};

    test[] = {"test1"};
};

class sl : tl {
    displayName = "Squad Leader";
    headgear[] = {"rhsusf_ach_helmet_ESS_ucp"};
    primaryWeapon[] = {
        {"rhs_weap_m4a1_m203s", {"rhsusf_acc_eotech_552"}}
    };
    items[] += {"ACE_DAGR"};
    magazines[] += {
        "ACE_HuntIR_M203", EXPAND_2("rhs_mag_m713_Red"), "1Rnd_HE_Grenade_shell"
    };

    rank[] = {"sergeant"};
    postLoadout = "systemChat format ['this is my player %1', _unit];";
};

class pl : sl {
    displayName = "Platoon Leader";
    rank[] = {"lieutenant"};
};

class psg : sl {
    displayName = "Platoon Sergeant";
};

class rto : rfl {
    displayName = "Radiotelephone Operator";
};

class fo : rto {
    displayName = "Forward Observer";
};

class jtac : rto {
    displayName = "Joint Terminal Attack Controller";
};

class me : rfl {
    displayName = "Combat Medic";
    postLoadout = "_unit setVariable ['ace_medical_medicClass', 1, true];";
};

class pme : me {
    displayName = "Platoon Medic";
    postLoadout = "_unit setVariable ['ace_medical_medicClass', 2, true];";
};

class ar : rfl {
    displayName = "Automatic Rifleman";
};

class aar : rfl {
    displayName = "Assitant Automatic Rifleman";
};

class dm : rfl {
    displayName = "Designated Marksman";
};

class mg : ar {
    displayName = "Machine Gunner";
};

class amg: aar {
    displayName = "Assitant Machine Gunner";
};

class at : rflat {
    displayName = "Anti-Tank";
};

class aat : aar {
    displayName = "AT Ammo handler";
};

class aa : at {
    displayName = "Anti-Aircraft gunner";
};

class aaa : aat {
    displayName = "Anti-Aircraft Assitant";
};

class en : rfl {
    displayName = "Engineer";
    postLoadout = "_unit setVariable ['ACE_IsEngineer', 1, true];";
};

class cen : en {
    displayName = "Chief Engineer";
    postLoadout = "_unit setVariable ['ACE_IsEngineer', 2, true];";
};

class exp : rfl {
    displayName = "Explosives Specialist";
    postLoadout = "_unit setVariable ['ACE_IsEOD', 1, true];";
};

class sp : rfl {
    displayName = "Spotter";
};

class sn : sp {
    displayName = "Snipper";
};

class div : rfl {
    displayName = "Diver";
};

class divme : div {
    displayName = "Diver Medic";
    postLoadout = "_unit setVariable ['ace_medical_medicClass', 1, true];";
};

class divexp : div {
    displayName = "Diver Explosives Specialist";
    postLoadout = "_unit setVariable ['ACE_IsEOD', 1, true];";
};

class divtl : div {
    displayName = "Diver Team Leader";
};

class hplt : rfl {
    displayName = "Helicopter Pilot";
};

class jplt : hplt {
    displayName = "Jet Pilot";
};

class ccrw : rfl {
    displayName = "Combat Crew";
};
