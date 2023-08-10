public class TriggerHandleronAccount {
 
    Public static void Ratingishot(list<account> acc){
    // list<account> acc=[select id,name,industry,rating from account];
        for(account acc1:acc){
          if(acc1.industry != null && acc1.industry =='media'){
              acc1.rating ='hot';    
        }   
        }
       
    }
}