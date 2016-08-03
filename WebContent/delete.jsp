<%@page import="kr.ac.sungkyul.guestbook.dao.GuestbookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("id");
	String password = request.getParameter("password");
	
	System.out.println(no + "    " + password);

	GuestbookVo vo = new GuestbookVo();
	GuestbookDao dao = new GuestbookDao();
	
	boolean resert = dao.delete(no, password);

	response.sendRedirect("http://localhost:8088/guestbook/index.jsp");
%>
