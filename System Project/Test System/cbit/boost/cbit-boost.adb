------------------------------------------------------------------------------------------------------------------------
--------------------------------------- File Details -------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--            Project:          Project_System
--            File name:        <File_Name>
--            Description:      This is the description of the test file
--
--
--
------------------------------------------------------------------------------------------------------------------------
--------------------------------------- Change History: ----------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--
--            Version         Date            Author          Description
--            -------         ----            ------          -----------
--            1.0             22/08/17        S.Crowther      Initial version
--
------------------------------------------------------------------------------------------------------------------------
--------------------------------------- Code: --------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
with data_types;
with output;

package body cbit.boost is

   procedure Disabler
     (file_name : in data_types.String;
      Output    : in out File_Type;)
      is separate;
      
   procedure Disengage_Stage_Check
     (file_name : in data_types.String;
      Output    : in out File_Type;)
      is separate;
      
   function Flight_Drop_Off
     (Signal : data_types.)
      return Boolean
      is separate;      
      
end cbit.boost;
