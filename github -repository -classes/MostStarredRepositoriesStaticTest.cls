@isTest
private class MostStarredRepositoriesStaticTest {
    @isTest static  void testGetCallout() {
        Test.startTest();
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetRepositoriesResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
    	
    // call method
    //MostStarredRepositoriesService.makeGetCalloutGitHub();
    Integer callouts = Limits.getCallouts();
	Test.stopTest();
	//VER MANEIRA DE TESTAR A CLASSE SEM PREOCUPAR COM RETORNOS, PEGAR 80 % DELA, ver testes genéricos
	system.assertEquals(1, callouts, 'The method should make a callout');	

    }   
}