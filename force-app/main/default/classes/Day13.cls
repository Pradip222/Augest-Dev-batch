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


database.SaveResult Class :
1.Boolean isSuccess(); //method will return true if record is saved else it will return false

2.ID getID(); //Id of the record

3.Database.error[] getErrors();

Database.Error class:
1.string getMessage() ; /// will return error message
2.string getStatuseCode();//
3.string getfields();//fields which are causing issue
   */

   public static void databaseInsertClass(){
    list<account> acclist= new List<account>();
  Account a= new Account();
acclist.add(a);
Account a1= new Account();
a1.name='me';
acclist.add(a1);
database.SaveResult[] results= database.insert (acclist,false);

for(database.SaveResult res: results){
  if(res.isSuccess()){
    System.debug('reocrd id is '+res.getId());
  }
  else{
    for(database.Error err: res.getErrors()){
      System.debug('fields causing error are'+err.getFields());
      system.debug('status code is '+err.getStatusCode());
      system.debug('error message is '+err.getMessage());

    }
  }
  /**
   select id,name from account where id='0015g000013x3LEAAY'
   */
}

   }


   /**
    * 
    list<account> accounts=[ select id,name from account where id in('0015g000013x3LEAAY','0015g00000z6xX7AAI') ];
    system.debug(accounts);
   for(account a: accounts){
    a.billingcountry='IN';
   }
    update accounts;


    */

    /** upsert
     
list<account> accounts= new list<account>();
    account a=new account();
    a.id='0015g000013x3LEAAY';
    a.billingcity='mumbai';
accounts.add(a);
    account a1= new account();
    a1.name='new';

    accounts.add(a1);

    database.Upsert(accounts,faslse);

     */

     public static void databseUpsert(){
      list<account> accounts= new list<account>();
    account a=new account();
    a.id='0015g000013x3LEAAY';
    a.billingcity='mumbai';
accounts.add(a);
    account a1= new account();
    a1.name='new';

    accounts.add(a1);
    account a2= new account();
   

    accounts.add(a2);

   Database.UpsertResult[] results= database.Upsert(accounts,false);

   for(Database.UpsertResult res:results){
    if(res.isSuccess()){
      if(res.isCreated()){
        System.debug('record is created and id is '+res.getId());
      }else{
        System.debug('record is updated and id is '+res.getId());
      }
    }
    else{
      for(database.Error err: res.getErrors()){
        System.debug('fields causing error are'+err.getFields());
        system.debug('status code is '+err.getStatusCode());
        system.debug('error message is '+err.getMessage());
      }
    }
   }
   /**
    * 
    database.UpsertResult class:
    1.boolean isCreated(); //
    2.boolean IsSuccess(); //upsert is success or not
    3.database.error[] getErrors();
    */

     }
}
