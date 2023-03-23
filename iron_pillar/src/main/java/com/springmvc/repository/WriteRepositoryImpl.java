package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Member;
import com.springmvc.domain.Write;

@Repository
public class WriteRepositoryImpl implements WriteRepository 
{
	private JdbcTemplate template;
	
	public List<Write> writeList = new ArrayList<Write>();
	
	@Autowired
	public void setJdbctemplate(DataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Write> getAllWriteList() 
	{
		String SQL = "SELECT * FROM writetable";
		List<Write> listOfWrites = template.query(SQL, new WriteRowMapper());
		this.writeList = listOfWrites;
		return listOfWrites;
	}

	@Override
	public void setNewWrite(Write write) 
	{
		String memberSql = "update member set memberLevel=? where memberNick=?";
		template.update(memberSql, write.getMemberLevel(), write.getMemberId());
		String writeSql = "insert into writetable (writeTitle, writeImage, writeText, writeWriter, writeWriterLevel) values(?, ?, ?, ?, ?)";
		template.update(writeSql, write.getWriteTitle(), write.getWriteImageName(), write.getWriteText(), write.getMemberId(), write.getMemberLevel());
		String sql = "select * from member where memberNick=?";
		Member member = template.queryForObject(sql, new MemberRowMapper(), write.getMemberId());
		System.out.println(member.getMemberId() + member.getMemberPw() + member.getMemberNick());
		
	}

}
