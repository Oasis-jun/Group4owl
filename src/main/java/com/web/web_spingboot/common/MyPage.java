package com.web.web_spingboot.common;

import lombok.Data;


@Data
public class MyPage<T> {
    private Integer total;
    private T list;
}
