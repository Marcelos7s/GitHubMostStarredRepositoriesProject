@isTest
global class RepositoriesMockHttpResponseGenerator implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest req) {
        // Optionally, only send a mock response for a specific endpoint
        // and method.
        System.assertEquals('https://api.github.com/search/repositories?q=language:Java&sort=stars&page=1', req.getEndpoint());
        System.assertEquals('GET', req.getMethod());
        
        // Create a fake response
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('"items": [{"id": 121395510, "node_id": "MDEwOlJlcG9zaXRvcnkxMjEzOTU1MTA=", "name": "CS-Notes", "full_name": "CyC2018/CS-Notes"}]');
        res.setStatusCode(200);
        return res;
    }
}