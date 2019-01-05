<<<<<<< HEAD
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__controller.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__controller.adb");
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E74 : Short_Integer; pragma Import (Ada, E74, "system__os_lib_E");
   E13 : Short_Integer; pragma Import (Ada, E13, "system__soft_links_E");
   E23 : Short_Integer; pragma Import (Ada, E23, "system__exception_table_E");
   E50 : Short_Integer; pragma Import (Ada, E50, "ada__io_exceptions_E");
   E52 : Short_Integer; pragma Import (Ada, E52, "ada__tags_E");
   E49 : Short_Integer; pragma Import (Ada, E49, "ada__streams_E");
   E70 : Short_Integer; pragma Import (Ada, E70, "interfaces__c_E");
   E29 : Short_Integer; pragma Import (Ada, E29, "system__exceptions_E");
   E68 : Short_Integer; pragma Import (Ada, E68, "system__finalization_root_E");
   E66 : Short_Integer; pragma Import (Ada, E66, "ada__finalization_E");
   E87 : Short_Integer; pragma Import (Ada, E87, "system__storage_pools_E");
   E79 : Short_Integer; pragma Import (Ada, E79, "system__finalization_masters_E");
   E93 : Short_Integer; pragma Import (Ada, E93, "system__storage_pools__subpools_E");
   E89 : Short_Integer; pragma Import (Ada, E89, "system__pool_global_E");
   E77 : Short_Integer; pragma Import (Ada, E77, "system__file_control_block_E");
   E64 : Short_Integer; pragma Import (Ada, E64, "system__file_io_E");
   E17 : Short_Integer; pragma Import (Ada, E17, "system__secondary_stack_E");
   E06 : Short_Integer; pragma Import (Ada, E06, "ada__text_io_E");
   E98 : Short_Integer; pragma Import (Ada, E98, "ada__text_io__text_streams_E");
