public class Day10 {
    /**
     * 
     Set Collection:
     1.does not allow duplicates
     2.ordered collection

     syntax:
     Set<Datatype> variableName= new Set<datatype>();

     methods:
     1.boolean isEmpty()  this method will tell us collectio is empty or not
    2. add(element) //adding elements into set
    
    3.integer size() // number of elements in set/collection

    4.addall(collection) 

    5.clear() // to clear a collection / to make colelction empty
    6.boolean contains(element) //tell us whether specified element is in set or not
     */

     public static void setMethods(){
        Set<Integer> setOfNumbers= new Set<Integer>(); //created a set
        setOfNumbers.add(2); //adding element in set
        setOfNumbers.add(0);
        System.debug(setOfNumbers);
        system.debug(setOfNumbers.isEmpty());
        System.debug(setOfNumbers.size()); //
        System.debug(setOfNumbers.contains(0));
        setOfNumbers.remove(2);
        System.debug(setOfNumbers);

        list<integer> numberList= new List<Integer>(); //creating a list of numbers
    system.debug(numberList);
    system.debug(numberList.isEmpty());
    numberList.add(2); //0
    system.debug(numberList);
    system.debug(numberList.isEmpty());
    numberList.add(3); //1
    system.debug(numberList);
    numberList.add(3); //1
    system.debug(numberList);
    numberList.add(1); //2
    system.debug(numberList);
    numberList.add(4); //3
    system.debug(numberList);

    setOfNumbers.addAll(numberList);

system.debug(setOfNumbers);
        for(Integer temp :setOfNumbers){
            System.debug(temp);
        }


     }

     /**
      * 
      Map collection class:
      collection of key value pair 

      syntax:
      map<
      */
}
