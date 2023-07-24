package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;

public class MyModel09 implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// ajax에서 넘어온 파라미터 값을 받자
		String m_idx = request.getParameter("m_idx");
		//System.out.println("m_idx : " + m_idx);
		int result = DAO.membersDelete(m_idx);
		return String.valueOf(result);
	}
}
