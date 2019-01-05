with Package_1;
with Package_2;

package body General_Checks is

   type Example_Register_Type is (Example_Register_1,
	                              Example_Register_2);

   for Example_Register_Type use (Example_Register_1    => 16#0100_0100#,
                                  Example_Register_2    => 16#0100_0120#);
                                  -- 20 in hex is 32 in binary bits

   for Example_Register_Type'Size use 32;

   type Example_Set_Value_Space_Type is
   record
       Empty_1     : Package_1.First_16_Bit_Type;
       Empty_2     : Package_1.First_64_Bit_Type;
       Empty_3     : Package_1.First_16_Bit_Type;
       Empty_4     : Package_2.First_16_Bit_Type;
       Empty_5     : Package_2.First_8_Bit_Type;
   end record;
   
   for Example_Set_Value_Space_Type use
   record
       Empty_1 at 0  range 0 .. 15;
       Empty_2 at 2  range 0 .. 63;
       Empty_3 at 10 range 0 .. 15;
       Empty_4 at 12 range 0 .. 15;
       Empty_5 at 14 range 0 .. 7;
   end record;
   
   for Example_Set_Value_Space_Type'Size use 16 * 8;
   for Example_Set_Value_Space_Type'Alignment use 2;
   
   type Example_Enum_Type is (Example_1,
                              Example_2,
							  Example_3);

   type Example_Phase_Type is range 0 .. 3;
   
   Constant_1 : constant Example_Phase_Type := 0;
   Constant_2 : constant Example_Phase_Type := 1;
   Constant_3 : constant Example_Phase_Type := 2;
   Constant_4 : constant Example_Phase_Type := 3;
   
   --Record
   type Example_Attributes_Type is record
      Example_Id  : Package_1.Example_Id_Type;
   end record;

   --Array Declaration
   type Example_Attributes_Array_Type is array (Example_Phase_Type) of Example_Attributes_Type;
   
   --Array of record indexed by Example_Phase_Type
   Example_Test_Attributes: constant Example_Attributes_Array_Type := Example_Attributes_Array_Type'
     (Constant_1 => Example_Attributes_Type'
        (Example_Id   => Package_1.Test_10000),
	  Constant_2 => Example_Attributes_Type'
        (Example_Id   => Package_1.Test_10001),
      Constant_3 => Example_Attributes_Type'
        (Example_Id   => Package_1.Test_10002),
	  Constant_4 => Example_Attributes_Type'
        (Example_Id   => Package_1.Test_10003));
		 
		 
   procedure Check_Arming_Key_Lock
     (Arming_Key_Lock  : in Signals.Input_Signal_Type,
      Example_Out      : out Sub_Example_Phase_Type)
      is separate;
   
   function Get_Signal_State
     (Signal : in Signals.Input_Signal_Type)
      return Boolean
      is separate;
   
   
   function Hanger_Door_Check
     (Hanger_Door_Lock : in Constants.Hanger_Door_Locks_Type)
      return Boolean
      is separate;
   
   
   function Rocket_Motor_Check
     (Rocket_Motor : in Constants.Rockets_Type)
      return Boolean
      is separate; 
   
   
   function Clamp_Rings_Check
     (Clamp_Rings_Check_Signal : in Signals.Input_Signal_Type)
      return Boolean
      is separate;  

end General_Checks;
