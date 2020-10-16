public with sharing class MostStarredRepositoriesService {
    @future(callout=true)   
       		public static void makeGetCalloutGitHub() {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.github.com/search/repositories?q=language:Java&sort=stars&page=1');
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            	if (response.getStatusCode() == 200) {
        		GitHubRepositoryDTO.parseRequest(response.getBody());
                GitHubRepositoryDTO responseGitHub = GitHubRepositoryDTO.parseRequest(response.getBody());	  
    			System.debug('Items: ' + responseGitHub);	
                    List<GitHubRepository__c> gitHubList = new List<GitHubRepository__c>();
                    for (GithubRepositoryDTO.Item itemAtual : responseGitHub.items) {                   	        
                        GitHubRepository__c git = new GitHubRepository__c (GitHub_Id__c = itemAtual.id,
                                                                          Name = itemAtual.full_name,
                                                                          Stargazer_quantity__c = itemAtual.stargazers_count,
                                                                          Fork_quantity__c = itemAtual.forks_count);
                        gitHubList.add(git); 
                        
                    }    
					
                    upsert gitHubList; 
                    
    
                }
	}

}