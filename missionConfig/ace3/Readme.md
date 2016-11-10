## /missionConfig/ace3

In here, ACE 3 dependent scripts and functions are placed. The purpose for configuring ACE 3 using scripts
instead of making use of the modules and functions in the editor is to have a mission independent of the
addon. In this way, the mission can be played with and without ACE 3 without requiring any editing changes.

* `bmt_ace3_configuration.sqf`: This script configures especial units in the ACE 3 addon: medics, doctors,
medical vehicles, medical facilities, engineers, repair vehicles, repair facilities, surrendered and
handcuffed units and helicopters with fast roping. This is done through arrays and the file itself is
called through the `include` directive in the `postInit` function defined in the file
`/src/ace3/functions/fn_ace3_config_postInit.sqf`. When using this file, it is not necessary to place any
modules to configure such units in the editor.

  Unit names must be introduced as strings in the corresponding array, and each unit must have its own
  entry. The supported roles (arrays) are:

  * **Medical**: `_medics`, `_medicVehicles`, `_medicFacilities`, `_doctors`.
  * **Explosives**: `_expSpecialists`.
  * **Repair**: `_engineers`, `_repairVehicles`, `_repairFacilities`.
  * **Captives**: `_surrenderedUnits`, `_handcuffedUnits`.
  * **FRIES**: `_heliFRIES`.

  Example: Unit `bmt_alpha1_1` and `bmt_alpha2_3` are medics and `bmt_medevac_1` is a medical helicopter
  equipped with FRIES.

  `_medics        = ["bmt_alpha1_1", "bmt_alpha2_3"];`

  `_medicVehicles = ["bmt_medevac_1"];`
  
  `_heliFRIES     = ["bmt_medevac_1"];`