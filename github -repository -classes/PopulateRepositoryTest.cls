@istest
class PopulateRepositoryTest {
 
   static testmethod void test() {
   Test.startTest();
 
      GitHubRepository__c g = new GitHubRepository__c();
      g.Name = 'testPopulateRepository';
      g.GitHub_Id__c = 123654;
      insert g;
 
      // Schedule the test job
 
      String jobId = System.schedule('testBasicScheduledApex',
      PopulateRepositoryScheduledMethodTest.CRON_EXP, 
         new PopulateRepositoryScheduledMethodTest());
 
      // Get the information from the CronTrigger API object
      CronTrigger ct = [SELECT Id, CronExpression, TimesTriggered, 
         NextFireTime
         FROM CronTrigger WHERE id = :jobId];
 
      // Verify the expressions are the same
      System.assertEquals(PopulateRepositoryScheduledMethodTest.CRON_EXP, 
         ct.CronExpression);
 
      // Verify the job has not run
      System.assertEquals(0, ct.TimesTriggered);
 
      // Verify the next time the job will run
      System.assertEquals('2020-10-16 10:00:00', 
         String.valueOf(ct.NextFireTime));
      System.assertNotEquals('testPopulateRepositoryUpdated',
         [SELECT GitHub_Id__c, Name FROM GitHubRepository__c WHERE GitHub_Id__c = :g.GitHub_Id__c].Name);
 
   Test.stopTest();
 
   System.assertEquals('testPopulateRepositoryUpdated',
   [SELECT GitHub_Id__c, Name FROM GitHubRepository__c WHERE GitHub_Id__c = :g.GitHub_Id__c].Name);
 
   }
}