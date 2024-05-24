package com.web.web_spingboot.service.serviceImpl;

import com.web.web_spingboot.entity.Meeting;
import com.web.web_spingboot.mapper.MeetingMapper;
import com.web.web_spingboot.service.MeetingService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory; // 导入日志工具类
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MeetingServiceImpl implements MeetingService {

    private final MeetingMapper meetingMapper;

    // 初始化日志对象
    private static final Logger logger = LoggerFactory.getLogger(MeetingServiceImpl.class);

    @Autowired
    public MeetingServiceImpl(MeetingMapper meetingMapper) {
        this.meetingMapper = meetingMapper;
    }

    @Override
    public List<Meeting> getAllMeetings() {
        return meetingMapper.getAllMeetings();
    }

    @Override
    public Meeting getMeetingById(int id) {
        return meetingMapper.getMeetingById(id);
    }

    @Override
    public boolean updateMeeting(int id, Meeting updatedMeeting) {
        updatedMeeting.setId(id);
        boolean isUpdated = meetingMapper.updateMeeting(updatedMeeting) > 0;

        // 记录日志
        if (isUpdated) {
            logger.info("Meeting with id {} updated successfully", id);
        } else {
            logger.warn("Failed to update meeting with id {}", id);
        }

        return isUpdated;
    }
}
