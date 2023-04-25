import { LightningElement } from 'lwc';

export default class HelloBinding extends LightningElement {
    greeting='data';
    handleChange(event){
        this.greeting=event.target.value;
    }
}