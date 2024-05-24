package com.web.web_spingboot.mapper;

import com.web.web_spingboot.entity.Meeting;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface MeetingMapper {

    @Select("SELECT * FROM meeting")
    List<Meeting> getAllMeetings();

    @Select("SELECT * FROM meeting WHERE id = #{id}")
    Meeting getMeetingById(int id);

    @Update("UPDATE meeting SET date = #{date}, time = #{time}, topic = #{topic}, speaker = #{speaker} WHERE id = #{id}")
    int updateMeeting(Meeting meeting);
}
