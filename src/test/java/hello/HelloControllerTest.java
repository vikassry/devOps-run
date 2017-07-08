package hello;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class HelloControllerTest {

    @Test
    public void HelloControllerReturnHelloOnIndex() {
        HelloController helloController = new HelloController();
        assertEquals("Hello World! from spring boot", helloController.index());
    }

    @Test
    public void HelloControllerReturnOKForHealthcheck() {
        HelloController helloController = new HelloController();
        assertEquals("OK", helloController.healthcheck());
    }
}