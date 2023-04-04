package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Reply;

@Repository
public class ReplyRepositoryImpl implements ReplyRepository 
{
	private JdbcTemplate template;

	public List<Reply> replyList = new ArrayList<Reply>();

	@Autowired
	public void setJdbctemplate(DataSource dataSource) 
	{
		this.template = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Reply> getAllReplyList() {
		String SQL = "SELECT * FROM Reply";
		List<Reply> listOfReplys = template.query(SQL, new ReplyRowMapper());
		this.replyList = listOfReplys;
		return listOfReplys;
	}

	@Override
	public void setNewReply(Reply reply) {
		String sql = "INSERT INTO Reply (wNum, content)" + "VALUES (?, ?)";
	    template.update(sql, reply.getwNum(), reply.getContent());
	}

	@Override
	public Reply getReplyBywNum(int wNum) {
	    List<Reply> replys = getAllReplyList();
	        for (Reply reply : replys) {
	            if (reply.getwNum() == wNum) {
	                return reply;
	            }
	        }
	        return null;
	    }

	@Override
	public List<Reply> getReplyListBywNum(int wNum) {
	    String SQL = "SELECT * FROM Reply WHERE wNum = ?";
	    List<Reply> replyList = template.query(SQL, new ReplyRowMapper(), wNum);
	    return replyList;
	}
}
