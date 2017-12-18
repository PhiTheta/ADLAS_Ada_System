separate (Clock)

function Timer_Has_Expired (Timer : in Timer_Type) return Boolean is
begin
   Text_IO.Put_Line ("Unexpected Call to Clock.Timer_Has_Expired");
   return False;
end Timer_Has_Expired;
