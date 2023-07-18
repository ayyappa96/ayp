public class MyBatchClass implements Database.Batchable<sobject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        // Logic to return the query locator for the batch
        String query = 'SELECT Id, Name FROM Account';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, List<account> scope) {
        // Logic to process each batch of records
        for (sObject record : scope) {
            // Process the record
            String accountId = (String)record.get('Id');
            String accountName = (String)record.get('Name');
            // Perform any necessary operations on the record
        }
    }

    public void finish(Database.BatchableContext bc) {
        // Logic to handle any post-processing tasks
    }
}
