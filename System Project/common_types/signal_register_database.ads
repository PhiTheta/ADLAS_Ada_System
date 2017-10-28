with Constants;
with Signals;
with Registers;



package Signal_Register_Database is
---------------------------------------------------------------------------------------------------
                             -- Input Register to Signal
---------------------------------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   type Input_Signals_Database is record
      Phase_Key          : Constants.Phase_Key;
      Register           : Registers.Input_Registers;
      Bit_Number         : Constants.Bit_Number_Type;
      Default_State      : Boolean;
   end record;

   type Input_Register_Mapping_Array is array (Signals.Input_Signal_Type) of Input_Signals_Database;
   -----------------------------------------------------------------------------

   Input_Registers_Database : constant Input_Register_Mapping_Array :=
     Input_Register_Mapping_Array'(
---------------------------------------------------------------------------------------------------
                             -- Launch Register
---------------------------------------------------------------------------------------------------
                             Signals.Launch_Code_1   =>
                               Input_Signals_Database'(Phase_Key     => Constants.First_Phase,
                                                       Register      => Registers.Launch_Register,
                                                       Bit_Number    => 1,
                                                       Default_State => False),

                             Signals.Launch_Code_2   =>
                               Input_Signals_Database'(Phase_Key     => Constants.First_Phase,
                                                       Register      => Registers.Launch_Register,
                                                       Bit_Number    => 2,
                                                       Default_State => False),

                             Signals.Launch_Code_3   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Second_Phase,
                                                       Register      => Registers.Launch_Register,
                                                       Bit_Number    => 3,
                                                       Default_State => False),

                             Signals.Launch_Code_4   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Fourth_Phase,
                                                       Register      => Registers.Launch_Register,
                                                       Bit_Number    => 4,
                                                       Default_State => False),

                             Signals.Launch_Code_5   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Launch_Register,
                                                       Bit_Number    => 5,
                                                       Default_State => False),

                             Signals.Launch_Code_6   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Second_Phase,
                                                       Register      => Registers.Launch_Register,
                                                       Bit_Number    => 6,
                                                       Default_State => False),

                             Signals.Remote_Access   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Second_Phase,
                                                       Register      => Registers.Launch_Register,
                                                       Bit_Number    => 7,
                                                       Default_State => False),

                             Signals.Activate_Setup  =>
                               Input_Signals_Database'(Phase_Key     => Constants.Second_Phase,
                                                       Register      => Registers.Launch_Register,
                                                       Bit_Number    => 8,
                                                       Default_State => False),

---------------------------------------------------------------------------------------------------
                             -- Control Monitor Register
---------------------------------------------------------------------------------------------------

                             Signals.Instance_1   =>
                               Input_Signals_Database'(Phase_Key     => Constants.First_Phase,
                                                       Register      => Registers.Control_Monitor,
                                                       Bit_Number    => 1,
                                                       Default_State => False),

                             Signals.Instance_2   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Second_Phase,
                                                       Register      => Registers.Control_Monitor,
                                                       Bit_Number    => 2,
                                                       Default_State => False),

                             Signals.Instance_3   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Control_Monitor,
                                                       Bit_Number    => 3,
                                                       Default_State => False),

                             Signals.Diagnostic_Check_Pulse   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Control_Monitor,
                                                       Bit_Number    => 4,
                                                       Default_State => False),

                             Signals.Logic_Counter   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Control_Monitor,
                                                       Bit_Number    => 5,
                                                       Default_State => False),

---------------------------------------------------------------------------------------------------
                             -- Datalink Register
---------------------------------------------------------------------------------------------------

                             Signals.Safety_Code_1   =>
                               Input_Signals_Database'(Phase_Key     => Constants.First_Phase,
                                                       Register      => Registers.Datalink_Register,
                                                       Bit_Number    => 1,
                                                       Default_State => False),

                             Signals.Speed_Signal   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Second_Phase,
                                                       Register      => Registers.Datalink_Register,
                                                       Bit_Number    => 2,
                                                       Default_State => False),

                             Signals.Trajectory_Initialise   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Datalink_Register,
                                                       Bit_Number    => 3,
                                                       Default_State => False),

                             Signals.Corruption_Check   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Datalink_Register,
                                                       Bit_Number    => 4,
                                                       Default_State => False),

                             Signals.Delivery_Set   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Datalink_Register,
                                                       Bit_Number    => 5,
                                                       Default_State => False),

                             Signals.Delivery_Reset   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Datalink_Register,
                                                       Bit_Number    => 6,
                                                       Default_State => False),

---------------------------------------------------------------------------------------------------
                             -- Initialisation Register
---------------------------------------------------------------------------------------------------

                             Signals.Check_For_Arming_Key_Set   =>
                               Input_Signals_Database'(Phase_Key     => Constants.First_Phase,
                                                       Register      => Registers.Initialisation_Register,
                                                       Bit_Number    => 1,
                                                       Default_State => False),

                             Signals.Check_For_Arming_Key_Reset   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Second_Phase,
                                                       Register      => Registers.Initialisation_Register,
                                                       Bit_Number    => 2,
                                                       Default_State => False),

                             Signals.Check_Sonar_Test   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Initialisation_Register,
                                                       Bit_Number    => 3,
                                                       Default_State => False),

                             Signals.Check_Hangar_Weight   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Initialisation_Register,
                                                       Bit_Number    => 4,
                                                       Default_State => False),

                             Signals.Check_Clamp   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Initialisation_Register,
                                                       Bit_Number    => 5,
                                                       Default_State => False),

                             Signals.Check_Umbilical_Cable   =>
                               Input_Signals_Database'(Phase_Key     => Constants.Third_Phase,
                                                       Register      => Registers.Initialisation_Register,
                                                       Bit_Number    => 6,
                                                       Default_State => False));

---------------------------------------------------------------------------------------------------
                             -- Output Register to Signal
---------------------------------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   type Output_Signals_Database is record
      Phase_Key          : Constants.Phase_Key;
      Register           : Registers.Output_Registers;
      Bit_Number         : Constants.Bit_Number_Type;
      Default_State      : Boolean;
   end record;

   type Output_Register_Mapping_Array is array (Signals.Output_Signal_Type) of Output_Signals_Database;
   -----------------------------------------------------------------------------

   Output_Registers_Database : constant Output_Register_Mapping_Array :=
     Output_Register_Mapping_Array'(
---------------------------------------------------------------------------------------------------
                             -- Command Register
---------------------------------------------------------------------------------------------------
                             Signals.Set_Command_1   =>
                               Output_Signals_Database'(Phase_Key     => Constants.First_Phase,
                                                        Register      => Registers.Command_Registers,
                                                        Bit_Number    => 1,
                                                        Default_State => False));


end Signal_Register_Database;
