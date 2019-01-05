separate (Clock)

function Get_Inputs_Time_Stamp return Low_Res_Time_Type is
begin
   Text_IO.Put_Line ("Unexpected Call to Clock.Get_Inputs_Time_Stamp");
   return Clock.Low_Res_Zero_Time;
end Get_Inputs_Time_Stamp;
