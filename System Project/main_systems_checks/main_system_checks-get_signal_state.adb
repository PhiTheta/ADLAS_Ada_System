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
with Signal_Register_Database;

separate(Main_System_Checks)


function Get_Signal_State 
     (Signal : in Signals.Input_Signal_Type)
      return Boolean
  
is

begin
  
   return (Signal_Register_Database.Input_Registers_Database(Signal).Default_State);



end Get_Signal_State;
