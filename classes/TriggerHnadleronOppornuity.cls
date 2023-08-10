public class TriggerHnadleronOppornuity {
    public static void updatedescription(list<opportunity> opplist){
      //  list<opportunity> opplist =[select id,amount,description from opportunity];
        for(opportunity opp:opplist){
            if(opp.amount != null && opp.Amount >= 100000){
                opp.Description='Hot Opportunity';
            }
        } 
    }

}