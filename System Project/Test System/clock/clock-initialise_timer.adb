separate (Clock)

function Initialise_Timer
  (Timeout_Period : in Low_Res_Time_Type)
   return Timer_Type
is
begin
   Text_IO.Put_Line ("Unexpected Call to Clock.Initialise_Timer");
   return Clock.Timer_Type'(Timeout_Period => Low_Res_Time_Type'First,
                                                      Start_Time     => Low_Res_Time_Type'First,
                                                      Is_Running     => False);
end Initialise_Timer;
