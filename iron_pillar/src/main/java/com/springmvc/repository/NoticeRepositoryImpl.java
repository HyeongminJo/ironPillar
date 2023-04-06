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
	public List<Notice> getAllNoticeList() {
		String SQL = "SELECT * FROM Notice order by wNum desc";
		List<Notice> listOfNotices = template.query(SQL, new NoticeRowMapper());
		this.noticeList = listOfNotices;
		return listOfNotices;
	}

	@Override
	public void setNewNotice(Notice notice) {
		String sql = "insert into Notice (writer, wTitle, wDescription, wDate) values(?,?,?,?)";
		template.update(sql, notice.getWriter(), notice.getwTitle(), notice.getwDescription(), notice.getwDate());
	}

	@Override
	public Notice getNoticeBywNum(int wNum) {
		List<Notice> notices = getAllNoticeList();
		for (Notice notice : notices) {
			if (notice.getwNum() == wNum) {
				return notice;
			}
		}
		return null;
	}

	@Override
	public List<Map<String, Object>> noticeList(Criteria cri) throws Exception {
		int pageStart = (cri.getPage() - 1) * cri.getPerPageNum();
		int perPageNum = cri.getPerPageNum();
		String sql = "SELECT * FROM Notice ORDER BY wNum DESC LIMIT ?,?";
		List<Map<String, Object>> list = template.queryForList(sql, new Object[] { pageStart, perPageNum });
		return list;
	}

	@Override
	public int noticeListCnt() throws Exception {
		String sql = "SELECT COUNT(*) FROM Notice";
		int cnt = template.queryForObject(sql, Integer.class);
		return cnt;
	}

}
