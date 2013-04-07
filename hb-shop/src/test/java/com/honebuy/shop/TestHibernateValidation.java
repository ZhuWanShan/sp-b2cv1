package com.honebuy.shop;

import java.util.Iterator;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.junit.BeforeClass;
import org.junit.Test;

import com.honeybuy.shop.dto.UserDTO;

public class TestHibernateValidation {
	   private static Validator validator;

	    @BeforeClass
	    public static void setUp() {
	        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
	        validator = factory.getValidator();
	    }
	    
	    @Test
	    public void manufacturerIsNull() {
	    	
	    	UserDTO user = new UserDTO();
	    	user.setEmail("wan-shan.zhu#hp.com");
	    	//user.setUid("id");
	    		
	        Set<ConstraintViolation<UserDTO>> constraintViolations = validator.validate(user);
	        
	        
	        Iterator<ConstraintViolation<UserDTO>> ite = constraintViolations.iterator();
	        
	        System.out.println(constraintViolations.size());
	        System.out.println(ite.next().getPropertyPath());
	        System.out.println(ite.next().getMessage());
	        
	       // assertEquals(1, constraintViolations.size());
	        //assertEquals("may not be null", constraintViolations.iterator().next().getMessage());
	    }
}
