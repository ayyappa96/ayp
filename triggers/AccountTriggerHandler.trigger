trigger AccountTriggerHandler on Account (before insert) {
    if(trigger.isinsert){
        if(trigger.isbefore){
          TriggerHandleronAccount.Ratingishot(trigger.new);   
       
        }
        
    }
   
}