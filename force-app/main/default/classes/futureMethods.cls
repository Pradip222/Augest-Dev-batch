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
    futureMethods.mixedDML();

     */
    public static void mixedDML(){
        user U=[select id, IsActive from user where username='insightssecurity@00d5g00000irhiceaz.com'];
        u.IsActive=false;

        update u;
        account a=[select id, name from account where id='0015g00000z6WRBAA2'];
        a.name='today2';
        update a;

    }
}
