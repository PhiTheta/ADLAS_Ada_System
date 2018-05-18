pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2011 (20110428)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_project_main" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#b70fd83c#;
   pragma Export (C, u00001, "project_mainB");
   u00002 : constant Version_32 := 16#7d892fe9#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#b2760b05#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#24da05f0#;
   pragma Export (C, u00004, "constantsS");
   u00005 : constant Version_32 := 16#04d86555#;
   pragma Export (C, u00005, "first_phaseB");
   u00006 : constant Version_32 := 16#144511de#;
   pragma Export (C, u00006, "first_phaseS");
   u00007 : constant Version_32 := 16#a3584303#;
   pragma Export (C, u00007, "failure_logB");
   u00008 : constant Version_32 := 16#7d19725f#;
   pragma Export (C, u00008, "failure_logS");
   u00009 : constant Version_32 := 16#f77d8799#;
   pragma Export (C, u00009, "interfacesS");
   u00010 : constant Version_32 := 16#7dfad76d#;
   pragma Export (C, u00010, "failure_typesS");
   u00011 : constant Version_32 := 16#fbc3e0c6#;
   pragma Export (C, u00011, "main_system_checksB");
   u00012 : constant Version_32 := 16#a5d172df#;
   pragma Export (C, u00012, "main_system_checksS");
   u00013 : constant Version_32 := 16#d40bd897#;
   pragma Export (C, u00013, "signal_register_databaseS");
   u00014 : constant Version_32 := 16#277491f6#;
   pragma Export (C, u00014, "registersS");
   u00015 : constant Version_32 := 16#d6f717e0#;
   pragma Export (C, u00015, "system__unsigned_typesS");
   u00016 : constant Version_32 := 16#bc164b96#;
   pragma Export (C, u00016, "systemS");
   u00017 : constant Version_32 := 16#4e543b75#;
   pragma Export (C, u00017, "signalsS");
   u00018 : constant Version_32 := 16#67335317#;
   pragma Export (C, u00018, "system__memoryB");
   u00019 : constant Version_32 := 16#769df783#;
   pragma Export (C, u00019, "system__memoryS");
   u00020 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00020, "adaS");
   u00021 : constant Version_32 := 16#08dd46b8#;
   pragma Export (C, u00021, "ada__exceptionsB");
   u00022 : constant Version_32 := 16#9b58bcb3#;
   pragma Export (C, u00022, "ada__exceptionsS");
   u00023 : constant Version_32 := 16#52aba3be#;
   pragma Export (C, u00023, "ada__exceptions__last_chance_handlerB");
   u00024 : constant Version_32 := 16#48e7b9e5#;
   pragma Export (C, u00024, "ada__exceptions__last_chance_handlerS");
   u00025 : constant Version_32 := 16#360d120c#;
   pragma Export (C, u00025, "system__soft_linksB");
   u00026 : constant Version_32 := 16#c254e109#;
   pragma Export (C, u00026, "system__soft_linksS");
   u00027 : constant Version_32 := 16#92dc3a55#;
   pragma Export (C, u00027, "system__parametersB");
   u00028 : constant Version_32 := 16#bfbc7097#;
   pragma Export (C, u00028, "system__parametersS");
   u00029 : constant Version_32 := 16#1907a5d3#;
   pragma Export (C, u00029, "system__secondary_stackB");
   u00030 : constant Version_32 := 16#a8786c38#;
   pragma Export (C, u00030, "system__secondary_stackS");
   u00031 : constant Version_32 := 16#ace32e1e#;
   pragma Export (C, u00031, "system__storage_elementsB");
   u00032 : constant Version_32 := 16#46db360e#;
   pragma Export (C, u00032, "system__storage_elementsS");
   u00033 : constant Version_32 := 16#4f750b3b#;
   pragma Export (C, u00033, "system__stack_checkingB");
   u00034 : constant Version_32 := 16#1fb4f7ba#;
   pragma Export (C, u00034, "system__stack_checkingS");
   u00035 : constant Version_32 := 16#53547b86#;
   pragma Export (C, u00035, "system__exception_tableB");
   u00036 : constant Version_32 := 16#2d789733#;
   pragma Export (C, u00036, "system__exception_tableS");
   u00037 : constant Version_32 := 16#ff3fa16b#;
   pragma Export (C, u00037, "system__htableB");
   u00038 : constant Version_32 := 16#53c9e749#;
   pragma Export (C, u00038, "system__htableS");
   u00039 : constant Version_32 := 16#8b7dad61#;
   pragma Export (C, u00039, "system__string_hashB");
   u00040 : constant Version_32 := 16#9a8a9302#;
   pragma Export (C, u00040, "system__string_hashS");
   u00041 : constant Version_32 := 16#6a8a6a74#;
   pragma Export (C, u00041, "system__exceptionsB");
   u00042 : constant Version_32 := 16#2aa87202#;
   pragma Export (C, u00042, "system__exceptionsS");
   u00043 : constant Version_32 := 16#b012ff50#;
   pragma Export (C, u00043, "system__img_intB");
   u00044 : constant Version_32 := 16#becdab54#;
   pragma Export (C, u00044, "system__img_intS");
   u00045 : constant Version_32 := 16#dc8e33ed#;
   pragma Export (C, u00045, "system__tracebackB");
   u00046 : constant Version_32 := 16#dd919fe3#;
   pragma Export (C, u00046, "system__tracebackS");
   u00047 : constant Version_32 := 16#907d882f#;
   pragma Export (C, u00047, "system__wch_conB");
   u00048 : constant Version_32 := 16#03fd65ab#;
   pragma Export (C, u00048, "system__wch_conS");
   u00049 : constant Version_32 := 16#22fed88a#;
   pragma Export (C, u00049, "system__wch_stwB");
   u00050 : constant Version_32 := 16#2eec49aa#;
   pragma Export (C, u00050, "system__wch_stwS");
   u00051 : constant Version_32 := 16#5d4d477e#;
   pragma Export (C, u00051, "system__wch_cnvB");
   u00052 : constant Version_32 := 16#1d03e37d#;
   pragma Export (C, u00052, "system__wch_cnvS");
   u00053 : constant Version_32 := 16#75729fba#;
   pragma Export (C, u00053, "system__wch_jisB");
   u00054 : constant Version_32 := 16#49717869#;
   pragma Export (C, u00054, "system__wch_jisS");
   u00055 : constant Version_32 := 16#ada34a87#;
   pragma Export (C, u00055, "system__traceback_entriesB");
   u00056 : constant Version_32 := 16#ee37a5d7#;
   pragma Export (C, u00056, "system__traceback_entriesS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.htable%s
   --  system.img_int%s
   --  system.img_int%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.standard_library%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.unsigned_types%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.secondary_stack%s
   --  system.soft_links%b
   --  system.secondary_stack%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  constants%s
   --  failure_types%s
   --  failure_log%s
   --  failure_log%b
   --  first_phase%s
   --  first_phase%b
   --  registers%s
   --  signals%s
   --  main_system_checks%s
   --  project_main%b
   --  signal_register_database%s
   --  main_system_checks%b
   --  END ELABORATION ORDER


end ada_main;
