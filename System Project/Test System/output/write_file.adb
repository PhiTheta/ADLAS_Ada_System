with Ada.Text_IO;               use Ada.Text_IO; 
with Ada.Text_IO.Text_Streams;  use Ada.Text_IO.Text_Streams;


procedure write_File is
   Output : File_Type;

   line : String := "Text output";
   loop_value : integer := 0;

begin
   Create (File => Output,
           Mode => Out_File,
           Name => "output.txt");


   while loop_value < 1 loop
      begin
         -- You can process the contents of Line here.
         Put_Line (Output, Line);
         loop_value := 1;
      end;
   end loop;
   Close (Output);
exception
   when End_Error =>
      if Is_Open(Output) then 
         Close (Output);
      end if;
end write_File;
