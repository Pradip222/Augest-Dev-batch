public  class futureMethods {
    /**
     * 
    there are two types of objects in salesforce:
    set up objects:

    user,userrole,profiles, etc
    non setup objects:
    account,cotact, student__c, etc.

    if ue try to perform dml on setup and non setup object inside single execution context
    we will get mixed DML error
    futureMethods.mixedDMLsolution();

     */
    public static void mixedDML(){
        user U=[select id, IsActive from user where username='insightssecurity@00d5g00000irhiceaz.com'];
        u.IsActive=true;

        update u;
        account a=[select id, name from account where id='0015g00000z6WRBAA2'];
        a.name='today2';
        update a;

    }

    public static void mixedDMLsolution(){
        
        account a=[select id, name from account where id='0015g00000z6WRBAA2'];
        a.name='today2';
        update a;
        futureMethods.updateUser();

    }

    /**
     future methods:

     @future

     public static void methodName(<parameters>){
        //code
     } 

     */
     @future
     public static void updateUser(){
        user U=[select id, IsActive from user where username='insightssecurity@00d5g00000irhiceaz.com'];
        u.IsActive=true;

        update u;
     }

     /**
      * 
    1.future method should be static always
    2.void always
    3.future methods supports only primitive datatypes as parameter
    4.chaining is not possible (one future cannot call another future method)
    5. maximum number of future invocations per day is 250000 or number of userlicences *200 whiever is greater
    
      */
    
}
