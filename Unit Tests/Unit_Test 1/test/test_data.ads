--------------------------------------------------------------------------------
-- with any required packages
--------------------------------------------------------------------------------
with Unchecked_Conversion;
with <package1>;
with <package2>;

package Test_Data is

   -----------------------------------------------------------------------------
   -- UUT Declarations
   -----------------------------------------------------------------------------
   -- add the number of test cases.
   Test_Cases : constant Positive := <number of test cases>;
   Test_Case  : Positive;
   Test_Run   : Boolean;

   type Result_Type is (PASS, FAILED);

   ----------------------------------------------------------------------------
   -- Dealing with private types (if required).
   -- Create a local type with the same definition as the the private type.
   -- Then instantiate unchecked conversion functions to convert between_types.
   ----------------------------------------------------------------------------
   type <local_type> is ......;
   function To_<local_type>   is new Unchecked_Conversion (Source => <package.private_type>,
                                                           Target => <local_type>);
   function To_<private_Type> is new Unchecked_Conversion (Source => <local_type>,
                                                           Target => <package.private_type>);

   -----------------------------------------------------------------------------
   -- Unchecked_Conversions for setting invalid values (if required).
   -----------------------------------------------------------------------------
   type <target_int_type> is range 0 .. 2**<target_Type>'Size;
   function Invalid is new Unchecked_Conversion (Source => <target_int_type>,
                                                 Target => <target_type>);

   ----------------------------------------------------------------------------
   -- Dealing with non-visible data structures.
   -- If the UUT refers to data internal to its package then this package and
   -- the harness will not have direct visibility of the data.
   -- To get around this:
   -- Declare a type that is the same as the type of the non visible data, also
   -- duplicating any non visible types from which the type is constructed.
   ----------------------------------------------------------------------------
   -- for example - an array of records
   subtype <local_index_type> is <parent_type>; -- range x .. y;

   type <local_record_type> is record
      <component1> : <type>;
      <component2> > <type>;
   end record;

   <any_constants> : <local_record_type> := (<component1 => <value>,
                                             <component2 => <value>;

   type <local_type> is array (<local_index_type>) of <local_record_type>;

   -----------------------------------------------------------------------------
   -- Create a record for each test input. Include in/in out parameters, global
   -- data data to be returned from stubs and stub counts.
   -----------------------------------------------------------------------------
   type In_Types is record
      -- in parameters.
      <in_param1>     : <in_param1_type>;
      <in_param2>     : <in_param2_type>;
	  -- in out parameters.
      <inout_param1>  : <inout_param1_type>;
      <inout_param2>  : <inout_param2_type>;
	  -- out/in out/return values from stubs.
      <stub_return1>  : <stub_return1_type>;
      <stub_return2>  : <stub_return2_type>;
	  -- visible and non visible data accessed by UUT.
      <global1>       : <global1_type>;
      <global2>       : <global2_type>;
   end record;

   -----------------------------------------------------------------------------
   -- Create a record for each test input. Include in/in out parameters, global
   -- data and data to be returned from stubs.
   -----------------------------------------------------------------------------
   type Out_Types is record
      -- for function
      Result          : <Result_type>;
      -- for procedure
      <out_param1>    : <out_param1_type>;
      <out_param2>    : <out_param2_type>;
      -- in out parameters
      <inout_param1>  : <inout_param1_type>;
      <inout_param2>  : <inout_param2_type>;
      -- in/in out parameters for stubs
      <stub_param1>   : <stub_param1_type>;
      <stub_param2>   : <stub_param2_type>;
      -- visible and non visible data accessed by UUT.
      <global1>       : <global1_type>;
      <global2>       : <global2_type>;
      -- stub counters
      <stub_count_1>  : Natural;
      <stub_count_2>  : Natural;
   end record;

   subtype Test_Case_Type is Positive range 1..Test_Cases;

   type Test_Data_Type is record
      Inputs   : In_Types;
      Actuals  : Out_Types;
      Expected : Out_Types;
   end record;

   type Test_Data_Array_Type   is array (Test_Case_Type) of Test_Data_Type;
   type Test_Result_Array_Type is array (Test_Case_Type) of Result_Type;

   -----------------------------------------------------------------------------
   -- Operation test data.
   -----------------------------------------------------------------------------
   Data : Test_Data_Array_Type :=
      (1 =>
         ------------------------------------------------------------------------
         -- Description of the primary objectives of this test case.
         ------------------------------------------------------------------------
         (Inputs    => (<in_param1>    => <value>,
                        <in_param2>    => <value>,
                        <inout_param1> => <value>,
                        <inout_param2> => <value>,
                        <stub_return1>  => <value>,
                        <stub_return2>  => <value>
                        <global1>      => <value>
                        <global2>      => <value>),
          Actuals   => (Result         => <unexpected_value>,
                        <out_param1>   => <unexpected_value>,
                        <out_param2>   => <unexpected_value>,
                        <inout_param1> => <unexpected_value>,
                        <inout_param2> => <unexpected_value>,
                        <stub_param1>  => <unexpected_value>,
                        <stub_param2>  => <unexpected_value>,
                        <global1>      => <unexpected_value>,
                        <global2>      => <unexpected_value>,
                        <stub_count1>  => 0,
                        <stub_count2>  => 0),
          Expected  => (Result         => <expected_value>,
                        <out_param1>   => <expected_value>,
                        <out_param2>   => <expected_value>,
                        <inout_param1> => <expected_value>,
                        <inout_param2> => <expected_value>,
                        <stub_param1>  => <expected_value>,
                        <stub_param2>  => <expected_value>,
                        <global1>      => <expected_value>,
                        <global2>      => <expected_value>,
                        <stub_count1>  => <expected_value>,
                        <stub_count2>  => <expected_value>)),
       2 =>
	 ------------------------------------------------------------------------
         -- Description of the primary objectives of this test case.
         ------------------------------------------------------------------------
	 (Inputs     => (etc....)));

   Result : Test_Result_Array_Type := (others => FAILED);
   -----------------------------------------------------------------------------

end Test_Data;
