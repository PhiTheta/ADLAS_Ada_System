------------------------------------------------------------------------------------------------------------------------
--
--            Project:          Project_System
--            File name:        Project_Main.adb
--            Description:      Main file that includes calls to start the project running
--
--
--
------------------------------------------------------------------------------------------------------------------------
--            Change History:
--      Version         Date            Author          Description
--      -------         ----            ------          -----------
--      1.0            07/10/17         S.Crowther      Initial version
------------------------------------------------------------------------------------------------------------------------
--
-- Parameters:
--    Name              Direction       Description
--    ----              ---------       ----
--
------------------------------------------------------------------------------------------------------------------------
-- Function name:    Procedure Project Main
-- Description:      Calls first phase project file     
--
--
-- Equation Logic:           
------------------------------------------------------------------------------------------------------------------------
-- Return:           
-- Boolean Value
------------------------------------------------------------------------------------------------------------------------
with First_Phase;
with Constants;
with Main_System_Checks;

procedure Project_Main is
   Complete : Boolean := False;
   begin

   First_Phase.Initialise;
   
   Complete := Main_System_Checks.Rocket_Motor_Check(Rocket_Motor => Constants.Primary);
   
   if Complete = False then
      Complete := True;
   end if;
   
end Project_Main;
