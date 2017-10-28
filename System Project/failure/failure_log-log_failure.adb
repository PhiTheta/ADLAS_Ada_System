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


separate(failure_log)


function Log_Failure
  (Failure_Id    :  in failure_types.Failure_Id_Index;
   Phase_Key     :  in Constants.Phase_Key)
   return Boolean

is

   Failure_Id_Local : failure_types.Failure_Id_Index;
   Failure_Logged   : Boolean := False;

begin

   Failure_Id_Local := Failure_Id;

   if Failure_Id_Local'Valid then
      Failure_Logged := True;
   else
      Failure_Logged := False;
   end if;

   return Failure_Logged;

end Log_Failure;
