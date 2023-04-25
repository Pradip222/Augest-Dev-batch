public with sharing class Day21 {
   /**
    * 
    write a trigger to count number of contacts relted to accunt show on account record:
    assumptions: custom filed number_of_contacts__C on account which will store number of contacts

    step1 : understand the object: contact 

    step2 : events : after insert, after delete , after undelete ,after update

    step3 which context variables to use: trigger.new, trigger.old,trigger.newMAp, triggerOldmap

    step4: 
    child query on account , and count ther contact records


    Assignment :
    write a rollup summery trigger to count non duplicate contacts on account record


    */
}