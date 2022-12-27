trigger AccountDescriptionTrigger on account (before insert,before update,before delete) {
/**
 * 
 * step1: understand the event :
 * before insert
 * 
 * step two : understand the object:
 * account
 * 
 * step3: business logic:
 * 
 * description= description of accountname;
 */

 /**
     * 
     write trigger to ensure account has description before inserting 


     description : description of accountname

     account a= new account();
     a.name='trigger';

     insert a;
     statement 2:

     ensure that account is having phone number before saving/creating


     statement 3:
     write a trigger to restrict deletion if account is active:

step1: understand the event :
 before delete
 
 * step two : understand the object:
account
 * step3: business logic:
    addErrror
 * 
     */

 if(trigger.isBefore && trigger.isInsert){
    for (account a : trigger.new) {
        a.Description='description of '+a.Name;
     }
 }

 if(trigger.isBefore && (Trigger.isInsert || trigger.isUpdate)){
    for (account a : trigger.new) {
        if(a.Phone==null){
            a.addError('please provide phone number');
        }
 }
 }

 if(trigger.isBefore && trigger.isDelete){
   for(Account a: trigger.old){
    if(a.Active__c=='Yes'){
        a.addError('you cannot delete active accounts');
    }
   }
 }

 /**
  * 
  assignment 1:
  prevent deletion of contact recrods when we are deleting related account records
  1.there should not be any error while deleting account
  2.contacts should not be deleted

  assignment2:
  create a trigger to ensure each of the contact have related account
  */

}