=======
pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__controller.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__controller.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E070 : Short_Integer; pragma Import (Ada, E070, "system__os_lib_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exception_table_E");
   E066 : Short_Integer; pragma Import (Ada, E066, "ada__io_exceptions_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "ada__strings_E");
   E038 : Short_Integer; pragma Import (Ada, E038, "ada__containers_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exceptions_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__secondary_stack_E");
   E076 : Short_Integer; pragma Import (Ada, E076, "interfaces__c_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__strings__maps_E");
   E056 : Short_Integer; pragma Import (Ada, E056, "ada__strings__maps__constants_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "system__object_reader_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "system__dwarf_lines_E");
   E037 : Short_Integer; pragma Import (Ada, E037, "system__traceback__symbolic_E");
   E099 : Short_Integer; pragma Import (Ada, E099, "ada__tags_E");
   E097 : Short_Integer; pragma Import (Ada, E097, "ada__streams_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "system__file_control_block_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "system__finalization_root_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "ada__finalization_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "system__file_io_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "system__storage_pools_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "system__finalization_masters_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "system__storage_pools__subpools_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "ada__strings__unbounded_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "ada__calendar_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "ada__calendar__time_zones_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__text_io_E");
   E170 : Short_Integer; pragma Import (Ada, E170, "ada__text_io__text_streams_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "system__regexp_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "ada__directories_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "output_E");
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
<<<<<<< HEAD
      E98 := E98 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__text_streams__finalize_spec");
      begin
         F1;
      end;
      E06 := E06 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "ada__text_io__finalize_spec");
      begin
         F2;
      end;
      E79 := E79 - 1;
      E93 := E93 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__file_io__finalize_body");
      begin
         E64 := E64 - 1;
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__file_control_block__finalize_spec");
      begin
         E77 := E77 - 1;
         F4;
      end;
      E89 := E89 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__pool_global__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__storage_pools__subpools__finalize_spec");
=======
      E117 := E117 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__directories__finalize_spec");
      begin
         F1;
      end;
      E168 := E168 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__regexp__finalize_spec");
      begin
         F2;
      end;
      E006 := E006 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__text_io__finalize_spec");
      begin
         F3;
      end;
      E145 := E145 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__strings__unbounded__finalize_spec");
      begin
         F4;
      end;
      E151 := E151 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__storage_pools__subpools__finalize_spec");
      begin
         F5;
      end;
      E153 := E153 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__finalization_masters__finalize_spec");
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
      begin
         F6;
      end;
      declare
         procedure F7;
<<<<<<< HEAD
         pragma Import (Ada, F7, "system__finalization_masters__finalize_spec");
      begin
=======
         pragma Import (Ada, F7, "system__file_io__finalize_body");
      begin
         E109 := E109 - 1;
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
         F7;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");
<<<<<<< HEAD
=======

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
<<<<<<< HEAD
=======
      Runtime_Finalize;
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
<<<<<<< HEAD

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");
=======
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

<<<<<<< HEAD
      if Handler_Installed = 0 then
         Install_Handler;
      end if;
=======
      Runtime_Initialize (1);
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
<<<<<<< HEAD
      E23 := E23 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E50 := E50 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E49 := E49 + 1;
      Interfaces.C'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E29 := E29 + 1;
      System.Finalization_Root'Elab_Spec;
      E68 := E68 + 1;
      Ada.Finalization'Elab_Spec;
      E66 := E66 + 1;
      System.Storage_Pools'Elab_Spec;
      E87 := E87 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      System.Pool_Global'Elab_Spec;
      E89 := E89 + 1;
      System.File_Control_Block'Elab_Spec;
      E77 := E77 + 1;
      System.File_Io'Elab_Body;
      E64 := E64 + 1;
      E93 := E93 + 1;
      System.Finalization_Masters'Elab_Body;
      E79 := E79 + 1;
      E70 := E70 + 1;
      Ada.Tags'Elab_Body;
      E52 := E52 + 1;
      System.Soft_Links'Elab_Body;
      E13 := E13 + 1;
      System.Os_Lib'Elab_Body;
      E74 := E74 + 1;
      System.Secondary_Stack'Elab_Body;
      E17 := E17 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E06 := E06 + 1;
      Ada.Text_Io.Text_Streams'Elab_Spec;
      E98 := E98 + 1;
=======
      E023 := E023 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E066 := E066 + 1;
      Ada.Strings'Elab_Spec;
      E050 := E050 + 1;
      Ada.Containers'Elab_Spec;
      E038 := E038 + 1;
      System.Exceptions'Elab_Spec;
      E025 := E025 + 1;
      System.Soft_Links'Elab_Body;
      E013 := E013 + 1;
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E070 := E070 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E056 := E056 + 1;
      System.Secondary_Stack'Elab_Body;
      E017 := E017 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E045 := E045 + 1;
      E076 := E076 + 1;
      E052 := E052 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E037 := E037 + 1;
      E078 := E078 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E099 := E099 + 1;
      Ada.Streams'Elab_Spec;
      E097 := E097 + 1;
      System.File_Control_Block'Elab_Spec;
      E113 := E113 + 1;
      System.Finalization_Root'Elab_Spec;
      E112 := E112 + 1;
      Ada.Finalization'Elab_Spec;
      E110 := E110 + 1;
      System.File_Io'Elab_Body;
      E109 := E109 + 1;
      System.Storage_Pools'Elab_Spec;
      E157 := E157 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E153 := E153 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E151 := E151 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E145 := E145 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E119 := E119 + 1;
      Ada.Calendar.Time_Zones'Elab_Spec;
      E128 := E128 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E006 := E006 + 1;
      Ada.Text_Io.Text_Streams'Elab_Spec;
      E170 := E170 + 1;
      System.Regexp'Elab_Spec;
      E168 := E168 + 1;
      Ada.Directories'Elab_Spec;
      Ada.Directories'Elab_Body;
      E117 := E117 + 1;
      E115 := E115 + 1;
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_controller");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
<<<<<<< HEAD
   --   /media/sf_unix/Ada/Test_System/Obj/write_file.o
   --   /media/sf_unix/Ada/Test_System/Obj/controller.o
   --   -L/media/sf_unix/Ada/Test_System/Obj/
   --   -L/media/sf_unix/Ada/Test_System/Obj/
   --   -L/usr/lib/gcc/x86_64-linux-gnu/4.9/adalib/
   --   -shared
   --   -lgnat-4.9
=======
   --   C:\Users\simon\Documents\Programming\Ada\Test_System\Obj\output.o
   --   C:\Users\simon\Documents\Programming\Ada\Test_System\Obj\controller.o
   --   -LC:\Users\simon\Documents\Programming\Ada\Test_System\Obj\
   --   -LC:\Users\simon\Documents\Programming\Ada\Test_System\Obj\
   --   -LC:/gnat/2017/lib/gcc/i686-pc-mingw32/6.3.1/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
--  END Object file/option list   

end ada_main;
