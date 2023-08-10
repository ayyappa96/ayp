public with sharing class LwcDemoClass {
 @AuraEnabled(cacheable=true)
 public static list<contact> getContacts(string accId){
  return[select accountid,id,firstName,lastName from Contact
  where acccountId =:accId with security_enforced];
 }
}