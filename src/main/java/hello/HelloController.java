package hello;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

    @RequestMapping("/")
    public String index() {
        return "Hello World!";
    }

    @RequestMapping("/healthcheck")
    public String healthcheck() {
        return "OK";
    }
}