with failure_types;
with Constants;


package failure_log is
   
   function Severity_Calculator
     (Failure_Id    :  failure_types.Failure_Id_Index)
      return failure_types.Severity_Value;
      


end failure_log;
