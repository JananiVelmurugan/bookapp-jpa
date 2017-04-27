package com.janani.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {

	@Around("execution(* com.janani.service.*.*(..))")
	public void aroundAdviceForAllMethods(ProceedingJoinPoint jp) throws Throwable {
		System.out.println("****Before advised method execution " + jp.getSignature().getName());
		jp.proceed();
		System.out.println("****After advised method execution " + jp.getSignature().getName());
		System.out.println();
	}
}
