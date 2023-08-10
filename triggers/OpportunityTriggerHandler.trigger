trigger OpportunityTriggerHandler on Opportunity (before insert) {

    if(trigger.isinsert){
        if(trigger.isbefore){
            TriggerHnadleronOppornuity.updatedescription(trigger.new);
        }
    }
}