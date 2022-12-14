public class Day4 {
    /**
     * 
     * Ternary Operator (?:)
     * 
     * string season = <condition> ? true : false ;
     * 
     * 2,3,4,5 //summer
         * 6,7,8,9 // spring
         * 10,11,12,1 //winter
     */

     public static void season_using_ternary_operator(){
        Integer monthNumber=14;
        String season= monthNumber>=2 && monthNumber<=5? 'summer': monthNumber>=6 && monthNumber<=9 ? 'spring': monthNumber==1 || monthNumber>=10 && monthNumber<=12 ? 'winter' : 'invalid month number';
        System.debug(season);
    }
    /**
     * 
     * Iterative statements:
     * these statement are used if we want to exectute set of statements repeatedly till specified number of times
     
     Types:
     1.While
     2.Do-while
     3.For
     4.enchanced for

     */
    public static void iterativeCOnecept(){

        /**
         * 
         * print text sanket 5 times
         */

         System.debug('sanket');
         System.debug('sanket');
         System.debug('sanket');
         System.debug('sanket');
         System.debug('sanket');
         /**
          * while loop:
          its pre checking, it will execute until condition is true
          while(<condition>){
              //code
          }
          */


Integer count=0; //count =0
if(count<5){
    system.debug('sanket');
    count++;//1,2,3,,4,5,
}
          while(count<5){//true,true
              system.debug('sanket');
              count++;//1,2,3,,4,5,
          }

integer i=0;//0
          while(i<10){//0(true),6(true),12(false)
              system.debug('hello'); //1st time,3rd time
              i+=2;//0+2= 2,6+2=8
              i+=4;//2+4=6,8+4=12
              system.debug('hello'); //2nd time,4th time


    }


}

/*
2.Do-while :

exit controlled

syntax:
do{
//loop body

}while(<condition>);
*/

public static void doWhileLoop(){
    Integer count=10;
Do{
    system.debug('sanket');
    count++;
}while (count<5); 
    
//write a code to print odd numbers between 1 to 100
Integer number1=1;
do{
    system.debug(number1);
number1+=2;
}while (number1<100) ;
    


}

/**
 * 
 * for:
 * pre checking interative statement
 * 
 * sytax:
 * for(<initialization>;<condition>;<action>){
 * //body
 * }
 */

 public static void forLoops(){
    Integer count=0;
     for(;count<5;){
        system.debug('sanket');
       count+=2;
     }
     
     System.debug(count);
 }

}

