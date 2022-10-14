public  class Day5 {

    /*arrays:
    syntax:
    <datatype>[] <arrayname> = new <datatype>[<size>]; 


    interger[] numbers= new integer [3];

    1.after creating array it will hold by default null values
    2.array will store homogeneous type of data
    
    */

    public static void arrays(){
        /*without arrays*/
        integer number=1;
        integer number2=2;
        integer number3=3;
        integer number4=4;
        integer number5=5;

        integer[] numbers= new integer [3]; //creating a array

        /*storing the values*/
        numbers[1]=2;
        numbers[0]=1;
        
        System.debug(numbers); //(1,2,null)

        /*retriving the values*/
        system.debug('value at index 1 is'+numbers[1]);
        system.debug('value at index 2 is'+numbers[2]);

        for(integer i=0;i<3;i++){
            System.debug('value at index '+i+' is '+numbers[i]);
        }
        /**
         * enhanced for loop
         * for(<datatype><variablename> : <collectionName>){
         * 
         * system.debug(<variableName>);
         * }
         * 
         */
        for(Integer number1 : numbers){
            System.debug(number1);
        }


    }

}
