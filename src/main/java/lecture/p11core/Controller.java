package lecture.p11core;

import lecture.p11core.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Controller {
    private Service service;

    @Autowired
    public Controller(Service service) {
        this.service = service;
    }
}
