package com.multicampus.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.multicampus.biz.user.UserDAO;
import com.multicampus.biz.user.UserVO;
import com.multicampus.view.controller.Controller;

public class InsertUserController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("����� ��� ��� ó��");
		
		// 1. ����� �Է����� ����
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String role = request.getParameter("role");
		
		// 2. DB ���� ó��
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setName(name);
		vo.setRole(role);
		
		UserDAO userDAO=new UserDAO();
		userDAO.insertUser(vo);
		
		// 3. ȭ�� �׺���̼�
		return "login.html";
	}

}
