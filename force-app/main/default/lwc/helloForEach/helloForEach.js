import { LightningElement,track } from 'lwc';

export default class HelloForEach extends LightningElement {
    @track //track changes (depth of reactivity)
    contacts=[
        {
            Id:"123",
            Name:"Pradip",
            Title:'VP of engineering'
        },
        {
            Id:"1234",
            Name:"mayur",
            Title:'CEO'
        },
        {
            Id:"12345",
            Name:"sanket",
            Title:'Director'
        },

    ];
    handleClick(event){

        var obj= {
            Id:"",
            Name:"",
            Title:''
        };
        obj.Id=this.template.querySelectorAll('lightning-input')[1].value; //selectors
        obj.Name=this.template.querySelectorAll('lightning-input')[0].value;
        obj.Title=this.template.querySelectorAll('lightning-input')[2].value;
        this.contacts.push(obj);
        console.log(this.contacts); //writing to console

    }
}