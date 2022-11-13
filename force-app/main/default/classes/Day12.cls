public  class Day12 {

    /**
     * 
     * SOQL : Salesforce Object Query Language
     * 
     * syntax:
     * SELECT <fieldNames/filed API names> from <objectname/objectApiName>
     * [Where <condition]
     * [group by <column Names>]
     * [having <condition>]
     * [order by <column name>]
     * [LIMIT <number of rows to return>]
     * [OFFSET <number of rows to skip>]
     * [FOR UPDATE]
     * [ALL ROWS]
     * 
     * 1.write SOQL to get all  account names from database:
     * 
     * SELECT Name from account
     * 
     * 2. write SOQL to get all  account names and annual revenue from database
     * SELECT Name,AnnualRevenue from account
     * 
     * 3.write a query to fetch account names with name as test
     * 
     * select name from account where name='test'
     * 
     * 4..write a query to fetch account names with name as today1 or university of arizona
     * select name from account where name='today1' or  name='University of Arizona'
        select name from account where name in ('today1','University of Arizona')

        5. write a query to count number of  accounts per billingcountry
        select billingcountry,count(name) from account group by billingcountry

        assignment:
        1.write SOQL to fetch user name and email for all users
        2.write SOQL to fetch name for all contact records
        3.write a SOQL to fetch accounts with annual revenue greater than 50000
        
     */
    
}
