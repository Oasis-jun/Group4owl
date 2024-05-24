package com.web.web_spingboot.controller;

import com.web.web_spingboot.entity.Meeting;
import com.web.web_spingboot.service.MeetingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class MeetingController {

    private final MeetingService meetingService;

    @Autowired
    public MeetingController(MeetingService meetingService) {
        this.meetingService = meetingService;
    }

    @GetMapping("/meetings")
    public List<Meeting> getAllMeetings() {
        return meetingService.getAllMeetings();
    }

    @PutMapping("/meetings/{id}")
    public boolean updateMeeting(@PathVariable int id, @RequestBody Meeting updatedMeeting) {

        return meetingService.updateMeeting(id, updatedMeeting);
    }
}
