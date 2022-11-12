public with sharing class Day11 {
    /**
     * 
     * Map :
     * 
     * syntax:
     Map<<keyDatatype>,<valudatatype>> <variblename> = new Map <<keyDatatype>,<valudatatype>>();

       1. void put(key,value);
       2. value get(key);
       3. void putall(<map>)
       4.void remove(key)
       5.set<keysDatatype> keyset();
       6. list<valuesDatatype> values();
       7.void clear() //
       8.clone();
     */
    public static void mapMethods(){
        Map<Integer,String> studentsMap= new Map<Integer,String>();
        System.debug(studentsMap);
        studentsMap.put(100,'me');
        studentsMap.put(1, 'mayur');
        studentsMap.put(2, 'sanket');
        studentsMap.put(1,'neha');
        studentsMap.put(null,'no one');
        studentsMap.put(null,'who');
        Map<Integer,String> studentsMap2= studentsMap.clone();
        system.debug(studentsMap2);
        studentsMap.remove(null); //remove the value with key as null
        studentsMap.clear();
        System.debug(studentsMap);
        System.debug('keys are  '+studentsMap.keySet());
        System.debug('values are  '+studentsMap.values());
        System.debug('student name of roll no 1 is'+studentsMap.get(1));
        Map<Integer,String> studentsMap1= new Map<Integer,String>();
        studentsMap1.putAll(studentsMap);
        studentsMap1.put(4,'pradip');
        System.debug(studentsMap);
        System.debug(studentsMap1);
        
    }
}
