with Text_IO;
package body Clock is

   Null_Timer : constant Timer_Type := Timer_Type'(Timeout_Period => Low_Res_Zero_Time,
                                                   Start_Time     => Low_Res_Zero_Time,
                                                   Is_Running     => False);

   procedure Test_Point is separate;
   ----------------
   -- Initialise --
   ----------------
   procedure Initialise is separate;

   ----------------------
   -- Get_Low_Res_Time --
   ----------------------
   function Get_Low_Res_Time return Low_Res_Time_Type is separate;

   ----------------------
   -- Get_Elapsed_Time --
   ----------------------
   function Get_Elapsed_Time
     (Start_Time : in Low_Res_Time_Type)
      return Low_Res_Time_Type is separate;

   -----------------
   -- Has_Expired --
   -----------------
   function Has_Expired
     (Start_Time : in Low_Res_Time_Type;
      Timeout : in Low_Res_Time_Type)
      return Boolean is separate;

   ------------------
   -- Milliseconds --
   ------------------
   function Milliseconds
     (Ms : in Sms_Types.Milliseconds_Type)
      return Low_Res_Time_Type is separate;

   --------------------------
   -- Milliseconds_Elapsed --
   --------------------------
   function Milliseconds_Elapsed
     (Start_Time : in Low_Res_Time_Type)
      return Sms_Types.Milliseconds_Type is separate;

   ---------------------------
   -- Set_Inputs_Time_Stamp --
   ---------------------------
   procedure Set_Inputs_Time_Stamp is separate;

   ---------------------------
   -- Get_Inputs_Time_Stamp --
   ---------------------------
   function Get_Inputs_Time_Stamp return Low_Res_Time_Type is separate;

   ---------------
   -- Are_Equal --
   ---------------
   function Are_Equal
     (Time_A : in Low_Res_Time_Type;
      Time_B : in Low_Res_Time_Type)
      return Boolean is separate;

   ----------------------
   -- Initialise_Timer --
   ----------------------
   function Initialise_Timer
     (Timeout_Period : in Low_Res_Time_Type)
      return Timer_Type is separate;

   -----------------
   -- Start_Timer --
   -----------------
   procedure Start_Timer (Timer : in out Timer_Type) is separate;

   ----------------
   -- Stop_Timer --
   ----------------
   procedure Stop_Timer (Timer : in out Timer_Type) is separate;

   ----------------------
   -- Timer_Is_Running --
   ----------------------
   function Timer_Is_Running (Timer : in Timer_Type) return Boolean is separate;

   -----------------------
   -- Timer_Has_Expired --
   -----------------------
   function Timer_Has_Expired (Timer : in Timer_Type) return Boolean is separate;

end Clock;
