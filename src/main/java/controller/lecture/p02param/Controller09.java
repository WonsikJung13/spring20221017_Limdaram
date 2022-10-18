package controller.lecture.p02param;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("ex09")
public class Controller09 {
    @GetMapping("sub01")
    public void method01(@RequestParam(name="address") String a) {
        System.out.println(a);
    }

    @GetMapping("sub02")
    public void method02(@RequestParam(name="name") String b) {
        System.out.println("이름 : " + b);
    }
    // value로 쓸 수 있다
    @GetMapping("sub03")
    public void method03(@RequestParam(value="name") String b) {
        System.out.println("이름 : " + b);
    }
    // value는 생략할 수 있다
    @GetMapping("sub04")
    public void method04(@RequestParam("name") String b) {
        System.out.println("이름 : " + b);
    }
}
