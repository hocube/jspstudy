package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.ShopVO;

public class ListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
			String category = request.getParameter("category");
			if(category == null || category == "") {
				category = "ele002";
			}
			List<ShopVO> list = DAO.getList(category); //카테고리에 맞는 리스를 가져오겠다.
			request.setAttribute("list", list);
		return "view/product_list.jsp";
	}
}
