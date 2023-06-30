package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex08")
public class Ex08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		int kor_Int = Integer.parseInt(request.getParameter("kor"));
		int eng_Int = Integer.parseInt(request.getParameter("eng"));
		int math_Int = Integer.parseInt(request.getParameter("math"));
		
		int sum = kor_Int + eng_Int + math_Int;
		int avg = sum / 3;
		String hak;
		if (avg>= 90) {
			hak = "A학점";
		}else if (avg>= 80) {
			hak = "B학점";
		}else if (avg>= 70) {
			hak = "C학점";
		}else if (avg>= 60) {
				hak = "D학점";
		}else {
			hak = "F학점";
		}
		
		out.println("<h2>" + name + "님의 총점 : " + sum + "</h2>");
		out.println("<h2>" + name + "님의 평균 : " + avg + "</h2>");
		out.println("<h2>" + name + "님의 학점 : " + hak + "</h2>");
	}

}
