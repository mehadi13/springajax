package com.bjit.training.springajax.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.bjit.training.springajax.model.Employee;
import com.bjit.training.springajax.repository.EmployeeRepository;

@Service
public class EmployeeService {
	
	@Autowired
	EmployeeRepository employeeRepository;
	
	private final int objSize=1;
	
	public List<Employee> getAll(Integer page){
		Pageable pageable = new PageRequest(page, objSize);
		return employeeRepository.findAll(pageable).getContent();
	}
	
	public Employee getOne(long id) {
		return employeeRepository.findOne(id);
	}
	
	public Employee save(Employee employee){
		return employeeRepository.save(employee);
	}
	
	public void delete(long id){
		employeeRepository.delete(id);
	}

}
