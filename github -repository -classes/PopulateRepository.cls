public class PopulateRepository implements Schedulable {
    public static String CRON_EXP  = '0 0 10 * * ? 2020';
    public void execute(SchedulableContext ctx) {   
    //MostStarredRepositoriesService M = new MostStarredRepositoriesService(); 
    MostStarredRepositoriesService.makeGetCalloutGitHub();
        
    PopulateRepository p = new PopulateRepository();
    String sch = '0 0 10 * * ? 2020';
	String jobID = system.schedule('Populate Repository', sch, p);      
    }   
         
}