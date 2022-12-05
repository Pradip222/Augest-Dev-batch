public class Day15 {
 /**
  * 
  SOSL (Salesforce Object Search language) : 

  1. usign SOQL we can search specific content only, one object at a time
  2.will need to specify column in condition

  syntax:
  FIND 'text' IN <OPTION> returning 
  <object1> (<columns>)
  ...
  ...
  object20 (<columns>)


  opetions:
  name fields
  email fields
  phone fields
  all fields
  */

  public static void staticSOSLQuery(){
    list<List<SObject>> data=[Find 'IN' in ALL fields returning account (id,name,billingcity), contact (id,name), opportunity(id)]; //static sosl
    System.debug(data);

}
public static void dynamicSOSL(){
/**
 * 
 string query= 'sosl query';
 search.query(qury);
 */
string query= 'find \''+'IN'+'\'  in ALL fields returning account (id,name,billingcity), contact (id,name), opportunity(id)';

list<List<SObject>> data=Search.query(query);
for( List<SObject> data1 :data){
    System.debug(data1);
}
}
  
}
