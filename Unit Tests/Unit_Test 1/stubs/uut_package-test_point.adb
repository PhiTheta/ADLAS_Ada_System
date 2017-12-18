with Test_Data;
separate (uut_package)

procedure Test_Point is
   -------------------------------------------------------------------------------------------------
   -- Declare unchecked conversions to convert between the Test_Data.<local_type> and the type of
   -- the data in the package containing hte UUT.
   -------------------------------------------------------------------------------------------------
   function To_Other_Type is new Unchecked_Conversion(Source => Test_Data.<local_type>, Target => <uut_package_type>);
   function To_Other_Type is new Unchecked_Conversion(Source => <uut_package_type,      Target => Test_Data.<local_type>);
begin
   if Test_Data.Test_Run
   then
      --------------------------------------------------------------------------
      -- Read back state data to Test_Data Actuals.
      --------------------------------------------------------------------------
      Test_Data.Data(Test_Data.Test_Case).Actuals.<global1> := To_Other_Type(<uut_package_global1>);
      Test_Data.Data(Test_Data.Test_Case).Actuals.<global2> := To_Other_Type(<uut_package_global2>);

   else
      --------------------------------------------------------------------------
      -- Write to state_data from Test_Data Inputs.
      --------------------------------------------------------------------------
      <uut_package_global1 := To_Other_Type(Test_Data.Data(Test_Data.Test_Case).Inputs.<global1>);
      <uut_package_global2 := To_Other_Type(Test_Data.Data(Test_Data.Test_Case).Inputs.<global2>);

   end if;

end Test_point;


