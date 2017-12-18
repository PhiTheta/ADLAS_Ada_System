separate (Failures)

procedure Log_Failure (Failure_Data : in Failure_And_Event_Types.Fault_Data_Type) is
begin
   Text_IO.Put_Line ("Unexpected Call to Failures.Log_Failure");
end Log_Failure;