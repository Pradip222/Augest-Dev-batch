trigger myTrigger on account (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    /**
     * 
     write trigger to ensure account has description before inserting 


     description : description of accountname

     account a= new account();
     a.name='trigger';

     insert a;
     */
    if(trigger.isBefore && trigger.isInsert){ //before insert
        system.debug('before insert event');
        system.debug('trigger.new is holding value' +trigger.new);//some data
        system.debug('trigger.old is holding value' +trigger.old); //null
        system.debug('trigger.oldmap is holding value' +trigger.oldMap); //null
        system.debug('trigger.newMap is holding value' +trigger.newMap); //null
    }
    if(trigger.isAfter && trigger.isInsert){ //after insert
        system.debug('after insert event');
        system.debug('trigger.new is holding value' +trigger.new);//trigger.new is holding some data
        system.debug('trigger.old is holding value' +trigger.old); //trigger.old is holding valuenull
        system.debug('trigger.oldmap is holding value' +trigger.oldMap); //trigger.oldmap is holding valuenull
        system.debug('trigger.newMap is holding value' +trigger.newMap);//trigger.newMap is holding some data
    }
    if(trigger.isAfter && trigger.isUpdate){ //after update
        system.debug('after update event');
        system.debug('trigger.new is holding value' +trigger.new); //some value
        system.debug('trigger.old is holding value' +trigger.old); //some value
        system.debug('trigger.oldmap is holding value' +trigger.oldMap);//some value
        system.debug('trigger.newMap is holding value' +trigger.newMap); //some value
    }
    if(trigger.isBefore && trigger.isUpdate){ //before update
        system.debug('before update event');
        system.debug('trigger.new is holding value' +trigger.new); //some value
        system.debug('trigger.old is holding value' +trigger.old); //some value
        system.debug('trigger.oldmap is holding value' +trigger.oldMap);//some value
        system.debug('trigger.newMap is holding value' +trigger.newMap); //some value
    }

    if(trigger.isBefore && trigger.isDelete){ //before delete 
        system.debug('before delete event');
        system.debug('trigger.new is holding value' +trigger.new); //null
        system.debug('trigger.old is holding value' +trigger.old); 
        system.debug('trigger.oldmap is holding value' +trigger.oldMap);
        system.debug('trigger.newMap is holding value' +trigger.newMap); //null
    }
    if(trigger.isAfter && trigger.isDelete){ //after delete 
        system.debug('after delete event');
        system.debug('trigger.new is holding value' +trigger.new);//null 
        system.debug('trigger.old is holding value' +trigger.old); 
        system.debug('trigger.oldmap is holding value' +trigger.oldMap);
        system.debug('trigger.newMap is holding value' +trigger.newMap); //null
    }

    if(trigger.isAfter && trigger.isUndelete){ //after delete 
        system.debug('after undelete event');
        system.debug('trigger.new is holding value' +trigger.new); 
        system.debug('trigger.old is holding value' +trigger.old); //null
        system.debug('trigger.oldmap is holding value' +trigger.oldMap);//null
        system.debug('trigger.newMap is holding value' +trigger.newMap); 
    }

}   