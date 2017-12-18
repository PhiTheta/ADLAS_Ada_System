
with Test_Data;
with Text_IO;

----------------------------------------
-- Add required real packages
----------------------------------------
with <package1>;
with <package2>;

use type Test_Data.Result_Type;
use type Test_Data.Out_types;

procedure <operation>_Harness is

begin
   Text_IO.Put_Line ("------------------------------------------------------");
   Text_IO.Put_Line ("Tests For procedure <package.operation>");
   Text_IO.Put_Line ("------------------------------------------------------");

   -- Perform Tests
   for Test_Case in Test_Data.Test_Case_Type loop
      Test_Data.Test_Case := Test_Case;
      --------------------------------------------------------------------------
      -- Output the test case number
      --------------------------------------------------------------------------
      Text_IO.Put      ("Test Case ");
      Text_IO.Put      (Test_Data.Test_Case_Type'Image(Test_Case));
      Text_IO.Put      (" ");

      --------------------------------------------------------------------------
      -- Write input data to package bodies that have stubs - if required.
      --------------------------------------------------------------------------
      <package1>.Test_Point;
      <package2>.Test_Point;

      --------------------------------------------------------------------------
      -- Write Data to non visible data structures - if required.
      --------------------------------------------------------------------------
      Test_Data.Test_Run := False;
      <uut_package>.Test_Point;

      --------------------------------------------------------------------------
      -- Run the UUT
      --------------------------------------------------------------------------
      -- for function
      Test_Data.Data (Test_Case).Actuals.Result :=
        <package.operation>
          (<in_param1>   => Test_Data.Data (Test_Case).Inputs.<in_param1>,
           <in_param2>   => Test_Data.Data (Test_Case).Inputs.<in_param2>);

      -- for procedure
      <package.operation>
          (<in_param1>   => Test_Data.Data (Test_Case).Inputs.<in_param1>,
           <in_param2>   => Test_Data.Data (Test_Case).Inputs.<in_param2>,
           <out_param1>  => Test_Data.Data (Test_Case).Actuals.<out_param1>,
           <out_param2>  => Test_Data.Data (Test_Case).Actuals.<out_param2>);

      --------------------------------------------------------------------------
      -- Read back data from non visible data structures
      --------------------------------------------------------------------------
      Test_Data.Test_Run := True;
      <uut_package>.Test_Point;

      --------------------------------------------------------------------------
      -- Check the Result
      --------------------------------------------------------------------------
      -- for function
      if Test_Data.Data (Test_Case).Actuals.Result =
         Test_Data.Data (Test_Case).Expected.Result
      then
         Test_Data.Result (Test_Case) := Test_Data.PASS;
      end if;

      -- for procedure
      if Test_Data.Data (Test_Case).Actuals.<out_param1> = Test_Data.Data (Test_Case).Expected.<out_param1> and
         Test_Data.Data (Test_Case).Actuals.<out_param2> = Test_Data.Data (Test_Case).Expected.<out_param2>
      then
         Test_data.Result (Test_Case) := Test_Data.PASS;
      end if;

      --------------------------------------------------------------------------
      -- Output test result
      --------------------------------------------------------------------------
      if Test_Data.Result (Test_Case) = Test_Data.FAILED 
      then
         
         Text_IO.Put_Line ("Failed");	     
         -----------------------------------------------------------------------
         -- Output Actual and Expected results if different.
         -----------------------------------------------------------------------
         -- for function
         Text_IO.Put      ("     Actual.Result           => ");
         Text_IO.Put_Line (<Result_type>'Image(Test_Data.Data (Test_Case).Actuals.Result));
         Text_IO.Put      ("     Expected.Result         => ");
         Text_IO.Put_Line (<Result_type>'Image(Test_Data.Data (Test_Case).Expected.Result));
         Text_IO.New_Line;                      

         -- for procedure
         Text_IO.Put      ("     Actual.<out_param1>     => ");
         Text_IO.Put_Line ("<out_param1_type>'Image(Test_Data.Data (Test_Case).Actuals.<out_param1>));
         Text_IO.Put      ("     Expected.<out_param1>   => ");
         Text_IO.Put_Line ("<out_param1_type>'Image(Test_Data.Data (Test_Case).Expected.<out_param1>));
         Text_IO.New_Line;  
		 
         Text_IO.Put      ("     Actual.<out_param2>     => ");
         Text_IO.Put_Line (<out_param2_type>'Image(Test_Data.Data (Test_Case).Actuals.<out_param2>));
         Text_IO.Put      ("     Expected.<out_param2>   => ");
         Text_IO.Put_Line (<out_param2_type>'Image(Test_Data.Data (Test_Case).Expected.<out_param2>));
         Text_IO.New_Line;  
		 
         Text_IO.Put      ("     Actual.<inout_param1>   => "); 
         Text_IO.Put_Line (<inout_param1_type>'Image(Test_Data.Data (Test_Case).Actuals.<inout_param1>));
         Text_IO.         ("     Expected.<inout_param1> => ");
         Text_IO.Put_Line (<inout_param1_type>'Image(Test_Data.Data (Test_Case).Expected.<inout_param1>));
         Text_IO.New_Line;  
		 
         Text_IO.Put      ("     Actual.<inout_param2>   => "); 
         Text_IO.Put_Line (<inout_param2>'Image(Test_Data.Data (Test_Case).Actuals.<inout_param2>));
         Text_IO.Put      ("     Expected.<inout_param2> => ");
         Text_IO.Put_Line (<inout_param2>'Image(Test_Data.Data (Test_Case).Expected.<inout_param2>));
		 Text_IO.New_Line;  
				  
	 -- Common items - as required.
         Text_IO.Put      ("     Actual.<stub_param1>    => ");
         Text_IO.Put_Line (<inout_param2>'Image(Test_Data.Data (Test_Case).Actuals.<inout_param2>));
         Text_IO.Put      ("     Expected.<stub_param1>  => ");
         Text_IO.Put_Line (<inout_param2>'Image(Test_Data.Data (Test_Case).Expected.<inout_param2>));
         Text_IO.New_Line;  
		 
         Text_IO.Put      ("     Actual.<stub_param2>    => ");
         Text_IO.Put_Line (<stub_param2_type'Image(Test_Data.Data (Test_Case).Actuals.<stub_param2>));
         Text_IO.Put      ("     Expected.<stub_param2>  => ");
         Text_IO.Put_Line (<stub_param2_type'Image(Test_Data.Data (Test_Case).Expected.<stub_param2>));
         Text_IO.New_Line;  
		 
         Text_IO.Put      ("     Actual.<global1>        => ");
         Text_IO.Put_Line (<global1_type>'Image(Test_Data.Data (Test_Case).Actuals.<global1>));
         Text_IO.Put      ("     Expected.<global1>      => ");
         Text_IO.Put_Line (<global1_type>'Image(Test_Data.Data (Test_Case).Expected.<global1>));
         Text_IO.New_Line;  
		 
         Text_IO.Put      ("     Actual.<global2>        => "); 
         Text_IO.Put_Line (<global2_type>'Image(Test_Data.Data (Test_Case).Actuals.<global2>));
         Text_IO.Put      ("     Expected.<global2>      => ");
         Text_IO.Put_Line (<global2_type>'Image(Test_Data.Data (Test_Case).Expected.<global2>));
         Text_IO.New_Line;  
		 
         Text_IO.Put      ("     Actual.<stub_count1>    => ");
         Text_IO.Put_Line (Natural'Image(Test_Data.Data (Test_Case).Actuals.<stub_count1>));
         Text_IO.Put      ("     Expected.<stub_count1>  => ";
         Text_IO.Put_Line (Natural'Image(Test_Data.Data (Test_Case).Expected.<stub_count1>));
         Text_IO.New_Line;  
		 
         Text_IO.Put      ("     Actual.<stub_count2>    => ");
         Text_IO.Put_Line (Natural'Image(Test_Data.Data (Test_Case).Actuals.<stub_count2>));
         Text_IO.Put      ("     Expected.<stub_count2>  => ");
         Text_IO.Put_Line (Natural'Image(Test_Data.Data (Test_Case).Actuals.<stub_count2>));
         Text_IO.New_Line;  		 
      else
         Text_IO.Put_Line ("Pass");
      end if;
   end loop;
   
   Text_IO.Put_Line ("------------------------------------------------------");
   
end <operation>_Harness;
