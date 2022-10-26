package com.example.spring20221017.mapper;

import java.time.LocalDate;
import java.util.List;

public interface Mapper02 {

	List<String> getCustomerNames();
	
	List<Integer> getCustomerIds();

	List<Double> getProductPrices();

	List<LocalDate> getEmployeeBirthDate();
}
