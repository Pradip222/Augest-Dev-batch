import { LightningElement } from 'lwc';

export default class HelloBinding extends LightningElement {
    greeting='pradip';
    handleChange(event){
        this.greeting=event.target.value;
    }
}