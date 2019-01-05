with ada.text_IO; use Ada.Text_IO;

package Output is

   procedure Write_File
     (Output      : in out File_Type;
      file_name   : in String);

end Output;
