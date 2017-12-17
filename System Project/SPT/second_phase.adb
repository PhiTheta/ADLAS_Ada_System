------------------------------------------------------------------------------------------------------------------------
--                                           Copyright <2017> Simon Crowther
--
--           The Information in this document is the property of Simon Crowther and may not be copied, or communicated
--           to a third party, or used for any other purpose than than for that for which it was supplied, without written
--                                   consent from Simon Crowther
--
------------------------------------------------------------------------------------------------------------------------
--
-- Project:          <2nd Build>
-- Test name:        <Template>
-- Description:      This is the description of the test file
--
--
--
------------------------------------------------------------------------------------------------------------------------
-- Change History:
--      Version         Date            Author          Description
--      -------         ----            ------          -----------
--      1.0            22/08/17         S.Crowther  Initial version
------------------------------------------------------------------------------------------------------------------------
-- Function name:    Template
-- Description:      Template     
--
--
--  Equation Logic: If x = 1 then      
--                       If template_variable = 1 then
--                          Test_Failed                   
--                       else
--                          Test Passed
--                       end if  
--                  Else
--                       Test Passed
--                  End if           
------------------------------------------------------------------------------------------------------------------------
-- Parameters:
--    Name              Direction       Description
--    ----              ---------       ----
--    Input_1           Input           Template array
--    Output_1          Output          Template array
--
------------------------------------------------------------------------------------------------------------------------
-- Return:           
-- Boolean Value
------------------------------------------------------------------------------------------------------------------------
--with Common_Functions;
with failure_log;
with failure_types;

use failure_types;

package body Second_Phase is

   
   procedure Initialise is separate;
   

end Second_Phase;
