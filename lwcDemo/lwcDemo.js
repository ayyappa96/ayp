import { LightningElement,api,wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import Account_Name_field from '@salesforce/schema/Case.Account';
export default class LwcDemo extends LightningElement {
    @api recordId;

    @wire(getRecord,{recordId:'$recordId', field:[Account_Name_field]})
      record;
}