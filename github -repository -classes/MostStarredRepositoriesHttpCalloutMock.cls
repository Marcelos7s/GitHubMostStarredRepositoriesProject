@isTest
global class MostStarredRepositoriesHttpCalloutMock implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('"items": [{"id": 121395510, "node_id": "MDEwOlJlcG9zaXRvcnkxMjEzOTU1MTA=", "name": "CS-Notes", "full_name": "CyC2018/CS-Notes"}]');
        response.setStatusCode(200);
        return response; 
    }
}