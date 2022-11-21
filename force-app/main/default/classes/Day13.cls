public with sharing class Day13 {
  /**
   * 
   * Dynamic SOQL:
   * 
   * syntax:
   string <varibleName> ='soql query';
   database.query(<varibleName>);
   Day13.getDataBasedUSer('mayur');

   */
  public static void dynamicSOQL(){

    string query='select id , name,something from account';
    List<account> accounts=Database.query(query);
    system.debug(accounts);

    List<Account> myAccounts=[select id,name,phone from account ];
  }
  public static void getAccountFromName(String accountName){
    List<Account> myAccounts=[select id,name,phone from account where name = :accountNAme ];
    system.debug(myAccounts);
  }
  public static void getDataBasedUSer(string userName){
    string query='select id , name ';
    if(userName=='pradip'){
        query+= ' , phone';
    }
    else if(userName=='mayur'){
        query+= ' ,shippingstate , phone';
    }
    query+=' from account';
    system.debug(query);
    list<account> accounts=Database.query(query);
    system.debug(accounts);
  }
  /**
   
  Database Class:

Database.Insert() method:
insert one or mor records
syntax:
database.insert(<records>,[allOrNone]);

database.SaveResult:
1.boolean isSuccess():
operation is sucess or not?
2.ID getID()
give us ID of inserted record, and null if reocrd is not inserted
3.GetError():
errors if any
  list<account> acclist= new List<account>();
  Account a= new Account();
acclist.add(a);
Account a1= new Account();
a1.name='me';
acclist.add(a1);
database.SaveResult[]= database.insert (acclist,false);



   */
}
