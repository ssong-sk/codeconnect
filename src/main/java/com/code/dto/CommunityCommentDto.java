package com.code.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
@Alias("CommunityCommentDto")
public class CommunityCommentDto {

    private int cc_idx;
    private int cc_num; // FK-게시글 번호(com_num)
    private String cc_user_id;
    private String cc_nickname;
    private String cc_content;
    private int cc_likes;
    
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm")
    private Timestamp cc_writetime;
    private Timestamp cc_updatetime;
    
}
