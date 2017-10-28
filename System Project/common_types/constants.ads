

package Constants is
  

   type Phase_Key is (First_Phase,
                      Second_Phase,
                      Third_Phase,
                      Fourth_Phase);
   
   type Bit_Number_Type is mod 2**5;
   
   type Hanger_Door_Locks_Type is (Centre,
                                   Rear);
   
   type Rockets_Type is (Primary,
                         Secondary);

end Constants;
