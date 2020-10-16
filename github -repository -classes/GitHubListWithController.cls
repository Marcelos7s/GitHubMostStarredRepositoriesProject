public class GitHubListWithController {
private String sortOrder = 'Stargazer_quantity__c';
    public List<GitHubRepository__c> getGitHubRepositories() {
    List<GitHubRepository__c> results = Database.query(
        'SELECT Id, Name, Stargazer_quantity__c, Fork_quantity__c ' +
        'FROM GitHubRepository__c ' +
        'ORDER BY ' + sortOrder + ' DESC ' 
        //'LIMIT 10'
    );
    return results;
}
}