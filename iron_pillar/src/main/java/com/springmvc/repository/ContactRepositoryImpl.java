package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Contact;
import com.springmvc.domain.Criteria;

@Repository
public class ContactRepositoryImpl implements ContactRepository 
{
	private JdbcTemplate template;
	
	public List<Contact> contactList = new ArrayList<Contact>();
	
	@Autowired
	public void setJdbctemplate(DataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}
	
	public List<Contact> getAllWriteList()
	{
		String SQL = "SELECT * FROM ContactWrite order by wNum desc";
		List<Contact> listOfWrites = template.query(SQL, new ContactRowMapper());
		this.contactList = listOfWrites;
		return listOfWrites;
	}
	
	public void setNewWrite(Contact write)
	{	
		String sql = "insert into ContactWrite (wTitle, wImageName, wDescription)" +  "values(?, ?, ?)";
		template.update(sql, write.getwTitle(), write.getwImageName(), write.getwDescription());
	}

	@Override
    public Contact getWriteBywNum(int wNum) {
        List<Contact> writes = getAllWriteList();
        for (Contact write : writes) {
            if (write.getwNum() == wNum) {
                return write;
            }
        }
        return null;
    }
	public List<Map<String, Object>> contactList(Criteria cri) throws Exception {
	    int pageStart = (cri.getPage() - 1) * cri.getPerPageNum();
	    int perPageNum = cri.getPerPageNum();
	    String sql = "SELECT * FROM ContactWrite ORDER BY wNum DESC LIMIT ?,?";
	    List<Map<String, Object>> list = template.queryForList(sql, new Object[]{pageStart, perPageNum});
	    return list;
	}
	public int contactListCnt() throws Exception {
	    String sql = "SELECT COUNT(*) FROM ContactWrite";
	    int cnt = template.queryForObject(sql, Integer.class);
	    return cnt;
	}
}
