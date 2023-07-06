package com.jsp.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 장바구니 보기
public class Ex10_2_Model implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	// 이미 세션에 들어가있기 때문에 할게 없음.
	return "view/ex10_session_result.jsp";
}
}
