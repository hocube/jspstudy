package com.jsp.model;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Ex10_1_Model implements Command{
@Override
public String exec(HttpServletRequest request, HttpServletResponse response) {
	// 선택한 과일을 장바구니에 담자
	String fruits = request.getParameter("fruits");
	HttpSession ss = request.getSession(); //세선(HttpSession ss)을 불러오자.
	
	// 처음에만 ArrayList를 만들고 두번째부터는 담기만 함.
	
	// 과일을 list에 담자!
	// 과일을 담아야 하지만 크기를 알 수 없으니 배열에는 못 담고, ArrayList에 담기
	ArrayList<String> list = 
			(ArrayList<String>)ss.getAttribute("list");
	
	// 맨처음에 해당 페이지로 오면 당연히 session에는 list가 없다.
	// 싱글톤 패턴
	// 너 처음 왔어? 그럼 만들어! 두번째 부터는 만들 필요 없음!
	// 두번째 올 때부터는 여기를 안 거치고 바로 밑으로 가서 list에 과일을 담음.
	if(list == null) { //맨처음 부른 놈. 맨 처음 부를 때만 null이니깐. 두번째부터는 null없음
		list = new ArrayList<>();
		//저장
		ss.setAttribute("list", list);
	}
	
	// 리스트에 선택된 과일을 추가
	list.add(fruits);

	// 리스트에는 과일이 담겨져있고, 리스트는 세션에 담겨져있음.
	// 세션은 한 개임. 
	
	
	return "view/ex10_session_cart.jsp";
}
}
