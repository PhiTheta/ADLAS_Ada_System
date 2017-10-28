
package Registers is

---------------------------------------------------------------------------------------------------
                             -- Input Registers
---------------------------------------------------------------------------------------------------
   type Input_Registers is (Initialisation_Register,
                            Safety_Register,
                            Launch_Register,
                            Control_Monitor,
                            Primary_Command_Register,
                            Secondary_Command_Register,
                            Datalink_Register);

   for Input_Registers use (Initialisation_Register        => 16#0000_0001#,
                            Safety_Register                => 16#0000_0010#,
                            Launch_Register                => 16#0000_0100#,
                            Control_Monitor                => 16#0000_1000#,
                            Primary_Command_Register       => 16#0001_0000#,
                            Secondary_Command_Register     => 16#0010_0000#,
                            Datalink_Register              => 16#0100_0000#);

---------------------------------------------------------------------------------------------------
                             -- Output Registers
---------------------------------------------------------------------------------------------------

   type Output_Registers is (Command_Registers);

   for Output_Registers use (Command_Registers             => 16#2000_0000#);

end Registers;
