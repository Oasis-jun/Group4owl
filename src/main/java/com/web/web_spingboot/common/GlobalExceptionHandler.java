package com.web.web_spingboot.common;

import lombok.extern.slf4j.Slf4j;
import org.springframework.core.annotation.Order;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;


@Slf4j
@RestControllerAdvice
@Order
public class GlobalExceptionHandler {

    @ExceptionHandler(value = Exception.class)
    public Rs<Object> handle(Exception e) throws Exception {
        log.error("[ System unknown error]", e);
        return Rs.fail("System unknown error");
    }

    @ExceptionHandler(value = BizException.class)
    public Rs<Object> handle(BizException e) {
        log.error("[ Service exception ]", e);
        return Rs.fail(e.getMessage());
    }
}
