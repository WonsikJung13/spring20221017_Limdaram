package com.example.spring20221017.controller.p07mybatis;

import com.example.spring20221017.mapper.Mapper01;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ex28")
public class Controller28 {
    @Autowired
    private Mapper01 mapper;

    @RequestMapping("sub01")
    public void method1() {
        String time = mapper.getCurrentTime();
        System.out.println(time);
    }
}
