public class day19 {
    /**
     Trigger:
     database events will trigger some apex code caled as trigger


     Events:

    before Insert 
    after Insert 

    before Update
    After update

    before  delete
    after delete

    after undelete


    syntax:

    trigger <triggername> on <objectname>([events]){
        //business logic
    }
    

    context variables:


    1.trigger.new -> list of new data (current context records)

    2.trigger.old -> list of old data (previous context records)

    3.boolean isinsert -> this will return true if trigger has beed fired due to 
    insert event

    4.boolean isUpdate -> this will return true if trigger has beed fired due to 
    update event

    5.boolean isDelete -> this will return true if trigger has beed fired due to 
    delete event

    6.boolean isundelete ->this will return true if trigger has beed fired due to 
    undelete event

    7.boolean isAfter : it will return true if trigger has beend alredy done with the operation
    8.boolean isBefore : it will return true if trigger is about to do the operation operation


    9.trigger.oldMAp

    10.trigger.newMAP


     */
}
