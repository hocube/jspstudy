package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class MyModel03 implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 실제 db 일처리
		List<VO> list = DAO.getList();

		// 받은 정보로 xml을 만들자
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<members>");
		for (VO k : list) {
			sb.append("<member ");
			sb.append(" idx=\"" + k.getIdx() + "\"");
			sb.append(" m_id=\"" + k.getM_id() + "\"");
			sb.append(" m_pw=\"" + k.getM_pw() + "\"");
			if(k.getM_reg() != null) {
				sb.append(" m_reg=\"" + k.getM_reg().substring(0,10) + "\"");				
			}else {
				sb.append(" m_reg=''");				
			}
			sb.append(" >" + k.getM_addr2() + "</member>");
		}
		sb.append("</members>");

		// 일반적인 MVC에서는 View 경로를 작성하지만, ajax에서는 만들어진 정보를 전달한다.
		return sb.toString();
	}
}
