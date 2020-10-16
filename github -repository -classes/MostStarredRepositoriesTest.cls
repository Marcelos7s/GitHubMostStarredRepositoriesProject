@isTest
private class MostStarredRepositoriesTest {
@isTest static void testCallout() {
        // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, new RepositoriesMockHttpResponseGenerator());
        
        // Call method to test.
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        HttpResponse res = MostStarredRepositoriesCalloutClass.getInfoFromExternalService();
        
        // Verify response received contains fake values
        String contentType = res.getHeader('Content-Type');
        System.assert(contentType == 'application/json');
        String actualValue = res.getBody();
        String expectedValue = '"items": [{"id": 121395510, "node_id": "MDEwOlJlcG9zaXRvcnkxMjEzOTU1MTA=", "name": "CS-Notes", "full_name": "CyC2018/CS-Notes"}]';
        System.assertEquals(actualValue, expectedValue);
        System.assertEquals(200, res.getStatusCode());
    }
}