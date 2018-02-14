package com.bjit.training.springajax.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bjit.training.springajax.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long>  {

}
