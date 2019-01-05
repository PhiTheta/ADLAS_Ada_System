<<<<<<< HEAD
pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);
=======
pragma Warnings (Off);
pragma Ada_95;
with System;
package ada_main is
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
<<<<<<< HEAD
                    "GNAT Version: 4.9.3" & ASCII.NUL;
=======
                    "GNAT Version: GPL 2017 (20170515-63)" & ASCII.NUL;
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_controller" & ASCII.NUL;
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
<<<<<<< HEAD
   u00001 : constant Version_32 := 16#0ef60026#;
   pragma Export (C, u00001, "controllerB");
   u00002 : constant Version_32 := 16#a964624f#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#c15e0628#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#9a3f0a9b#;
   pragma Export (C, u00005, "ada__text_ioB");
   u00006 : constant Version_32 := 16#27578d68#;
   pragma Export (C, u00006, "ada__text_ioS");
   u00007 : constant Version_32 := 16#e9502879#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#e1be92cd#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#51ba2b93#;
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerB");
   u00010 : constant Version_32 := 16#909606f8#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerS");
   u00011 : constant Version_32 := 16#90249111#;
   pragma Export (C, u00011, "systemS");
   u00012 : constant Version_32 := 16#77a147eb#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#6144caac#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#65bb1402#;
   pragma Export (C, u00014, "system__parametersB");
   u00015 : constant Version_32 := 16#3ba8257b#;
   pragma Export (C, u00015, "system__parametersS");
   u00016 : constant Version_32 := 16#643ddf46#;
   pragma Export (C, u00016, "system__secondary_stackB");
   u00017 : constant Version_32 := 16#3b455e78#;
   pragma Export (C, u00017, "system__secondary_stackS");
   u00018 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00018, "system__storage_elementsB");
   u00019 : constant Version_32 := 16#bde7db15#;
   pragma Export (C, u00019, "system__storage_elementsS");
   u00020 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00020, "system__stack_checkingB");
   u00021 : constant Version_32 := 16#1e9bfaf9#;
   pragma Export (C, u00021, "system__stack_checkingS");
   u00022 : constant Version_32 := 16#7ff7f3a3#;
   pragma Export (C, u00022, "system__exception_tableB");
   u00023 : constant Version_32 := 16#6ca6d92c#;
   pragma Export (C, u00023, "system__exception_tableS");
   u00024 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00024, "system__htableB");
   u00025 : constant Version_32 := 16#14e622fb#;
   pragma Export (C, u00025, "system__htableS");
   u00026 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00026, "system__string_hashB");
   u00027 : constant Version_32 := 16#b6b84985#;
   pragma Export (C, u00027, "system__string_hashS");
   u00028 : constant Version_32 := 16#9e373b74#;
   pragma Export (C, u00028, "system__exceptionsB");
   u00029 : constant Version_32 := 16#a83a37b3#;
   pragma Export (C, u00029, "system__exceptionsS");
   u00030 : constant Version_32 := 16#cd9019cf#;
   pragma Export (C, u00030, "system__exceptions__machineS");
   u00031 : constant Version_32 := 16#a2eb6533#;
   pragma Export (C, u00031, "system__exceptions_debugB");
   u00032 : constant Version_32 := 16#6b2380a9#;
   pragma Export (C, u00032, "system__exceptions_debugS");
   u00033 : constant Version_32 := 16#570325c8#;
   pragma Export (C, u00033, "system__img_intB");
   u00034 : constant Version_32 := 16#92ff71d3#;
   pragma Export (C, u00034, "system__img_intS");
   u00035 : constant Version_32 := 16#ff5c7695#;
   pragma Export (C, u00035, "system__tracebackB");
   u00036 : constant Version_32 := 16#b8200e4c#;
   pragma Export (C, u00036, "system__tracebackS");
   u00037 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00037, "system__wch_conB");
   u00038 : constant Version_32 := 16#8b59b3c3#;
   pragma Export (C, u00038, "system__wch_conS");
   u00039 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00039, "system__wch_stwB");
   u00040 : constant Version_32 := 16#a6489fc2#;
   pragma Export (C, u00040, "system__wch_stwS");
   u00041 : constant Version_32 := 16#9b29844d#;
   pragma Export (C, u00041, "system__wch_cnvB");
   u00042 : constant Version_32 := 16#84ee0930#;
   pragma Export (C, u00042, "system__wch_cnvS");
   u00043 : constant Version_32 := 16#69adb1b9#;
   pragma Export (C, u00043, "interfacesS");
   u00044 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00044, "system__wch_jisB");
   u00045 : constant Version_32 := 16#049e1011#;
   pragma Export (C, u00045, "system__wch_jisS");
   u00046 : constant Version_32 := 16#8cb17bcd#;
   pragma Export (C, u00046, "system__traceback_entriesB");
   u00047 : constant Version_32 := 16#2535f183#;
   pragma Export (C, u00047, "system__traceback_entriesS");
   u00048 : constant Version_32 := 16#1b5643e2#;
   pragma Export (C, u00048, "ada__streamsB");
   u00049 : constant Version_32 := 16#2564c958#;
   pragma Export (C, u00049, "ada__streamsS");
   u00050 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00050, "ada__io_exceptionsS");
   u00051 : constant Version_32 := 16#08ba48f3#;
   pragma Export (C, u00051, "ada__tagsB");
   u00052 : constant Version_32 := 16#ee1e5cdd#;
   pragma Export (C, u00052, "ada__tagsS");
   u00053 : constant Version_32 := 16#c12203be#;
   pragma Export (C, u00053, "system__unsigned_typesS");
   u00054 : constant Version_32 := 16#1e25d3f1#;
   pragma Export (C, u00054, "system__val_lluB");
   u00055 : constant Version_32 := 16#bbd054cc#;
   pragma Export (C, u00055, "system__val_lluS");
   u00056 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00056, "system__val_utilB");
   u00057 : constant Version_32 := 16#3c8427ef#;
   pragma Export (C, u00057, "system__val_utilS");
   u00058 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00058, "system__case_utilB");
   u00059 : constant Version_32 := 16#b42df8c6#;
   pragma Export (C, u00059, "system__case_utilS");
   u00060 : constant Version_32 := 16#e0b7a7e8#;
   pragma Export (C, u00060, "interfaces__c_streamsB");
   u00061 : constant Version_32 := 16#6c8b8ac5#;
   pragma Export (C, u00061, "interfaces__c_streamsS");
   u00062 : constant Version_32 := 16#bfa64d6c#;
   pragma Export (C, u00062, "system__crtlS");
   u00063 : constant Version_32 := 16#ec6e1273#;
   pragma Export (C, u00063, "system__file_ioB");
   u00064 : constant Version_32 := 16#0165f036#;
   pragma Export (C, u00064, "system__file_ioS");
   u00065 : constant Version_32 := 16#8cbe6205#;
   pragma Export (C, u00065, "ada__finalizationB");
   u00066 : constant Version_32 := 16#22e22193#;
   pragma Export (C, u00066, "ada__finalizationS");
   u00067 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00067, "system__finalization_rootB");
   u00068 : constant Version_32 := 16#dfd6e281#;
   pragma Export (C, u00068, "system__finalization_rootS");
   u00069 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00069, "interfaces__cB");
   u00070 : constant Version_32 := 16#96001448#;
   pragma Export (C, u00070, "interfaces__cS");
   u00071 : constant Version_32 := 16#d0432c8d#;
   pragma Export (C, u00071, "system__img_enum_newB");
   u00072 : constant Version_32 := 16#f16897d1#;
   pragma Export (C, u00072, "system__img_enum_newS");
   u00073 : constant Version_32 := 16#eec8f81b#;
   pragma Export (C, u00073, "system__os_libB");
   u00074 : constant Version_32 := 16#fc501b71#;
   pragma Export (C, u00074, "system__os_libS");
   u00075 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00075, "system__stringsB");
   u00076 : constant Version_32 := 16#ee9b8077#;
   pragma Export (C, u00076, "system__stringsS");
   u00077 : constant Version_32 := 16#da3df06e#;
   pragma Export (C, u00077, "system__file_control_blockS");
   u00078 : constant Version_32 := 16#1f8826cb#;
   pragma Export (C, u00078, "system__finalization_mastersB");
   u00079 : constant Version_32 := 16#df27fd08#;
   pragma Export (C, u00079, "system__finalization_mastersS");
   u00080 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00080, "system__address_imageB");
   u00081 : constant Version_32 := 16#31c80c2b#;
   pragma Export (C, u00081, "system__address_imageS");
   u00082 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00082, "system__img_boolB");
   u00083 : constant Version_32 := 16#65fde0fa#;
   pragma Export (C, u00083, "system__img_boolS");
   u00084 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00084, "system__ioB");
   u00085 : constant Version_32 := 16#0e66665e#;
   pragma Export (C, u00085, "system__ioS");
   u00086 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00086, "system__storage_poolsB");
   u00087 : constant Version_32 := 16#5e6a53cc#;
   pragma Export (C, u00087, "system__storage_poolsS");
   u00088 : constant Version_32 := 16#e34550ca#;
   pragma Export (C, u00088, "system__pool_globalB");
   u00089 : constant Version_32 := 16#c88d2d16#;
   pragma Export (C, u00089, "system__pool_globalS");
   u00090 : constant Version_32 := 16#6810466c#;
   pragma Export (C, u00090, "system__memoryB");
   u00091 : constant Version_32 := 16#c959f725#;
   pragma Export (C, u00091, "system__memoryS");
   u00092 : constant Version_32 := 16#1220f12d#;
   pragma Export (C, u00092, "system__storage_pools__subpoolsB");
   u00093 : constant Version_32 := 16#b0e8cddc#;
   pragma Export (C, u00093, "system__storage_pools__subpoolsS");
   u00094 : constant Version_32 := 16#aba9f469#;
   pragma Export (C, u00094, "system__storage_pools__subpools__finalizationB");
   u00095 : constant Version_32 := 16#9662cb63#;
   pragma Export (C, u00095, "system__storage_pools__subpools__finalizationS");
   u00096 : constant Version_32 := 16#308bd2fd#;
   pragma Export (C, u00096, "write_fileB");
   u00097 : constant Version_32 := 16#eeeb4b65#;
   pragma Export (C, u00097, "ada__text_io__text_streamsB");
   u00098 : constant Version_32 := 16#d41c52c3#;
   pragma Export (C, u00098, "ada__text_io__text_streamsS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
=======
   u00001 : constant Version_32 := 16#11d67d16#;
   pragma Export (C, u00001, "controllerB");
   u00002 : constant Version_32 := 16#b6df930e#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#0a55feef#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#1d1c6062#;
   pragma Export (C, u00005, "ada__text_ioB");
   u00006 : constant Version_32 := 16#95711eac#;
   pragma Export (C, u00006, "ada__text_ioS");
   u00007 : constant Version_32 := 16#85a06f66#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#1a0dcc03#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#e947e6a9#;
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerB");
   u00010 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerS");
   u00011 : constant Version_32 := 16#32a08138#;
   pragma Export (C, u00011, "systemS");
   u00012 : constant Version_32 := 16#4e7785b8#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#ac24596d#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00014, "system__parametersB");
   u00015 : constant Version_32 := 16#4c8a8c47#;
   pragma Export (C, u00015, "system__parametersS");
   u00016 : constant Version_32 := 16#30ad09e5#;
   pragma Export (C, u00016, "system__secondary_stackB");
   u00017 : constant Version_32 := 16#88327e42#;
   pragma Export (C, u00017, "system__secondary_stackS");
   u00018 : constant Version_32 := 16#f103f468#;
   pragma Export (C, u00018, "system__storage_elementsB");
   u00019 : constant Version_32 := 16#1f63cb3c#;
   pragma Export (C, u00019, "system__storage_elementsS");
   u00020 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00020, "system__stack_checkingB");
   u00021 : constant Version_32 := 16#bc1fead0#;
   pragma Export (C, u00021, "system__stack_checkingS");
   u00022 : constant Version_32 := 16#87a448ff#;
   pragma Export (C, u00022, "system__exception_tableB");
   u00023 : constant Version_32 := 16#6f0ee87a#;
   pragma Export (C, u00023, "system__exception_tableS");
   u00024 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00024, "system__exceptionsB");
   u00025 : constant Version_32 := 16#5ac3ecce#;
   pragma Export (C, u00025, "system__exceptionsS");
   u00026 : constant Version_32 := 16#80916427#;
   pragma Export (C, u00026, "system__exceptions__machineB");
   u00027 : constant Version_32 := 16#047ef179#;
   pragma Export (C, u00027, "system__exceptions__machineS");
   u00028 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00028, "system__exceptions_debugB");
   u00029 : constant Version_32 := 16#4c2a78fc#;
   pragma Export (C, u00029, "system__exceptions_debugS");
   u00030 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00030, "system__img_intB");
   u00031 : constant Version_32 := 16#307b61fa#;
   pragma Export (C, u00031, "system__img_intS");
   u00032 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#6c825ffc#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00034, "system__traceback_entriesB");
   u00035 : constant Version_32 := 16#32fb7748#;
   pragma Export (C, u00035, "system__traceback_entriesS");
   u00036 : constant Version_32 := 16#18d5fcc5#;
   pragma Export (C, u00036, "system__traceback__symbolicB");
   u00037 : constant Version_32 := 16#9df1ae6d#;
   pragma Export (C, u00037, "system__traceback__symbolicS");
   u00038 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00038, "ada__containersS");
   u00039 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00039, "ada__exceptions__tracebackB");
   u00040 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00040, "ada__exceptions__tracebackS");
   u00041 : constant Version_32 := 16#e865e681#;
   pragma Export (C, u00041, "system__bounded_stringsB");
   u00042 : constant Version_32 := 16#455da021#;
   pragma Export (C, u00042, "system__bounded_stringsS");
   u00043 : constant Version_32 := 16#42315736#;
   pragma Export (C, u00043, "system__crtlS");
   u00044 : constant Version_32 := 16#08e0d717#;
   pragma Export (C, u00044, "system__dwarf_linesB");
   u00045 : constant Version_32 := 16#b1bd2788#;
   pragma Export (C, u00045, "system__dwarf_linesS");
   u00046 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00046, "ada__charactersS");
   u00047 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00047, "ada__characters__handlingB");
   u00048 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00048, "ada__characters__handlingS");
   u00049 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00049, "ada__characters__latin_1S");
   u00050 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00050, "ada__stringsS");
   u00051 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00051, "ada__strings__mapsB");
   u00052 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00052, "ada__strings__mapsS");
   u00053 : constant Version_32 := 16#9dc9b435#;
   pragma Export (C, u00053, "system__bit_opsB");
   u00054 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00054, "system__bit_opsS");
   u00055 : constant Version_32 := 16#0626fdbb#;
   pragma Export (C, u00055, "system__unsigned_typesS");
   u00056 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00056, "ada__strings__maps__constantsS");
   u00057 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00057, "interfacesS");
   u00058 : constant Version_32 := 16#9f00b3d3#;
   pragma Export (C, u00058, "system__address_imageB");
   u00059 : constant Version_32 := 16#934c1c02#;
   pragma Export (C, u00059, "system__address_imageS");
   u00060 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00060, "system__img_unsB");
   u00061 : constant Version_32 := 16#99d2c14c#;
   pragma Export (C, u00061, "system__img_unsS");
   u00062 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00062, "system__ioB");
   u00063 : constant Version_32 := 16#ace27677#;
   pragma Export (C, u00063, "system__ioS");
   u00064 : constant Version_32 := 16#11faaec1#;
   pragma Export (C, u00064, "system__mmapB");
   u00065 : constant Version_32 := 16#08d13e5f#;
   pragma Export (C, u00065, "system__mmapS");
   u00066 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00066, "ada__io_exceptionsS");
   u00067 : constant Version_32 := 16#9d8ecedc#;
   pragma Export (C, u00067, "system__mmap__os_interfaceB");
   u00068 : constant Version_32 := 16#8f4541b8#;
   pragma Export (C, u00068, "system__mmap__os_interfaceS");
   u00069 : constant Version_32 := 16#54632e7c#;
   pragma Export (C, u00069, "system__os_libB");
   u00070 : constant Version_32 := 16#ed466fde#;
   pragma Export (C, u00070, "system__os_libS");
   u00071 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00071, "system__case_utilB");
   u00072 : constant Version_32 := 16#16a9e8ef#;
   pragma Export (C, u00072, "system__case_utilS");
   u00073 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00073, "system__stringsB");
   u00074 : constant Version_32 := 16#4c1f905e#;
   pragma Export (C, u00074, "system__stringsS");
   u00075 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00075, "interfaces__cB");
   u00076 : constant Version_32 := 16#70be4e8c#;
   pragma Export (C, u00076, "interfaces__cS");
   u00077 : constant Version_32 := 16#d0bc914c#;
   pragma Export (C, u00077, "system__object_readerB");
   u00078 : constant Version_32 := 16#7f932442#;
   pragma Export (C, u00078, "system__object_readerS");
   u00079 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00079, "system__val_lliB");
   u00080 : constant Version_32 := 16#a8846798#;
   pragma Export (C, u00080, "system__val_lliS");
   u00081 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00081, "system__val_lluB");
   u00082 : constant Version_32 := 16#7cd4aac9#;
   pragma Export (C, u00082, "system__val_lluS");
   u00083 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00083, "system__val_utilB");
   u00084 : constant Version_32 := 16#9e0037c6#;
   pragma Export (C, u00084, "system__val_utilS");
   u00085 : constant Version_32 := 16#5bbc3f2f#;
   pragma Export (C, u00085, "system__exception_tracesB");
   u00086 : constant Version_32 := 16#167fa1a2#;
   pragma Export (C, u00086, "system__exception_tracesS");
   u00087 : constant Version_32 := 16#d178f226#;
   pragma Export (C, u00087, "system__win32S");
   u00088 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00088, "system__wch_conB");
   u00089 : constant Version_32 := 16#29dda3ea#;
   pragma Export (C, u00089, "system__wch_conS");
   u00090 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00090, "system__wch_stwB");
   u00091 : constant Version_32 := 16#04cc8feb#;
   pragma Export (C, u00091, "system__wch_stwS");
   u00092 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00092, "system__wch_cnvB");
   u00093 : constant Version_32 := 16#266a1919#;
   pragma Export (C, u00093, "system__wch_cnvS");
   u00094 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00094, "system__wch_jisB");
   u00095 : constant Version_32 := 16#a61a0038#;
   pragma Export (C, u00095, "system__wch_jisS");
   u00096 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00096, "ada__streamsB");
   u00097 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00097, "ada__streamsS");
   u00098 : constant Version_32 := 16#d85792d6#;
   pragma Export (C, u00098, "ada__tagsB");
   u00099 : constant Version_32 := 16#8813468c#;
   pragma Export (C, u00099, "ada__tagsS");
   u00100 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00100, "system__htableB");
   u00101 : constant Version_32 := 16#b66232d2#;
   pragma Export (C, u00101, "system__htableS");
   u00102 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00102, "system__string_hashB");
   u00103 : constant Version_32 := 16#143c59ac#;
   pragma Export (C, u00103, "system__string_hashS");
   u00104 : constant Version_32 := 16#1d9142a4#;
   pragma Export (C, u00104, "system__val_unsB");
   u00105 : constant Version_32 := 16#168e1080#;
   pragma Export (C, u00105, "system__val_unsS");
   u00106 : constant Version_32 := 16#4c01b69c#;
   pragma Export (C, u00106, "interfaces__c_streamsB");
   u00107 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00107, "interfaces__c_streamsS");
   u00108 : constant Version_32 := 16#6f0d52aa#;
   pragma Export (C, u00108, "system__file_ioB");
   u00109 : constant Version_32 := 16#95d1605d#;
   pragma Export (C, u00109, "system__file_ioS");
   u00110 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00110, "ada__finalizationS");
   u00111 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00111, "system__finalization_rootB");
   u00112 : constant Version_32 := 16#7d52f2a8#;
   pragma Export (C, u00112, "system__finalization_rootS");
   u00113 : constant Version_32 := 16#cf3f1b90#;
   pragma Export (C, u00113, "system__file_control_blockS");
   u00114 : constant Version_32 := 16#a09d8c6d#;
   pragma Export (C, u00114, "outputB");
   u00115 : constant Version_32 := 16#c9eaac34#;
   pragma Export (C, u00115, "outputS");
   u00116 : constant Version_32 := 16#b43d1c63#;
   pragma Export (C, u00116, "ada__directoriesB");
   u00117 : constant Version_32 := 16#71554425#;
   pragma Export (C, u00117, "ada__directoriesS");
   u00118 : constant Version_32 := 16#0d7f1a43#;
   pragma Export (C, u00118, "ada__calendarB");
   u00119 : constant Version_32 := 16#5b279c75#;
   pragma Export (C, u00119, "ada__calendarS");
   u00120 : constant Version_32 := 16#a99e1d66#;
   pragma Export (C, u00120, "system__os_primitivesB");
   u00121 : constant Version_32 := 16#b82f904e#;
   pragma Export (C, u00121, "system__os_primitivesS");
   u00122 : constant Version_32 := 16#b6166bc6#;
   pragma Export (C, u00122, "system__task_lockB");
   u00123 : constant Version_32 := 16#532ab656#;
   pragma Export (C, u00123, "system__task_lockS");
   u00124 : constant Version_32 := 16#1a9147da#;
   pragma Export (C, u00124, "system__win32__extS");
   u00125 : constant Version_32 := 16#8f218b8f#;
   pragma Export (C, u00125, "ada__calendar__formattingB");
   u00126 : constant Version_32 := 16#67ade573#;
   pragma Export (C, u00126, "ada__calendar__formattingS");
   u00127 : constant Version_32 := 16#e3cca715#;
   pragma Export (C, u00127, "ada__calendar__time_zonesB");
   u00128 : constant Version_32 := 16#6dc27f8f#;
   pragma Export (C, u00128, "ada__calendar__time_zonesS");
   u00129 : constant Version_32 := 16#d763507a#;
   pragma Export (C, u00129, "system__val_intB");
   u00130 : constant Version_32 := 16#7a05ab07#;
   pragma Export (C, u00130, "system__val_intS");
   u00131 : constant Version_32 := 16#faa9a7b2#;
   pragma Export (C, u00131, "system__val_realB");
   u00132 : constant Version_32 := 16#cc89f629#;
   pragma Export (C, u00132, "system__val_realS");
   u00133 : constant Version_32 := 16#b2a569d2#;
   pragma Export (C, u00133, "system__exn_llfB");
   u00134 : constant Version_32 := 16#8ede3ae4#;
   pragma Export (C, u00134, "system__exn_llfS");
   u00135 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00135, "system__float_controlB");
   u00136 : constant Version_32 := 16#d25cc204#;
   pragma Export (C, u00136, "system__float_controlS");
   u00137 : constant Version_32 := 16#62d0e74f#;
   pragma Export (C, u00137, "system__powten_tableS");
   u00138 : constant Version_32 := 16#4fedafb0#;
   pragma Export (C, u00138, "ada__directories__validityB");
   u00139 : constant Version_32 := 16#d34bdf62#;
   pragma Export (C, u00139, "ada__directories__validityS");
   u00140 : constant Version_32 := 16#e5480ede#;
   pragma Export (C, u00140, "ada__strings__fixedB");
   u00141 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00141, "ada__strings__fixedS");
   u00142 : constant Version_32 := 16#144f64ae#;
   pragma Export (C, u00142, "ada__strings__searchB");
   u00143 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00143, "ada__strings__searchS");
   u00144 : constant Version_32 := 16#3791e504#;
   pragma Export (C, u00144, "ada__strings__unboundedB");
   u00145 : constant Version_32 := 16#9fdb1809#;
   pragma Export (C, u00145, "ada__strings__unboundedS");
   u00146 : constant Version_32 := 16#933d1555#;
   pragma Export (C, u00146, "system__compare_array_unsigned_8B");
   u00147 : constant Version_32 := 16#9ba3f0b5#;
   pragma Export (C, u00147, "system__compare_array_unsigned_8S");
   u00148 : constant Version_32 := 16#97d13ec4#;
   pragma Export (C, u00148, "system__address_operationsB");
   u00149 : constant Version_32 := 16#21ac3f0b#;
   pragma Export (C, u00149, "system__address_operationsS");
   u00150 : constant Version_32 := 16#a2250034#;
   pragma Export (C, u00150, "system__storage_pools__subpoolsB");
   u00151 : constant Version_32 := 16#cc5a1856#;
   pragma Export (C, u00151, "system__storage_pools__subpoolsS");
   u00152 : constant Version_32 := 16#6abe5dbe#;
   pragma Export (C, u00152, "system__finalization_mastersB");
   u00153 : constant Version_32 := 16#695cb8f2#;
   pragma Export (C, u00153, "system__finalization_mastersS");
   u00154 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00154, "system__img_boolB");
   u00155 : constant Version_32 := 16#c779f0d3#;
   pragma Export (C, u00155, "system__img_boolS");
   u00156 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00156, "system__storage_poolsB");
   u00157 : constant Version_32 := 16#114d1f95#;
   pragma Export (C, u00157, "system__storage_poolsS");
   u00158 : constant Version_32 := 16#9aad1ff1#;
   pragma Export (C, u00158, "system__storage_pools__subpools__finalizationB");
   u00159 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00159, "system__storage_pools__subpools__finalizationS");
   u00160 : constant Version_32 := 16#70f25dad#;
   pragma Export (C, u00160, "system__atomic_countersB");
   u00161 : constant Version_32 := 16#86fcacb5#;
   pragma Export (C, u00161, "system__atomic_countersS");
   u00162 : constant Version_32 := 16#5fc82639#;
   pragma Export (C, u00162, "system__machine_codeS");
   u00163 : constant Version_32 := 16#3c420900#;
   pragma Export (C, u00163, "system__stream_attributesB");
   u00164 : constant Version_32 := 16#8bc30a4e#;
   pragma Export (C, u00164, "system__stream_attributesS");
   u00165 : constant Version_32 := 16#de73ac25#;
   pragma Export (C, u00165, "system__file_attributesS");
   u00166 : constant Version_32 := 16#a5fd152e#;
   pragma Export (C, u00166, "system__os_constantsS");
   u00167 : constant Version_32 := 16#908d8e33#;
   pragma Export (C, u00167, "system__regexpB");
   u00168 : constant Version_32 := 16#119226f4#;
   pragma Export (C, u00168, "system__regexpS");
   u00169 : constant Version_32 := 16#eeeb4b65#;
   pragma Export (C, u00169, "ada__text_io__text_streamsB");
   u00170 : constant Version_32 := 16#df1f9a30#;
   pragma Export (C, u00170, "ada__text_io__text_streamsS");
   u00171 : constant Version_32 := 16#ee101ba4#;
   pragma Export (C, u00171, "system__memoryB");
   u00172 : constant Version_32 := 16#6bdde70c#;
   pragma Export (C, u00172, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.img_bool%s
   --  system.img_bool%b
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
<<<<<<< HEAD
=======
   --  system.machine_code%s
   --  system.atomic_counters%s
   --  system.atomic_counters%b
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
<<<<<<< HEAD
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
=======
   --  system.powten_table%s
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
<<<<<<< HEAD
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.os_lib%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.unsigned_types%s
   --  system.val_llu%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%b
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
   --  system.address_image%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.secondary_stack%s
   --  system.file_io%b
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  interfaces.c%b
   --  ada.tags%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
=======
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.val_util%s
   --  system.standard_library%s
   --  system.exception_traces%s
   --  ada.exceptions%s
   --  system.wch_stw%s
   --  system.val_util%b
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.os_lib%s
   --  system.bit_ops%s
   --  ada.characters.handling%s
   --  ada.exceptions.traceback%s
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.containers%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.secondary_stack%s
   --  system.address_image%s
   --  system.bounded_strings%s
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.wch_stw%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  interfaces.c%s
   --  system.win32%s
   --  system.mmap%s
   --  system.mmap.os_interface%s
   --  system.mmap.os_interface%b
   --  system.mmap%b
   --  system.os_lib%b
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
   --  ada.exceptions.traceback%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.bounded_strings%b
   --  ada.exceptions.last_chance_handler%b
   --  system.standard_library%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  interfaces.c%b
   --  ada.strings.maps%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.object_reader%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.fixed%s
   --  ada.strings.fixed%b
   --  system.os_constants%s
   --  system.task_lock%s
   --  system.task_lock%b
   --  system.val_real%s
   --  system.val_real%b
   --  system.val_uns%s
   --  system.val_uns%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools%b
   --  system.storage_pools.subpools.finalization%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.val_int%s
   --  system.val_int%b
   --  system.win32.ext%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.time_zones%s
   --  ada.calendar.time_zones%b
   --  ada.calendar.formatting%s
   --  ada.calendar.formatting%b
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.text_streams%s
   --  ada.text_io.text_streams%b
<<<<<<< HEAD
   --  write_file%b
   --  controller%b
   --  END ELABORATION ORDER


=======
   --  system.file_attributes%s
   --  system.regexp%s
   --  system.regexp%b
   --  ada.directories%s
   --  ada.directories.validity%s
   --  ada.directories.validity%b
   --  ada.directories%b
   --  output%s
   --  output%b
   --  controller%b
   --  END ELABORATION ORDER

>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
end ada_main;
