with Signals;
with Constants;

package General_Checks is

   type Example_Phase_Type is range 0..3;
   subtype Sub_Example_Phase_Type is range 1..2;

   function Get_Signal_State
     (Signal : in Signals.Input_Signal_Type)
      return Boolean;
   
   
   function Hanger_Door_Check
     (Hanger_Door_Lock : in Constants.Hanger_Door_Locks_Type)
      return Boolean;
   
   
   function Rocket_Motor_Check
     (Rocket_Motor : in Constants.Rockets_Type)
      return Boolean; 
   
   
   function Clamp_Rings_Check
     (Clamp_Rings_Check_Signal : in Signals.Input_Signal_Type)
      return Boolean;  



end General_Checks;
