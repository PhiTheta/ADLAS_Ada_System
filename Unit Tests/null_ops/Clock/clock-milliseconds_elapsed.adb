separate (Clock)

function Milliseconds_Elapsed
  (Start_Time : in Low_Res_Time_Type)
   return Sms_Types.Milliseconds_Type
is
begin
   Text_IO.Put_Line ("Unexpected Call to Clock.Milliseconds_Elapsed");
   return 0;
end Milliseconds_Elapsed;
