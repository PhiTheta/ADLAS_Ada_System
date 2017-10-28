
Package body failure_log is

   function Severity_Calculator
     (Failure_Id    :  failure_types.Failure_Id_Index)
      return failure_types.Severity_Value
   is separate;


   function Log_Failure
     (Failure_Id    :  failure_types.Failure_Id_Index;
      Phase_Key     :  Constants.Phase_Key)
     return Boolean
   is separate;





end failure_log;
