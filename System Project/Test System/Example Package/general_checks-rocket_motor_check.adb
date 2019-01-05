------------------------------------------------------------------------------------------------------------------------
--
--            Project:          Project_System
--            File name:        <Template>
--            Description:      This is the description of the test file
--
--
--
------------------------------------------------------------------------------------------------------------------------
--            Change History:
--      Version         Date            Author          Description
--      -------         ----            ------          -----------
--      1.0            22/08/17         S.Crowther      Initial version
------------------------------------------------------------------------------------------------------------------------
--
-- Parameters:
--    Name              Direction       Description
--    ----              ---------       ----
--    Input_1           Input           Template array
--    Output_1          Output          Template array
--
------------------------------------------------------------------------------------------------------------------------
-- Function name:    Template
-- Description:      Template     
--
--
-- Equation Logic: If x = 1 then      
--                       If template_variable = 1 then
--                          Test_Failed                   
--                       else
--                          Test Passed
--                       end if  
--                  Else
--                       Test Passed
--                  End if           
------------------------------------------------------------------------------------------------------------------------
-- Return:           
-- Boolean Value
------------------------------------------------------------------------------------------------------------------------


separate(General_Checks)


function Rocket_Motor_Check
  (Rocket_Motor : in Constants.Rockets_Type)
   return Boolean
  
is

begin
  
   return False;



end Rocket_Motor_Check;
