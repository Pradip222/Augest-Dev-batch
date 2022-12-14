public with sharing class day18 {
    /**
     Queueable:


     similarities between queueable and future:
     1.both are async
     2.both can be queued in flex queue

     differences:
     1.chaining is allowd in queueable
     2.queueable will give jobID once queued
     3.queueable supports non primitive datatypes as well


     syntax:
     public/ global class <className> implements Queueable{

        public/global void execute(QueueableContex ctx){
            //code
        }
     }

     className objName = new className();
     system.enqueueJob(objname);

     AccountQueueable acc= new AccountQueueable();
     system.enqueueJob(acc);

     ContactQueueable acc= new ContactQueueable();
     system.enqueueJob(acc);

     create queueable class to insert account and contact and show job chaining
     */

}
