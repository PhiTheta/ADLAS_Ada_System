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
<<<<<<< HEAD
with ada.text_IO;
with write_File;

procedure controller is
   Complete : Boolean := False;
   begin

   write_File;
=======
with ada.text_IO; use Ada.Text_IO; 
with Output;

procedure controller is
   file_name  : String  := "20180604_log_file.txt";
   file_Output: File_Type;
   begin

   Output.Write_File(Output    => file_Output,
                     file_name => file_name);
>>>>>>> 69f69bc261da4a8489896c1cdee2a7aab20a4053
   
end controller;
