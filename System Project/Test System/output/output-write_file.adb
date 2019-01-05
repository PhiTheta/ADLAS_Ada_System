with Ada.Text_IO;               use Ada.Text_IO; 
with Ada.Text_IO.Text_Streams;  use Ada.Text_IO.Text_Streams;
with Ada.Directories;


separate(Output)


procedure Write_File 
   (Output      : in out File_Type;
    file_name   : in String)
    is

   line : String := "Text output";
   loop_value : integer := 0;


begin
   Create (File => Output,
           Mode => Out_File,
           Name => file_name);

   while loop_value < 1 loop
      begin
         -- You can process the contents of Line here.
         Put_Line (Output, line);
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
