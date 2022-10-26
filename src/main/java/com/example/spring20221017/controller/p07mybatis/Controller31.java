package com.example.spring20221017.controller.p07mybatis;

import com.example.spring20221017.domain.JavaBean05;
import com.example.spring20221017.domain.JavaBean06;
import com.example.spring20221017.mapper.Mapper04;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;

@Controller
@RequestMapping("ex31")
public class Controller31 {
	
	@Autowired
	private Mapper04 mapper;
	
	@RequestMapping("sub01")
	public void method1() {
		List<JavaBean06> productList = mapper.getProductList();
		productList.forEach(System.out::println);
	}
	
	@RequestMapping("sub02")
	public void method2() {
		List<JavaBean05> employeeList = mapper.getEmployeeList();
		employeeList.forEach(System.out::println);
	}
}










