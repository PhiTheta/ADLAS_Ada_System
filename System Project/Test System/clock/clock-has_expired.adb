separate (Clock)

function Has_Expired
  (Start_Time : in Low_Res_Time_Type;
   Timeout : in Low_Res_Time_Type)
   return Boolean
is
begin
   Text_IO.Put_Line ("Unexpected Call to Clock.Has_Expired");
   return False;
end Has_Expired;
