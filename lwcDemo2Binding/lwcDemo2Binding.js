import { LightningElement } from 'lwc';

export default class LwcDemo2Binding extends LightningElement {
    greeting ='world';

    handleChange(event){
        this.greeting= event.target.value;
    }
}