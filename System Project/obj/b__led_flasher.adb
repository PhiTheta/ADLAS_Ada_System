pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__led_flasher.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__led_flasher.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E095 : Short_Integer; pragma Import (Ada, E095, "ada__tags_E");
   E053 : Short_Integer; pragma Import (Ada, E053, "system__soft_links_E");
   E051 : Short_Integer; pragma Import (Ada, E051, "system__exception_table_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "system__bb__timing_events_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__real_time_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "system__tasking__protected_objects_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "system__tasking__protected_objects__multiprocessors_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "system__tasking__restricted__stages_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "st__stm32f4__gpio_E");
   E141 : Short_Integer; pragma Import (Ada, E141, "st__stm32f4__rcc_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "button_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "lights_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

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
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");
      procedure Install_Restricted_Handlers_Sequential;
      pragma Import (C,Install_Restricted_Handlers_Sequential, "__gnat_attach_all_handlers");

      Partition_Elaboration_Policy : Character;
      pragma Import (C, Partition_Elaboration_Policy, "__gnat_partition_elaboration_policy");

      procedure Activate_All_Tasks_Sequential;
      pragma Import (C, Activate_All_Tasks_Sequential, "__gnat_activate_all_tasks");
      procedure Start_Slave_CPUs;
      pragma Import (C, Start_Slave_CPUs, "__gnat_start_slave_cpus");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := 0;
      WC_Encoding := 'b';
      Locking_Policy := 'C';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := 'F';
      Partition_Elaboration_Policy := 'S';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 1;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E051 := E051 + 1;
      Ada.Tags'Elab_Body;
      E095 := E095 + 1;
      System.Bb.Timing_Events'Elab_Spec;
      E109 := E109 + 1;
      E053 := E053 + 1;
      Ada.Real_Time'Elab_Body;
      E006 := E006 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E126 := E126 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E139 := E139 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E133 := E133 + 1;
      ST.STM32F4.GPIO'ELAB_SPEC;
      E142 := E142 + 1;
      ST.STM32F4.RCC'ELAB_SPEC;
      E141 := E141 + 1;
      Button'Elab_Spec;
      Button'Elab_Body;
      E121 := E121 + 1;
      Lights'Elab_Spec;
      Lights'Elab_Body;
      E119 := E119 + 1;
      Install_Restricted_Handlers_Sequential;
      Activate_All_Tasks_Sequential;
      Start_Slave_CPUs;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_led_flasher");

   procedure main is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
   end;

--  BEGIN Object file/option list
   --   C:\Users\simon\OneDrive\Documents\STM32\Missile Defence System - Own Project\led_flasher-stm32f4\obj\st.o
   --   C:\Users\simon\OneDrive\Documents\STM32\Missile Defence System - Own Project\led_flasher-stm32f4\obj\st-stm32f4.o
   --   C:\Users\simon\OneDrive\Documents\STM32\Missile Defence System - Own Project\led_flasher-stm32f4\obj\st-stm32f4-gpio.o
   --   C:\Users\simon\OneDrive\Documents\STM32\Missile Defence System - Own Project\led_flasher-stm32f4\obj\st-stm32f4-rcc.o
   --   C:\Users\simon\OneDrive\Documents\STM32\Missile Defence System - Own Project\led_flasher-stm32f4\obj\st-stm32f4-exti.o
   --   C:\Users\simon\OneDrive\Documents\STM32\Missile Defence System - Own Project\led_flasher-stm32f4\obj\button.o
   --   C:\Users\simon\OneDrive\Documents\STM32\Missile Defence System - Own Project\led_flasher-stm32f4\obj\lights.o
   --   C:\Users\simon\OneDrive\Documents\STM32\Missile Defence System - Own Project\led_flasher-stm32f4\obj\led_flasher.o
   --   -LC:\Users\simon\OneDrive\Documents\STM32\Missile Defence System - Own Project\led_flasher-stm32f4\obj\
   --   -LC:\Users\simon\OneDrive\Documents\STM32\Missile Defence System - Own Project\led_flasher-stm32f4\obj\
   --   -LC:\gnat\2017\arm-eabi\lib\gnat\ravenscar-full-stm32f4\adalib\
--  END Object file/option list   

end ada_main;
