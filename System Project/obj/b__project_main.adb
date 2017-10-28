pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__project_main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__project_main.adb");

package body ada_main is
   pragma Warnings (Off);

   E26 : Short_Integer; pragma Import (Ada, E26, "system__soft_links_E");
   E36 : Short_Integer; pragma Import (Ada, E36, "system__exception_table_E");
   E30 : Short_Integer; pragma Import (Ada, E30, "system__secondary_stack_E");
   E08 : Short_Integer; pragma Import (Ada, E08, "failure_log_E");
   E06 : Short_Integer; pragma Import (Ada, E06, "first_phase_E");
   E12 : Short_Integer; pragma Import (Ada, E12, "main_system_checks_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");
   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
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
      Zero_Cost_Exceptions : Integer;
      pragma Import (C, Zero_Cost_Exceptions, "__gl_zero_cost_exceptions");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");

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
      Zero_Cost_Exceptions := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      Finalize_Library_Objects := null;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E36 := E36 + 1;
      System.Soft_Links'Elab_Body;
      E26 := E26 + 1;
      System.Secondary_Stack'Elab_Body;
      E30 := E30 + 1;
      E08 := E08 + 1;
      E06 := E06 + 1;
      E12 := E12 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_project_main");

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
   --   C:\Users\simon.crowther\OneDrive\Documents\STM32\System Project\Obj\constants.o
   --   C:\Users\simon.crowther\OneDrive\Documents\STM32\System Project\Obj\failure_types.o
   --   C:\Users\simon.crowther\OneDrive\Documents\STM32\System Project\Obj\failure_log.o
   --   C:\Users\simon.crowther\OneDrive\Documents\STM32\System Project\Obj\first_phase.o
   --   C:\Users\simon.crowther\OneDrive\Documents\STM32\System Project\Obj\registers.o
   --   C:\Users\simon.crowther\OneDrive\Documents\STM32\System Project\Obj\signals.o
   --   C:\Users\simon.crowther\OneDrive\Documents\STM32\System Project\Obj\Project_Main.o
   --   C:\Users\simon.crowther\OneDrive\Documents\STM32\System Project\Obj\signal_register_database.o
   --   C:\Users\simon.crowther\OneDrive\Documents\STM32\System Project\Obj\main_system_checks.o
   --   -LC:\Users\simon.crowther\OneDrive\Documents\STM32\System Project\Obj\
   --   -LC:/gnat/2011/lib/gcc/i686-pc-mingw32/4.5.3/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
