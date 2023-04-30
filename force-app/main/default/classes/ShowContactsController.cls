public with sharing class ShowContactsController {
    @AuraEnabled(cacheable=true)
   public static List<Contact> getContactList(){
        return [select id, firstname, lastname, phone,email from Contact with SECURITY_ENFORCED LIMIT 10];
   }

   @AuraEnabled(cacheable=true)
   public static List<Contact> getContactListBasedOnInput(String name){
     String search='%'+name+'%';
        return [select id, firstname, lastname, phone,email from Contact where name like:search with SECURITY_ENFORCED LIMIT 10];
   }

}