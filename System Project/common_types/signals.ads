

package Signals is

---------------------------------------------------------------------------------------------------
                             -- Input Signals
---------------------------------------------------------------------------------------------------
   type Input_Signal_Type is (
                              -- Launch Signals
                              Launch_Code_1, Launch_Code_2, Launch_Code_3,
                              Launch_Code_4, Launch_Code_5, Launch_Code_6,
                              Remote_Access, Activate_Setup,

                              -- Control Monitor Signals
                              Instance_1, Instance_2, Instance_3,
                              Diagnostic_Check_Pulse,
                              Logic_Counter,

                              -- Datalink Signals
                              Safety_Code_1, Speed_Signal, Trajectory_Initialise,
                              Corruption_Check, Delivery_Set, Delivery_Reset,

                              -- Initiatize Signals
                              Check_For_Arming_Key_Set, Check_For_Arming_Key_Reset,
                              Check_Sonar_Test, Check_Hangar_Weight, Check_Clamp,
                              Check_Umbilical_Cable);


   for Input_Signal_Type use (-- Launch Signals
                              Launch_Code_1                 =>  0001,
                              Launch_Code_2                 =>  0002,
                              Launch_Code_3                 =>  0003,
                              Launch_Code_4                 =>  0004,
                              Launch_Code_5                 =>  0005,
                              Launch_Code_6                 =>  0006,
                              Remote_Access                 =>  0007,
                              Activate_Setup                =>  0008,

                              -- Control Monitor Signals
                              Instance_1                    =>  0009,
                              Instance_2                    =>  0010,
                              Instance_3                    =>  0011,
                              Diagnostic_Check_Pulse        =>  0012,
                              Logic_Counter                 =>  0013,

                              -- Datalink Signals
                              Safety_Code_1                 =>  0014,
                              Speed_SignaL                  =>  0015,
                              Trajectory_Initialise         =>  0016,
                              Corruption_Check              =>  0017,
                              Delivery_Set                  =>  0018,
                              Delivery_Reset                =>  0019,

                              -- Initiatize Signals
                              Check_For_Arming_Key_Set      =>  0020,
                              Check_For_Arming_Key_Reset    =>  0021,
                              Check_Sonar_Test              =>  0022,
                              Check_Hangar_Weight           =>  0023,
                              Check_Clamp                   =>  0024,
                              Check_Umbilical_Cable         =>  0025);

   -----------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
                             -- Output Signals
---------------------------------------------------------------------------------------------------
   type Output_Signal_Type is (
                              -- Command Signals
                              Set_Command_1);


   for Output_Signal_Type use (-- Command Signals
                              Set_Command_1      =>  0001);

      -----------------------------------------------------------------------------




end Signals;
