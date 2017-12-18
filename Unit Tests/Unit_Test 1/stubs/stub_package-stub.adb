with Test_Data;
with Text_IO;

separate (<stub_package>)
function <stub1> (in_param1 : <in_param1_type>) return <return_type>
is
   TC         : Natural;
   Stub_Count : Natural;
   Stub_Name  : constant String := "<package.stub>";

begin
   -----------------------------------------------------------------------------
   -- Increment the stub counter
   -----------------------------------------------------------------------------
   Test_Data.Data(Test_Data.Test_Case).Actuals.<stub_count_1> :=
   Test_Data.Data(Test_Data.Test_Case).Actuals.<stub_count_1> + 1;

   -----------------------------------------------------------------------------
   -- These assignments are effectively renames to shorten the variable names.
   -----------------------------------------------------------------------------
   TC         := Test_Data.Test_Case;
   Stub_Count := Test_Data.Data(TC).Actuals.<stub_count_1>;

   -----------------------------------------------------------------------------
   -- The following is for when there is a varying number of calls to the stub.
   -- If the number of calls is always the same then this may be simplified.
   -----------------------------------------------------------------------------  
   -----------------------------------------------------------------------------
   -- Take appropriate action for each test case/stub call.
   -----------------------------------------------------------------------------
   case TC is
   when 1 =>
      --------------------------------------------------------------------------
      -- 2 calls expected
      --------------------------------------------------------------------------
      case Stub_Count is
      when 1      =>
         Test_Data.Data(TC).Actuals.stub_param1 := <in_param1>;
         return Test_Data.Data(TC).Inputs.<stub_return1>;
      when 2      =>
         Test_Data.Data(TC).Actuals.stub_param2 := <in_param1>;
         return Test_Data.Data(TC).Inputs.<stub_return2>;
      when others =>
         Text_IO.Put_Line("Unexpected Call to Stub" & Stub_Name);
         return False;
      end case;
      --------------------------------------------------------------------------
   when 2 =>
      --------------------------------------------------------------------------
      -- 1 call expected
      --------------------------------------------------------------------------
      case Stub_Count is
      when 1      =>
         Test_Data.Data(TC).Actuals.stub_param1 := <in_param1>;
         return Test_Data.Data(TC).Inputs.<stub_return1>;
      when others =>
         Text_IO.Put_Line("Unexpected Call to Stub" & Stub_Name);
         return False;
      end case;
      --------------------------------------------------------------------------
   when 3 =>
      --------------------------------------------------------------------------
      -- 0 calls expected
      --------------------------------------------------------------------------
      Text_IO.Put_Line("Unexpected Call to Stub" & Stub_Name);
      return False;
	  --------------------------------------------------------------------------
   when <etc.>
   when others =>
      Text_IO.Put_Line("Unexpected Test Case in Stub " & Stub_Name);
      return False;
   end case;
end <stub1>;
