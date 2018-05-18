

package Watchdog is
  

   type Watchdog_Kick_Type is boolean;
   
   procedure Clean_Wdog;


   procedure Pump_Wdog;


   procedure Restart_Wdog;


   procedure Instant_Kill_Wdog;


   procedure Enable_Wdog_Evt (Enable : in Boolean);


   function Get_Frame_Tick_Discrete return Sms_Types.Discrete_Type;


end Watchdog;
