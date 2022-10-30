public with sharing class Day9 {
   /* Apex Collections:
    account a= new account();
    a.name='sample account 2';
    a.active__c='yes';
    insert a;
 account a1= new account();
    a1.name='sample account2';
    a1.active__c='yes';
    insert a1;

    list collection:
    1.orderred collection of records
    2.elements in the collections are distinguish by their indices
    3.it allows duplication of elemets
   */

   public static void listCollaction(){

    /*
    creating list:
    List<datatype> listName= new List<datatype>();
    
    Methods:
    1.void add(element): add element at the end of the list
    2.void add(index,element) : add element at specified index
    3.void clear() : clears the list
    4.boolean contains(element) : return true if element present in list, and false if not
    5.element get(index) : return element at specified index
    6.boolean IsEmpty() : rturn true if list is empty
    7. integer size() : return number of elements in collection
    */

    list<integer> numberList= new List<Integer>(); //creating a list of numbers
    system.debug(numberList);
    system.debug(numberList.isEmpty());
    numberList.add(1); //0
    system.debug(numberList);
    system.debug(numberList.isEmpty());
    numberList.add(2); //1
    system.debug(numberList);
    numberList.add(3); //2
    system.debug(numberList);
    numberList.add(1); //3
    system.debug(numberList);
    numberList.add(3,4);
    system.debug(numberList);
    system.debug(numberList.get(3));
    System.debug(numberList.contains(2));
    System.debug(numberList.contains(100));
    system.debug(numberList); // adding element at specified index
    system.debug(numberList.size());
    numberList.clear();

    system.debug(numberList);//clear the list
    system.debug(numberList.size());
    system.debug('element at index 2 is'+numberList[2]); //acessing and printing element at index 2
    system.debug(numberList[0]+numberList[2]); //accsing elemtents at index 0 and 2 to sum them


/* write a program to find element in the list*/
   }
}
