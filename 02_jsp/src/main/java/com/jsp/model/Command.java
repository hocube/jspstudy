package com.jsp.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
   public String exec(HttpServletRequest request, HttpServletResponse response);
   //기본으로 써주자.
   //이건 실행못해서 이걸 받아서 해주는 애가 따로 있다.
}