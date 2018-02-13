package com.bjit.training.springajax.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjit.training.springajax.model.Employee;
import com.bjit.training.springajax.repository.EmployeeRepository;

@Service
public class EmployeeService {
	
	@Autowired
	EmployeeRepository employeeRepository;
	
	public List<Employee> getAll(){
		return employeeRepository.findAll();
	}
	
	public Employee getOne(int id) {
		return employeeRepository.findOne(id);
	}
	
	public void save(Employee employee){
		employeeRepository.save(employee);
	}
	
	public void delete(int id){
		employeeRepository.delete(id);
	}

}
