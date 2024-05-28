package com.web.web_spingboot.common;


public class BizException extends RuntimeException{
    public BizException(String errorMsg) {
        super(errorMsg);
    }
}
