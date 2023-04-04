package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Criteria;
import com.springmvc.domain.Notice;

@Repository
public class NoticeRepositoryImpl implements NoticeRepository 
{
	private JdbcTemplate template;

	public List<Notice> noticeList = new ArrayList<Notice>();

	@Autowired
	public void setJdbctemplate(DataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Notice> getAllWriteList() {
		String SQL = "SELECT * FROM NoticeWrite order by wNum desc";
		List<Notice> listOfWrites = template.query(SQL, new NoticeRowMapper());
		this.noticeList = listOfWrites;
		return listOfWrites;
	}

	@Override
	public void setNewWrite(Notice write) {
		String sql = "insert into NoticeWrite (wTitle, wDescription)" + "values(?,?)";
		template.update(sql, write.getwTitle(), write.getwDescription());
	}

	@Override
	public Notice getWriteBywNum(int wNum) {
		List<Notice> writes = getAllWriteList();
		for (Notice write : writes) {
			if (write.getwNum() == wNum) {
				return write;
			}
		}
		return null;
	}

	@Override
	public List<Map<String, Object>> noticeList(Criteria cri) throws Exception {
		int pageStart = (cri.getPage() - 1) * cri.getPerPageNum();
		int perPageNum = cri.getPerPageNum();
		String sql = "SELECT * FROM NoticeWrite ORDER BY wNum DESC LIMIT ?,?";
		List<Map<String, Object>> list = template.queryForList(sql, new Object[] { pageStart, perPageNum });
		return list;
	}

	@Override
	public int noticeListCnt() throws Exception {
		String sql = "SELECT COUNT(*) FROM NoticeWrite";
		int cnt = template.queryForObject(sql, Integer.class);
		return cnt;
	}

}
