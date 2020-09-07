package com.audriuskumpis.crmapp.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.util.logging.Logger;

@Aspect
@Component
public class LoggingAspect {
    private Logger logger = Logger.getLogger(getClass().getName());

    @Pointcut("execution(* com.audriuskumpis.crmapp.controller.*.*(..))")
    private void forControllerPackage() {
    }

    @Pointcut("execution(* com.audriuskumpis.crmapp.service.*.*(..))")
    private void forServicePackage() {
    }

    @Pointcut("execution(* com.audriuskumpis.crmapp.dao.*.*(..))")
    private void forDaoPackage() {
    }

    @Pointcut("forControllerPackage() || forServicePackage() || forDaoPackage()") // match any of those packages
    private void forAppFlow() {
    }

    @Before("forAppFlow()")
    public void before(JoinPoint joinPoint) {
        String method = joinPoint.getSignature().toShortString();
        Object[] args = joinPoint.getArgs();
        logger.info("==> in @Before: calling method: " + method);

        for (Object tempArg : args) {
            logger.info("======> argument: " + tempArg);
        }
    }

    @AfterReturning(pointcut = "forAppFlow()", returning = "result")
    public void afterReturning(JoinPoint joinPoint, Object result) {
        String method = joinPoint.getSignature().toShortString();
        logger.info("==> in @AfterReturning: calling method: " + method);

        logger.info("====> result: " + result);
    }
}
