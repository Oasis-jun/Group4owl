package com.web.web_spingboot.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class Message {
    private Integer id;
    private Integer senderId;
    private String senderUserName;
    private String receiverId;
    private String receiverName;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime sendTime;
    private String title;
    private String content;
}
