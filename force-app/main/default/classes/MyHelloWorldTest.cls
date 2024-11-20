@isTest
public class MyHelloWorldTest {
	@isTest
    public static void testMyHelloWorld(){
        String returnCheckName = MyHelloWorld.returnHelloWorld('Joe');
    	Assert.areEqual('Hello Joe',returnCheckName);
    }    
}