

-- Failure Log Types Package Spec
package failure_types is
 
   -------------------------------------------------------------------------------------
   -- Contains all type declarations needed for the Failure Log Array Database Structure
   -- Used to display information about a failure in the system
   
   type Severity_Value is range 0..5;
   
   type Failure_Location_Value is (Front,
                                   Back,
                                   Left_Side,
                                   Right_Side);
   
   type Failure_Response_Value is (Shutdown,
                                   Reboot,
                                   Warning,
                                   Ignore);
   
   type Failure_Id_Index is (Failure_001,
                             Failure_002,
                             Failure_003,
                             Failure_004,
                             Failure_005,
                             Failure_006,
                             Failure_007,
                             Failure_008,
                             Failure_009,
                             Failure_0010);
   
   type Failure_Attributes_Type is record
      Severity         :   Severity_Value;
      Failure_Location :   Failure_Location_Value;
      Failure_Response :   Failure_Response_Value;
   end record;
   
   type Failure_Log_Array_Type is array (Failure_Id_Index) of Failure_Attributes_Type;
   
   ----------------------------------------------------------------------------- 
   
   -- Failure log Array which contains information about each failure
   
   Failure_Log_Attributes : constant Failure_Log_Array_Type := Failure_Log_Array_Type'
   --Failure 1
     (Failure_001 => Failure_Attributes_Type'
        (Severity         => 0,
         Failure_Location => Front,
         Failure_Response => Ignore),
      --Failure 2
      Failure_002 => Failure_Attributes_Type'
        (Severity         => 0,
         Failure_Location => Front,
         Failure_Response => Ignore),
      --Failure 3
      Failure_003 => Failure_Attributes_Type'
        (Severity         => 1,
         Failure_Location => Front,
         Failure_Response => Ignore),
      --Failure 4
      Failure_004 => Failure_Attributes_Type'
        (Severity         => 1,
         Failure_Location => Back,
         Failure_Response => Ignore),
      --Failure 5
      Failure_005 => Failure_Attributes_Type'
        (Severity         => 2,
         Failure_Location => Front,
         Failure_Response => Warning),
      --Failure 6
      Failure_006 => Failure_Attributes_Type'
        (Severity         => 2,
         Failure_Location => Back,
         Failure_Response => Ignore),
      --Failure 7
      Failure_007 => Failure_Attributes_Type'
        (Severity         => 3,
         Failure_Location => Front,
         Failure_Response => Ignore),
      --Failure 8
      Failure_008 => Failure_Attributes_Type'
        (Severity         => 3,
         Failure_Location => Front,
         Failure_Response => Shutdown),
      --Failure 9
      Failure_009 => Failure_Attributes_Type'
        (Severity         => 4,
         Failure_Location => Back,
         Failure_Response => Reboot),
      --Failure 10
      Failure_0010 => Failure_Attributes_Type'
        (Severity         => 4,
         Failure_Location => Front,
         Failure_Response => Warning));
      
   --------------------------------------------------------------------------------      
                                                     

end failure_types;
