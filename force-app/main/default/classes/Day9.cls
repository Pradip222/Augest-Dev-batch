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
    8. integer indexOf(element);
    9.clone(); complete copy of collection
    10.void remove(<index>);//remove element at specified index from list
    11.void sort(); //order the list in acending order
    12. void set(index,element) //replace value at specified index
    */

    list<integer> numberList= new List<Integer>(); //creating a list of numbers
    system.debug(numberList);
    system.debug(numberList.isEmpty());
    numberList.add(2); //0
    system.debug(numberList);
    system.debug(numberList.isEmpty());
    numberList.add(3); //1
    system.debug(numberList);
    numberList.add(1); //2
    system.debug(numberList);
    numberList.add(4); //3
    system.debug(numberList);
    numberList.sort();
    system.debug(numberList);
    numberList.remove(3);
    System.debug(numberList);
    numberList.set(1,4);
    System.debug(numberList);
    numberList.add(3,4);
    list<Integer> numberList2= numberList.clone();
    numberList2.add(50);
    System.debug(numberList2);
    system.debug(numberList);
    system.debug(numberList.indexOf(4)); //if element is present in the list indexOf method will return index
    system.debug(numberList.indexOf(100)); //if element is not present in the list indexOf method will retun -1
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
