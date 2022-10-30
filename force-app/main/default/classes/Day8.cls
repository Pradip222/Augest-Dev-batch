public with sharing class Day8 {
   /**
    * 
    from UI: clicked on new -> filled the data-? save

    account a= new account();
    a.name='today1';
    a.active__c='yes';
    insert a;


    DML :
    Data manipulation language


    */

    public static void createRecords(){
        /**
         * 
         * 1.create a object
         * 2.set fields/data
         * 3.insert object
         */

         /**
          * create a account,with annual revenue =1000, name =america
          */

          /*create Related Records*/

          account a= new account();
    a.name='account with contact';
    a.active__c='yes';
    insert a;
          contact c=new contact();
          c.LastName='mycontact';
          c.AccountId=a.id;
            insert c;
        /**
         * create one account and one related opportunity record to it
         */

    }
    public static void updatingData(){
        account a= new account();
    a.name='account with contact';
    a.active__c='yes';
    insert a;
    
    system.debug(a.id);
          contact c=new contact();
          c.LastName='mycontact';
          c.AccountId=a.id;
            insert c;

            a.name='updatedName';
            
            //update a; // update requires ID
            upsert a;
            system.debug(a.id);

            delete a; //isdeleted=true
            system.debug(a.id);
            undelete a; //record will be undeleted
    }
}
