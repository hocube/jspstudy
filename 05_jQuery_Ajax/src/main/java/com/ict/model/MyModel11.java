package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.MVO;

public class MyModel11 implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MVO mvo = new MVO();
		mvo.setM_id(request.getParameter("m_id"));
		mvo.setM_pw(request.getParameter("m_pw"));
		mvo.setM_name(request.getParameter("m_name"));
		mvo.setM_age(request.getParameter("m_age"));
		
		// 성공하면 1, 실패하면 0
		int result = DAO.membersInsert(mvo);
		return String.valueOf(result);
	}
}
