trigger rollup on contact (after insert,after update,after delete, after undelete) {
    Set<ID> accountIDs= new set<ID>();
    if(trigger.isDelete){
        //count will be decreased
        for(contact c: trigger.old){
            if(c.accountID!=null){
                accountIDs.add(c.accountID);
            }
        }
    }
    else if(trigger.isInsert || trigger.isUndelete){
        //count will be increased
        for(Contact c: trigger.new){
            if(c.accountID!=null){
                accountIDs.add(c.accountID);
            }
        }
    }
    else if(trigger.isUpdate){
        //count will increased or decreased
        for(Contact c: trigger.new){
            if(trigger.oldMap.get(c.id).AccountId != c.AccountId && trigger.oldMap.get(c.id).AccountId!=null && c.AccountId!=null ){
                accountIDs.add(c.AccountId);
                accountIDs.add(trigger.oldMap.get(c.id).AccountId);
            }
            else if(trigger.oldMap.get(c.id).AccountId != c.AccountId && trigger.oldMap.get(c.id).AccountId!=null){
                accountIDs.add(trigger.oldMap.get(c.id).AccountId);
            }
            else if( c.AccountId!=null){
                accountIDs.add(c.AccountID);
            }
        }
    }
    list<account> accounts= [select id, Number_of_contacts__c, (select id from contacts) from account where id in :accountIDs];
    for(account a: accounts){
        a.Number_of_contacts__c= string.valueOf(a.Contacts.size());
    }
    update accounts;

    


}