public with sharing class ContactQueueable implements Queueable {
    public Account myaccount;
    public ContactQueueable(Account a) {
        myaccount=a;
    }

    public void execute(QueueableContext ctx){
        Contact c= new Contact();
        c.LastName='contact from queueable';
        c.accountID=myaccount.id;
        insert c;
        
    }
}
