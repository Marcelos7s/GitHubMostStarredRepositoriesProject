global class PopulateRepositoryScheduledMethodTest implements Schedulable {
 
// This test runs a scheduled job at 10:00 Am 16. 2020
 
   public static String CRON_EXP = '0 0 10 * * ? 2020';
   
   global void execute(SchedulableContext ctx) {
      CronTrigger ct = [SELECT Id, CronExpression, TimesTriggered, NextFireTime
                FROM CronTrigger WHERE Id = :ctx.getTriggerId()];
 
      System.assertEquals(CRON_EXP, ct.CronExpression);
      System.assertEquals(0, ct.TimesTriggered);
      System.assertEquals('2020-10-16 10:00:00', String.valueOf(ct.NextFireTime));
 
      GitHubRepository__c g = [SELECT GitHub_Id__c, Name FROM GitHubRepository__c WHERE Name = 
                  'testPopulateRepository'];
      g.name = 'testPopulateRepositoryUpdated';
      update g;
   }   
}