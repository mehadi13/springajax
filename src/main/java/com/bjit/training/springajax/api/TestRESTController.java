package com.bjit.training.springajax.api;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.bjit.training.springajax.EmployeeJsonRespone;
import com.bjit.training.springajax.model.Employee;
import com.bjit.training.springajax.model.Test;
import com.bjit.training.springajax.service.EmployeeService;

import junit.framework.TestListener;

@RestController
@RequestMapping("/api/test")
public class TestRESTController {
	
	private static List<Test> testList;
	
	static{
		testList = new ArrayList<Test>();
		Test test1 = new Test(1,"test1");
		Test test2 = new Test(2,"test2");
		testList.add(test1);
		testList.add(test2);
	}
	
	@GetMapping
    public List<Test> index() {
		return testList;
    }

    @GetMapping("{id}")
    public Test show(@PathVariable int id) {
    	return testList.get(id);
    }
    
    @PostMapping
    public void store(@RequestBody Test test) {
    	System.out.println("Post mapping........");
		testList.add(test);
    }
    
    @PostMapping("/obj")
    public void sdf(@RequestBody Test test) {
    	System.out.println("Post mapping........"+test.getId());
		testList.add(test);
    }

   @DeleteMapping("{id}")
    public void delete(@PathVariable int id) {
	   System.out.println("Delete Request for "+id);
    	testList.remove(id);
    }
   
   @PutMapping("{id}")
   public void update(@RequestBody Test test){
	   System.out.println("From update........");
	   System.out.println(test.getName());
   }
   
   

}
