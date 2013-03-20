package com.spshop.web.interceptor;

import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import com.spshop.model.User;
import com.spshop.web.BaseController;
import com.spshop.web.view.UserView;

@Component
@Aspect
public class ModelAttributeAndLoginCheckInjecter {
	
	private static Logger logger = Logger.getLogger(ModelAttributeAndLoginCheckInjecter.class);
	
	@Around("execution(public * com.spshop.web.UserCenterController.*(..))")
	@Order(value=1)
	public Object loginCheck1(ProceedingJoinPoint joinPoint)
			throws Throwable {
		return checkLogin(joinPoint);
	}
	@Around("execution(public * com.spshop.web.OrderPaymentController.*(..))")
	@Order(value=1)
	public Object loginCheck2(ProceedingJoinPoint joinPoint)
			throws Throwable {
		return checkLogin(joinPoint);
	}

	private Object checkLogin(ProceedingJoinPoint joinPoint) throws Throwable {
		Object target = joinPoint.getTarget();
		if (target instanceof BaseController) {
			BaseController controller = (BaseController) target;
			UserView userView = controller.getUserView();
			User user = userView.getLoginUser();
			if (null != user) {
				logger.debug("User is login");
				return joinPoint.proceed();
			}

		}
		logger.debug("user is not login");
		return "/login";
	}
	
	
}
