public  class Day7 {
   /*
   Defining sub programs
   Methods:

Syntax:


   1. parametrized:
     i. fire and forget:
     [acess specifier] void <methodName> ([parameters]){
         //method body
     }
     ii. request and reply:
     [acess specifier] <returnType> <methodName>([parameters]){
         return data;
     }
   2.non parametrized:
   i. fire and forget
   [acess specifier] void <methodName> (){
         //method body
     }
     ii. request and reply

     syntax:
     [acess specifier] <returnType> <methodName>(){
         return data;
     }
   */

   public void sayHello(){
       System.debug('hello');
   }

   public void sayHello(string username){
    System.debug('hello '+username);
}

public Integer add(){

    integer number1=1;
    integer number2=2;

    integer number3=number1+number2;
    return number3;
}
public static integer  sampleNumber;

public static Integer add(integer number1, integer number2){
    
    return number1+number2;
    
    
}

   /**
    * 
    Creating object of the class:
   ClassName <objectName> = new ClassName();


   Day7 obj=new Day7(); //object creation
   obj.sayHello();
Day7 obj=new Day7();
   integer ans=obj.add();
   
   system.debug(ans);

   //calling parametrized add method

   
   integer ans=Day7.add(4,5);
    system.debug(ans);

    Static keyword:
    if we declare anything static it will belong to class , not to object

    step 1. create class
   
    3.we calling the method
    */
}
