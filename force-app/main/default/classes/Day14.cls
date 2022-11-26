public with sharing class Day14 {
   /**
    * 
    
    */
    public static void databaseDelete(){

        /**
         * 
         Database.DeleteResult Class:

         1.boolean isSuccess();
         2.Id getID();
         3.getErrors();
         */

         list<account> accounts=[select id from account where name='me'];
        Database.DeleteResult[] results= Database.delete(accounts,false);
        for(Database.DeleteResult res: results){
            if(res.isSuccess()){
                System.debug('record deletion successful id of deleted record is'+res.getId());

            }
            else{
                for(Database.Error err: res.getErrors()){
                    System.debug('fields causing error are'+err.getFields());
                    system.debug('status code is '+err.getStatusCode());
                    system.debug('error message is '+err.getMessage());
                }
            }
        }
    }
    public static void databaseUndelete(){

        List<Account> accountsToUndelete=[select id,name from account where IsDeleted=true all rows];
        System.debug(accountsToUndelete);
        Database.undeleteResult[] results= Database.undelete(accountsToUndelete,false);
        for(Database.undeleteResult res: results){
            if(res.isSuccess()){
                System.debug('record undeletion successful id of undeleted record is'+res.getId());

            }
            else{
                for(Database.Error err: res.getErrors()){
                    System.debug('fields causing error are'+err.getFields());
                    system.debug('status code is '+err.getStatusCode());
                    system.debug('error message is '+err.getMessage());
                }
            }
        }
    }
}
