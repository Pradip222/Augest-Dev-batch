import { LightningElement } from 'lwc';
import getContactList from '@salesforce/apex/ShowContactsController.getContactList';
export default class ShowContacts extends LightningElement {
    contacts;
    handleClick(){
        getContactList().then((result)=>{
            this.contacts=result;
            console.log('data'+JSON.stringify(this.contacts));
        }).catch((error)=>{
            console.log('error::'+error);
        });
    }

}