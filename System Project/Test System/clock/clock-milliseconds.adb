separate (Clock)

function Milliseconds
  (Ms : in Sms_Types.Milliseconds_Type)
   return Low_Res_Time_Type
is
begin
   Text_IO.Put_Line ("Unexpected Call to Clock.Milliseconds");
   return Low_Res_Zero_Time;
end Milliseconds;
