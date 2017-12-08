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

package body First_Phase is

   
   procedure Initialise is separate;
   
      --Child Id Array
   type Child_Test_Loadout_Index_Type is range 1..19;

   type Child_Test_Loadout_Array_Type is array (Child_Test_Loadout_Index_Type) of Failure_And_Event_Types.Fault_Id_Type;

   type Loadout_Test_Index_Type is range 1 ..5;

   type Loadout_Test_Array_Type is array (Loadout_Test_Index_Type) of Loadout_Type;

   type Loadout_Test_Attributes_Type is record 
      Fault_Id        : Failure_And_Event_Types.Fault_Id_Type;
      Station_Id      : Sms_Types.Station_Index_Subtype;
      Loadouts        : Loadout_Test_Array_Type;
      Child_Id        : Child_Test_Loadout_Array_Type; 
   end record;

   type Loadout_Test_Attributes_Array_Type is array (Fault_Lookup_Loadout_Test_ID_Type) of Loadout_Test_Attributes_Type;

   Loadout_Test_Attributes: constant Loadout_Test_Attributes_Array_Type:=Loadout_Test_Attributes_Array_Type'
     (Test_1143 => Loadout_Test_Attributes_Type'(
         Fault_Id => Failure_And_Event_Types.Test_1143,
         Station_Id => 3,
         Loadouts => Loadout_Test_Array_Type'(PIE_In_flight_guided_store,
                                          Others => Placeholder_Loadout),
         Child_Id => Child_Test_Loadout_Array_Type'(Failure_And_Event_Types.Test_9502,
                                          Failure_And_Event_Types.Test_9503,
                                          Failure_And_Event_Types.Test_9504,
                                          Others => Failure_And_Event_Types.Test_0)),


end First_Phase;
