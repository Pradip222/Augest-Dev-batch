global class MyfirstBatch implements database.Batchable<SObject> {
    /*
    
    syntax:
    <public/global> class <batchClassName> implements database.Batchable<>{

        <public/global> <database.QueryLocator/Iterator> start(<database.BatchableContext>){


        }//query the data from database 

        <public/global> void execute(<database.BatchableContext>,list<sobjects>){

        }//business logic 


        <public/global> void finish(<database.BatchableContext>){

        } //post execution logic
    }

MyfirstBatch b= new MyfirstBatch();
database.executeBatch(b,5);

    */
    global Database.QueryLocator start(Database.BatchableContext bc){
            string query='select id, name from account';
            return Database.getQueryLocator(query); //return query locator 
        
    }
    global void execute(Database.BatchableContext bc, list<sobject> data){
        list<contact> con= new List<Contact>();
        for(SObject s: data){
            Contact c= new Contact();
            c.AccountId= (ID)s.get('id');
            c.LastName='related to '+s.get('name');
            con.add(c);
        }
        insert con;
    }
    global void finish(Database.BatchableContext bc){

    }
    

}
/**
 

assignment :
write a batch to delete duplicate contacts from account record
 */