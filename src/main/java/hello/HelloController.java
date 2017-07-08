package hello;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
class HelloController {

    @RequestMapping("/")
    public String index() {
        return "Hello World! from spring boot";
    }

    @RequestMapping("/healthcheck")
    public String healthcheck() {
        return "OK";
    }
}