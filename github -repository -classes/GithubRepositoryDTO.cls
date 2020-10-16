public class GithubRepositoryDTO {    
    public List <Item> items = new List<Item>();    
  
    public class Item {
		public Integer id {get;set;} 
		public String node_id {get;set;} 
		public String name {get;set;} 
		public String full_name {get;set;} 
		public Boolean private_Z {get;set;} // in json: private
		//public Owner owner {get;set;} 
		public String html_url {get;set;} 
		public String description {get;set;} 
		public Boolean fork {get;set;} 
		public String url {get;set;} 
		public String forks_url {get;set;} 
		public String keys_url {get;set;} 
		public String collaborators_url {get;set;} 
		public String teams_url {get;set;} 
		public String hooks_url {get;set;} 
		public String issue_events_url {get;set;} 
		public String events_url {get;set;} 
		public String assignees_url {get;set;} 
		public String branches_url {get;set;} 
		public String tags_url {get;set;} 
		public String blobs_url {get;set;} 
		public String git_tags_url {get;set;} 
		public String git_refs_url {get;set;} 
		public String trees_url {get;set;} 
		public String statuses_url {get;set;} 
		public String languages_url {get;set;} 
		public String stargazers_url {get;set;} 
		public String contributors_url {get;set;} 
		public String subscribers_url {get;set;} 
		public String subscription_url {get;set;} 
		public String commits_url {get;set;} 
		public String git_commits_url {get;set;} 
		public String comments_url {get;set;} 
		public String issue_comment_url {get;set;} 
		public String contents_url {get;set;} 
		public String compare_url {get;set;} 
		public String merges_url {get;set;} 
		public String archive_url {get;set;} 
		public String downloads_url {get;set;} 
		public String issues_url {get;set;} 
		public String pulls_url {get;set;} 
		public String milestones_url {get;set;} 
		public String notifications_url {get;set;} 
		public String labels_url {get;set;} 
		public String releases_url {get;set;} 
		public String deployments_url {get;set;} 
		public String created_at {get;set;} 
		public String updated_at {get;set;} 
		public String pushed_at {get;set;} 
		public String git_url {get;set;} 
		public String ssh_url {get;set;} 
		public String clone_url {get;set;} 
		public String svn_url {get;set;} 
		public String homepage {get;set;} 
		public Integer size {get;set;} 
		public Integer stargazers_count {get;set;} 
		public Integer watchers_count {get;set;} 
		public String language {get;set;} 
		public Boolean has_issues {get;set;} 
		public Boolean has_projects {get;set;} 
		public Boolean has_downloads {get;set;} 
		public Boolean has_wiki {get;set;} 
		public Boolean has_pages {get;set;} 
		public Integer forks_count {get;set;} 
		public Object mirror_url {get;set;} 
		public Boolean archived {get;set;} 
		public Boolean disabled {get;set;} 
		public Integer open_issues_count {get;set;} 
		//public License license {get;set;} 
		public Integer forks {get;set;} 
		public Integer open_issues {get;set;} 
		public Integer watchers {get;set;} 
		public String default_branch {get;set;} 
		public Double score {get;set;} 
    
    
}
	public static GithubRepositoryDTO parseRequest(String json) {
		return (GithubRepositoryDTO) System.JSON.deserialize(json, GithubRepositoryDTO.class);
   
    }
    
    
}