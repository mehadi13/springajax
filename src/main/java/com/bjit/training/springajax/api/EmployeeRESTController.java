package com.bjit.training.springajax.api;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.bjit.training.springajax.model.Employee;
import com.bjit.training.springajax.service.EmployeeService;
@RestController
@RequestMapping("/api/employees")
public class EmployeeRESTController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping
    public List<Employee> index(@RequestParam(defaultValue="1") Integer page) {
    	System.out.println("Index");
    	return employeeService.getAll(page);
    }

    @GetMapping("{id}")
    public Employee show(@PathVariable long id) {
    	System.out.println("show");
    	return employeeService.getOne(id);
    }
    
    @PostMapping
    public Employee store(@RequestBody Employee employee){
    	System.out.println("store");
    	return employeeService.save(employee);
    }

    @PutMapping("{id}")
    public Employee update(@PathVariable int id,@RequestBody Employee employee) {
    	System.out.println("update");
    	return employeeService.save(employee);
    }

   @DeleteMapping("{id}")
    public void delete(@PathVariable int id) {
    	System.out.println("delete");
    	employeeService.delete(id);
    }

}
