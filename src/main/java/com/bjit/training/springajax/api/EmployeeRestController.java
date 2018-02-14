package com.bjit.training.springajax.api;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.bjit.training.springajax.EmployeeJsonRespone;
import com.bjit.training.springajax.model.Employee;
import com.bjit.training.springajax.service.EmployeeService;

@RestController
@RequestMapping("/api/employees")
public class EmployeeRestController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping
    public List<Employee> index() {
    	System.out.println("Index");
    	return employeeService.getAll();
    }

    @GetMapping("{id}")
    public Employee show(@PathVariable long id) {
    	System.out.println("show");
    	return employeeService.getOne(id);
    }

    @PostMapping(produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
    public EmployeeJsonRespone store(@ModelAttribute @Valid Employee employee, BindingResult result) {
		System.out.println("asdf asd f asf");
    	EmployeeJsonRespone respone = new EmployeeJsonRespone();
		if (result.hasErrors()) { // Get error message
			Map<String, String> errors = result.getFieldErrors().stream()
					.collect(Collectors.toMap(FieldError::getField, FieldError::getDefaultMessage));
			respone.setValidated(false);
			respone.setErrorMessages(errors);
		} else {
			respone.setValidated(true);
			respone.setEmployee(employee);
		}
		return respone;
	}

    @PostMapping("{id}")
    public String update(@PathVariable int id,@RequestBody Employee employee) {
    	System.out.println("update");
    	employeeService.save(employee);
    	return "redirect:create";
    }

   @DeleteMapping("{id}")
    public void delete(@PathVariable int id) {
    	System.out.println("delete");
    	employeeService.delete(id);
    }

}
