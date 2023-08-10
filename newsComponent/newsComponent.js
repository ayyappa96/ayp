import { LightningElement } from 'lwc';
import retrivenews from "@salesforce/apex/RESTCallouts.retrivenews";
export default class NewsComponent extends LightningElement {

    connectedCallback(){
        this.fetchnews();
    }
    fetchnews(){
        retrivenews().then(Response=>{
            console.log(Response);
        }).catch(error=>{
            console.error(error);
        })
    }
}