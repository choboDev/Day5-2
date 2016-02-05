package com.multicampus.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.multicampus.view.controller.Controller;

public class LogoutController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("�α׾ƿ� ��� ó��");
		
		// �α׾ƿ� ��û�� �������� ���ε� ������ ���� �����ϰ� ���� ȭ������ �̵�
		HttpSession session = request.getSession();
		session.invalidate();

		return "login.html";
	}

}
