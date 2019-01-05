------------------------------------------------------------------------------------------------------------------------
--------------------------------------- File Details -------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--            Project:          Project_System
--            File name:        <File_Name>
--            Description:      This is the description of the test file
--
--
--
------------------------------------------------------------------------------------------------------------------------
--------------------------------------- Change History: ----------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--
--            Version         Date            Author          Description
--            -------         ----            ------          -----------
--            1.0             22/08/17        S.Crowther      Initial version
--
------------------------------------------------------------------------------------------------------------------------
--------------------------------------- Code: --------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
with Types;

package data_types is

   -----------------------------------------------------------------------------
   --Bit Types definition

   type first1BitType is mod 2 ** 1;
   for first4BitType'size use 1;

   type first2BitType is mod 2 ** 2;
   for first4BitType'size use 2;

   type first4BitType is mod 2 ** 4;
   for first4BitType'size use 4;

   type first8BitType is mod 2 ** 8;
   for first8BitType'size use 8;

   type first16BitType is mod 2 ** 16;
   for first16BitType'size use 16;

   type first32BitType is mod 2 ** 32;
   for first32BitType'size use 32;

   type first64BitType is mod 2 ** 64;
   for first64BitType'size use 64;

   -----------------------------------------------------------------------------
   -- String Definitions Failure

   maxArrayStringType : constant Integer := 30;

   type dataString is array (maxArrayStringType) of Character;

   maxFailureLogStringType : constant Integer := 20;

   type failureLogStringType is dataString range 1 .. maxFailureLogStringType;

   -----------------------------------------------------------------------------

   type inputSignalType is (no_Activation,
                            signal_One,
                            signal_Two);

   type registerSetValueSpaceType is
   record
       lockheed_1     : first16BitType;
       lockheed_2     : first64BitType;
       lockheed_3     : first16BitType;
       lockheed_4     : first16BitType;
       lockheed_5     : first8BitType;
   end record;

   for registerSetValueSpaceType use
   record
       lockheed_1 at 0  range 0 .. 15;
       lockheed_2 at 2  range 0 .. 63;
       lockheed_3 at 10 range 0 .. 15;
       lockheed_4 at 12 range 0 .. 15;
       lockheed_5 at 14 range 0 .. 7;
   end record;

   type examplePhaseType is (cbit,
                             fbit,
                             gbit,
                             ibit);



   --Record
   type phaseAttributesType is record
      failureId  : Package_1.Example_Id_Type;
   end record;

   --Array Declaration
   type phaseAttributesArrayType is array (examplePhaseType) of phaseAttributesType;

   --Array of record indexed by Example_Phase_Type
   phaseRecordAttributes: constant phaseAttributesArrayType := phaseAttributesArrayType'
     (cbit => phaseAttributesType'
        (Example_Id   => Package_1.Test_10000),
      fbit => phaseAttributesType'
        (Example_Id   => Package_1.Test_10001),
      gbit => phaseAttributesType'
        (Example_Id   => Package_1.Test_10002),
      ibit => phaseAttributesType'
        (Example_Id   => Package_1.Test_10003));

end data_types;
