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
         select username, email from user
        2.write SOQL to fetch name for all contact records
 select name from contact
        3.write a SOQL to fetch accounts with annual revenue greater than 50000
        
select name from account where annualrevenue>50000

aggregate functions:
sum
min
max
avg
count
       
how many accounts has annual revenue greater than 50000?
select count(id) from account where annualrevenue>50000

get first five accounts with highest annualrevenue
select name,annualrevenue from account where annualrevenue!=null order by annualrevenue desc limit 5
     
get 4th  account with highest annualrevenue

select name,annualrevenue from account where annualrevenue!=null order by annualrevenue desc limit 1 offset 3

parent SOQL (child to parent):
get data from child to parent

select name,account.name,account.annualrevenue from contact (standard relationship)

select name,account__r.annualrevenue ,account__r.name from contact (custom relationship)

parent to child( standard relationship):
syntax:
[parent soql (child soql)]

get all contact names from account and account name as well:

select name,(select name from contacts) from account

parent to child (custom relationship):
syntax:
[parent soql (child soql)]
select name,(select name from contacts__r) from account


Static SOQL:
in this approach query will be enclosed in []

syntax:[soql query]

when query is returning one record:
syntax: <sobject> <variableName> = [soql query that return 1 record]

example 

account myaccount= [select name from account limit 1];
system.debug(myaccount);
Dynamic :
*/
  

public static void staticSOQL(){
       account myaccount= [select name ,(select id,name from contacts) from account where id='0015g00000wwX1aAAE' limit 1];// if query is returning 1 record

       system.debug(myaccount);
       system.debug(myaccount.Contacts);
       /**
        * if query is returning more than one records
        */
        List<Account> myAccounts=[select id,name,phone,(select id,name from contacts) from account ];
        system.debug(myaccounts);
        for( account a: myAccounts){
              system.debug(a);
              system.debug(a.Contacts);
        }
/**
 * 
 * getting deleted records from recycle bin
 */

 List<Account> deletedAccounts=[select id,name from account where IsDeleted=TRUE all rows];
 System.debug(deletedAccounts);

}
}
