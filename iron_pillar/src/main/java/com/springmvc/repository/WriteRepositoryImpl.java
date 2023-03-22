package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

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
		String sql = "insert into writetable (writeTitle, writeImage, writeText) values(?, ?, ?)";
		template.update(sql, write.getWriteTitle(), write.getWriteImageName(), write.getWriteText());
	}

}
