public class Day6 {
    /**
     * 
     * Sobject -> Salesforce Objects
     * 
     * Object oriented programming:
     * business logic will be divided into classes and objects
     * 
     * class:
     * schema /blue print of physical entity
     * 
     * Object: (its logical entity, which is also called an instace of a class)
     * 
     * 
     * building blocks:
     * 1.encapsulation:
     * encaplsulation is used to group/wrapping up of a set of varibles and functions toghther into single unit called classes
     */

     private static integer number1;
     public static integer number2;
     public static void add(){
        System.debug(number1+number2);
     }
     /**
      * 
      2.abstraction:
      hides complexity of the system and provids interface to the user

      3.inheritance :
      acquiring the features of one class into another:

      4.Polymorphism:
      taking multiple forms


      */


      /**
       * 
       * Define class:
       * class is collection of data members and member methods. we can create one or more than one classes in salesforce org
       * 
       * 2.classes are stored in apexclass object
       * 3.inside an organization we can have max 60,00,000 excluding system.debug() statements and comments which can be increased by contacting salesforce
       * 
       * syntax:
       * [acess specifier] class <className>{
       * //class body
       * }
       */
      public class student{
          public Integer rollNumber;
      }
      /**
       * 
       * acess specifier :
       * these are used to specify an acess level to the class members/ classes
       * 1.private (within class)
       * 2.public (withing org)
       * 3.protected ()---
       * 4.global (with org and outside the org as well using API)
       */

}
