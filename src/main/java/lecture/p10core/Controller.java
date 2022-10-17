package lecture.p10core;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Controller {
    private Service service;

    public Service getService() {
        return service;
    }

    @Autowired
    public void setService(Service service) {
        this.service = service;
    }
}