package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.MVO;

public class MyModel08 implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// DB가서 Members 테이블의 전체 정보 가져오기
		List<MVO> list = DAO.membersList();
		
		// 나오는지 찍어보기. 
		// System.out.println(list.get(0).getM_name());
		
		// xml, json, text로 만들어서 controller로 넘어가자
		StringBuffer sb = new StringBuffer();
		
		//xml은 첫줄에 무조건 이게 와야함. mapper에서 복사해오면 됨. < > 이거까지 잘 가지고 와야 함!
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<members>");
		for (MVO k : list) {
			sb.append("<member>");
			sb.append("<idx>" + k.getM_idx() + "</idx>");				
			sb.append("<id>" + k.getM_id() + "</id>");				
			sb.append("<pw>" + k.getM_pw() + "</pw>");				
			sb.append("<name>" + k.getM_name() + "</name>");				
			sb.append("<age>" + k.getM_age() + "</age>");				
			sb.append("<reg>" + k.getM_reg().substring(0,10) + "</reg>");				
			sb.append("</member>");
		}
		sb.append("</members>");
		return sb.toString();
	}
}
