package com.web.web_spingboot.common;

import lombok.Data;


@Data
public class Rs<T> {
    private Boolean ok;
    private T data;
    private String msg;
    /**
     * noLogin
     */
    private String code;

    public Rs(Boolean ok, T data, String msg, String code){
        this.ok = ok;
        this.data = data;
        this.msg = msg;
        this.code = code;
    }

    public static <T> Rs<T> ok() {
        return new Rs<>(true, null, null, null);
    }

    public static <T> Rs<T> ok(T data) {
        return new Rs<>(true, data, null, null);
    }

    public static <T> Rs<T> fail(String msg) {
        return new Rs<>(false, null, msg, null);
    }

    public static <T> Rs<T> failCode(String code) {
        return new Rs<>(false, null, null, code);
    }
}
