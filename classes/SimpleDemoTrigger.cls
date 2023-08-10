public with sharing class SimpleDemoTrigger {

    public static void updatemethod(List<Account> acclist){
            for(account acc : acclist){
            if(acc.Industry !=null && acc.Industry !='media'){
                acc.Rating='hot';
            }    
            
        }
    }
}