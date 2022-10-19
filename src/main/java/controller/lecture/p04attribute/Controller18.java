package controller.lecture.p04attribute;

import controller.domain.lecture.JavaBean01;
import controller.domain.lecture.JavaBean02;
import controller.domain.lecture.JavaBean03;
import controller.domain.lecture.Student;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("ex18")
public class Controller18 {

    @RequestMapping("sub01")
    public void method01(@ModelAttribute("bean") JavaBean01 b) {

    }

    @RequestMapping("sub02")
    public void method02(@ModelAttribute("bean2") JavaBean02 b) {
        b.setName("daram");
        b.setAge(26);
        b.setPassword("1234");
        b.setEmail("asdf@gmail.com");
    }

//    @RequestMapping("sub03")
//    public void method03(@ModelAttribute("student")Student s) {
//    }
// 이름이 같다면 생략할 수 있다
    @RequestMapping("sub03")
    public void method03(@ModelAttribute Student s) {
        s.setName("daram");
        s.setClassName("spring");
        s.setStudentNumber("22");
    }

    @RequestMapping("sub04")
    public String method04(Student s) {
        s.setName("Limdaram");
        s.setClassName("java");
        s.setStudentNumber("26");

        return "ex18/sub03";
    }
}
