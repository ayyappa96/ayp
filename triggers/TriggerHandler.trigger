trigger TriggerHandler on Account (before insert) {
    if(Trigger.isInsert){
        if(trigger.isBefore){
            SimpleDemoTrigger.updatemethod(trigger.new);
       
        }
    }

}