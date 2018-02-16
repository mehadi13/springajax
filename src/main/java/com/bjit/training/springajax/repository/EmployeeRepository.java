package com.bjit.training.springajax.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.bjit.training.springajax.model.Employee;

public interface EmployeeRepository extends PagingAndSortingRepository<Employee, Long>  {

}