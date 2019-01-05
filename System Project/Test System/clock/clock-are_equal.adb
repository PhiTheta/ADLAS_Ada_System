separate (Clock)

function Are_Equal
  (Time_A : in Low_Res_Time_Type;
   Time_B : in Low_Res_Time_Type)
   return Boolean
is
begin
   Text_IO.Put_Line ("Unexpected Call to Clock.Are_Equal");
   return False;
end Are_Equal;
