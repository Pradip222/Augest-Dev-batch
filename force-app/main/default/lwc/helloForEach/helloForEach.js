import { LightningElement } from 'lwc';

export default class HelloForEach extends LightningElement {

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

    ]
    
}