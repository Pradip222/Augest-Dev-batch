import { LightningElement,wire } from 'lwc';
import {getRecord,getFieldValue     } from 'lightning/uiRecordApi';
import Id from '@salesforce/user/Id';
import Name from '@salesforce/schema/User.Name';
import Email from '@salesforce/schema/User.Email';
const fields=[Name,Email];

export default class GetRecord extends LightningElement {
    userID=Id;
   
    @wire(getRecord,{recordId:'$userID',fields})
    user;
    

    get name(){
        console.log('getting name');
        return getFieldValue(this.user.data,Name);
    }
    get email(){
        return getFieldValue(this.user.data,Email);
    }

}