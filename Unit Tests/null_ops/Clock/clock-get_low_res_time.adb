separate (Clock)

function Get_Low_Res_Time return Low_Res_Time_Type is
begin
   Text_IO.Put_Line ("Unexpected Call to Clock.Get_Low_Res_Time");
   return Clock.Low_Res_Zero_Time;
end Get_Low_Res_Time;
