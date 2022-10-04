public class Day2 {

   private Integer abc;
  /**
   * 
   * variable : variable is nothing name to be allocated to a memory address to reference the value stored inside that address
   * syntax:
   * [acess specifier] <datatype> <variableName> =<value>;
   * 
   * rules for variable name:
   * 1.variable name should be always start with charater ex.a1
   * 2.it should be single word example: a2 
   * 3.duplications are not allowed 
   * 
   */

   public static void mymethod(){

    string name='pradip'; //declare the variable and assign the value
    System.debug(name);//print the data in variable
    integer rollNumber=1;
    System.debug(rollNumber);

   }

   /**
    * OPERATORS : operator is symbol, which will perform certain actions on operands
    ex. 10+20 -> 30
        'pradip'+'pawar' -> paradippawar

        types :
        1.mathematical/arithmetic operators :
        + --> addition 
        -(minus) --> substraction
        * --> multiplication
        / -->division
        math.mod() -> to get the reminder value
        example: math.mod(4,2) ->0, math.mod(4,3) ->1

        system.debug('reminder is '+math.mod(4,2));
         system.debug('reminder is '+math.mod(4,3));
    * 
    2.relational / comparison operators : to compare values
    ==      -> to check equality of operands
    <       -> less than
    <=      ->less than or equals 
   >        ->greater than
   >=       ->greater or equal
   !=       -> not equals
   equals() ->binary comparison

   system.debug(string.valueOF('1').equals(1));
  
3.logical operators: (to club conditions together)
AND (&&) -> returns true if both the conditions are satisfied else it will return false
OR (||) -> it return true if either of the condition is true else it will return false
NOT(!) -> change the sign of result

4.increment/ decrement operators:
++ -> increase value by one
-- -> decrease value by one

example:
   integer a=1;
   a--;
   system.debug(a);


5.assignment operators : these are used to assign the value to the variables
= -> assigning the value
example : integer firstnumber=100;

+= -> increment the value
integer a=1;
   a+=6;
   system.debug(a);

 -= -> decrement the value
 *=  -> multiply the value
 /=  ->to divide   




    */

}
