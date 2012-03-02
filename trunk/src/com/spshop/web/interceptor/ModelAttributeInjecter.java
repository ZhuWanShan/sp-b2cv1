package com.spshop.web.interceptor;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.spshop.utils.Constants;
import com.spshop.web.BaseController;

@Component
@Aspect
public class ModelAttributeInjecter {
	
	private static Logger logger = Logger.getLogger(ModelAttributeInjecter.class);
	
	@Before("execution(public * com.spshop.web.*Controller.*(..) )")
	public void validateProductContext(JoinPoint joinPoint) {
		Object[] params = joinPoint.getArgs();
		Object target = joinPoint.getTarget();
		if(null != params){
			for(Object param : params){
				if(param instanceof Model && target instanceof BaseController){
					Model model = (Model) param;
					BaseController controller = (BaseController) target;
					model.addAttribute(Constants.SITE_VIEW, controller.getSiteView());
					logger.debug("set Site view");
				}
			}
		}
	}
}
