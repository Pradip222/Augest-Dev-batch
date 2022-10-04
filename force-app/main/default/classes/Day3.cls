public  class Day3 {
    /**
     * 
     * Access specifiers / modifiers:
     * 
     * this are used to specify the acess of variables/ classes / methods
     * 
     * 1.public
     * 2.private
     * 3.protected
     * 4.global
     * 
     * https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_access_modifiers.htm
     * 
     * commenting statements:
     * 1.to provide documentation/ description about code.
     * commented code will not be compiled
     * types:
     * single line comment : to comment a single line inside business logic/code
     * syntax: 
     * // code
      2.multi line comments:
    


      syntax:
     * /* 
     *
     * apex code */
     

    // integer a;
   // System.debug('im a comment');
/*
   Integer number=0;
   Integer number2=5;
    System.debug(number+number2);*/

    /**
     * 
     * Conditional Statements:
     * 
     * 1.if
     * 2.switch
     * 3.ternary operator (?:)
     * 
     * if condition:
    
syntax:
if(<condition>){

    //code
}

      *types 
     * 1.if
     * 2.if  else condition
     * 3. else
     * 4.nested if
     * 
     * write a code to print season based on month number provided
     */
    public static void(){
        /**
         * 
         * 2,3,4,5 //summer
         * 6,7,8,9 // spring
         * 10,11,12,1 //winter
         */
        Integer monthNumber=88;
        if(monthNumber>=2  && monthNumber<=5 ){
        System.debug('summer');
        System.debug('inside If of summer');
    }
    else if(monthNumber>=6 && monthNumber<=9 )
        System.debug('spring');
    else  if(monthNumber==1 || (monthNumber>=10 && monthNumber<=12)){
        System.debug('winter');
        
    }
    else{
        System.debug('invalid month number');
    }

    /**
     * 
     * switch statement:
     * 
     * sytax:
     * switch on <expression>{
     * 
     * when <value>{
     * //code
     * }
     * when <value2>{
     * //code
     * }
     * when else{
     * //code
     * }
     * 
     * }
     */
    }
public static void seasonUsingmoth(){
    Integer monthNumber=88;
    switch on monthNumber {
        when 2,3,4,5 {
            System.debug('summer');
        }
        when 6,7,8,9{
            System.debug('spring');
        }
        when 1,10,11,12{
            System.debug('winter');
        }
        when else {
            System.debug('invalid month');
        }
    }


}

    
}
