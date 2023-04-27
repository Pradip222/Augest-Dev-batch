import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import  NAME_FIELD from '@salesforce/schema/Account.Name';
import  PHONE_FIELD from '@salesforce/schema/Account.Phone';

export default class CreateRecord extends LightningElement {
    accountId;
    name='';
    handleNameChange(event){
        this.accountId=undefined;
        this.name=event.target.value;
    }
    handleClick(){
        const fields={};
        fields[NAME_FIELD.fieldApiName]=this.name;
        fields[PHONE_FIELD.fieldApiName]='1234';
        const recordInput ={apiName:ACCOUNT_OBJECT.objectApiName,fields };
        createRecord(recordInput).then((Account)=>{
            this.accountId=Account.id;
        })
    }
}