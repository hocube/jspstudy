package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class MyModel05 implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일처리
		List<VO> list = DAO.getList();

		// 받은 정보로 json를 만들자
		StringBuffer sb = new StringBuffer();
		for (VO k : list) {
			sb.append(k.getIdx()+",");
			sb.append(k.getM_id()+",");
			sb.append(k.getM_pw()+",");
			sb.append(k.getM_addr2()+",");
			if(k.getM_reg() != null) {
				sb.append(k.getM_reg().substring(0,10)+"/");
			}else {
				sb.append("-/");
			}
		}
		sb.deleteCharAt(sb.length() - 1);

		// MVC에서는 View 경로를 작성하지만
		return sb.toString();
	}
}