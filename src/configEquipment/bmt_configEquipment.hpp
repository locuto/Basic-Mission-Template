//=======================================================================================================//
// File: bmt_configEquipment.hpp                                                                         //
// Author: TheMagnetar                                                                                   //
// Version: 1.0                                                                                          //
// File creation: 2015/11/26                                                                             //
// Description: This file declares the functions that will be available if this module is used during    //
//              the mission. In this case it declares functions that configure the playable unit's gear. //
// Changes: 1.0 (2015/11/26) First public version.                                                       //
//=======================================================================================================//

// Especifies that this component has been loaded.
#ifdef BMT_COMPONENTS
    class configEquipment {};
#endif

// Define the functions of this component.
#ifdef BMT_FUNCTIONS_INTERNAL
    class configEquipment {
        file = "src\configEquipment\functions";
        class configEquipment {};
        class configEquipment_legacy {};
        class configEquipment_replaceGear {};
        class configEquipment_replaceItem {};
        class configEquipment_replaceLinkedItems {};
        class configEquipment_replaceWeapon {};
    };
#endif

// Define configurable parameters at mission start.
#ifdef BMT_PARAMETERS
    //===================================================================================================//
    // Delimiter                                                                                         //
    //===================================================================================================//
    class bmt_paramLine_equipment {
        title = "========== Equipment/Gear configuration";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Virtual Arsenal Profiles: Use Virtual Arsenal Profiles when equiping units?                       //
    // Default option: VA profiles are not used.                                                         //
    // Note: VA profiles must be already saved in players computer.                                      //
    //===================================================================================================//
    class bmt_param_useVAProfiles {
        title = "Use Virtual Arsenal profiles";
        values[] = {0,1};
        texts[] = {"No","Yes"};
        default = BMT_VAPROFILES;
    };
#endif
#include "script_component.hpp"
#ifdef BMT_LOADOUTS

    class blu_f {
        displayName = "NATO";
        #include "loadouts\blu_f.hpp"
    };

    class blu_ctrg_f {
        displayName = "CTRG";
        #include "loadouts\blu_ctrg_f.hpp"
    };

    class blu_g_f {
        displayName = "FIA (NATO)";
        #include "loadouts\blu_g_f.hpp"
    };

    class blu_gen_f {
        displayName = "Gendarmerie";
        #include "loadouts\blu_gen_f.hpp"
    };

    class blu_t_f {
        displayName = "NATO (Pacific)";
        #include "loadouts\blu_t_f.hpp"
    };

    class civ_f {
        displayName = "Civilian";
        #include "loadouts\civ_f.hpp"
    };

    class ind_f {
        displayName = "AAF";
        #include "loadouts\ind_f.hpp"
    };

    class ind_g_f {
        displayName = "FIA (Resistance)";
        #include "loadouts\ind_g_f.hpp"
    };

    class ind_c_f {
        displayName = "Syndikat";
        #include "loadouts\ind_c_f.hpp"
    };

    class opf_f {
        displayName = "CTAC";
        #include "loadouts\opf_f.hpp"
    };

    class opf_g_f {
        displayName = "FIA (Opfor)";
        #include "loadouts\opf_g_f.hpp"
    };

    class opf_t_f {
        displayName = "CTAC (Pacific)";
        #include "loadouts\opf_t_f.hpp"
    };

    class rhs_faction_usarmy_d {
        displayName = "RHS USARMY (Desert)";
        #include "loadouts\rhs_faction_usarmy_d.hpp"
    };

    class rhs_faction_usarmy_wd {
        displayName = "RHS USARMY (Woodland)";
        #include "loadouts\rhs_faction_usarmy_wd.hpp"
    };

    class rhs_faction_usmc_d {
        displayName = "RHS USMC (Desert)";
        #include "loadouts\rhs_faction_usmc_d.hpp"
    };

    class rhs_faction_usmc_wd {
        displayName = "RHS USMC (Woodland)";
        #include "loadouts\rhs_faction_usmc_wd.hpp"
    };
#endif

//============================================= END OF FILE =============================================//
