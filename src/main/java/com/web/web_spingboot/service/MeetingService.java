package com.web.web_spingboot.service;

import com.web.web_spingboot.entity.Meeting;

import java.util.List;

public interface MeetingService {
    List<Meeting> getAllMeetings();
    Meeting getMeetingById(int id);
    boolean updateMeeting(int id, Meeting updatedMeeting);
}
