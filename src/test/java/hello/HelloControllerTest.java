package hello;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class HelloControllerTest {

    @Test
    public void TestHelloControllerReturnHello() {
        HelloController helloController = new HelloController();
        assertEquals("Hello World!", helloController.index());
    }
}
