import { LightningElement ,track} from 'lwc';
import getContactListBasedOnInput from '@salesforce/apex/ShowContactsController.getContactListBasedOnInput';
export default class ShowContactsBasedOnInput extends LightningElement {
    @track
    contacts;
    name;
    handleClick(){
        getContactListBasedOnInput({name : this.name}).then((result)=>{
            this.contacts=result;
            console.log('data'+JSON.stringify(this.contacts));
        }).catch((error)=>{
            console.log('error::'+error);
        });
    }
    handleChange(event){
        this.name=event.target.value;
    }

}