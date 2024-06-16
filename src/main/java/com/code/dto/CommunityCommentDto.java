package com.code.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("CommunityCommentDto")
public class CommunityCommentDto {

	private int cc_num;
	private int cc_post_id;
	private String cc_user_id;
	private String cc_nickname;
	private String cc_content;
	private int cc_likes;
	private Timestamp cc_writetime;
	private Timestamp cc_updatetime;
	
}
