separate (Clock)

function Get_Elapsed_Time
  (Start_Time : in Low_Res_Time_Type)
   return Low_Res_Time_Type
is
begin
   Text_IO.Put_Line ("Unexpected Call to Clock.Get_Elapsed_Time");
   return Clock.Low_Res_Zero_Time;
end Get_Elapsed_Time;
