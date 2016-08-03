<%@page import="kr.ac.sungkyul.guestbook.dao.GuestbookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");

	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);

	GuestbookDao dao = new GuestbookDao();

	boolean resert = dao.insert(vo);
	response.sendRedirect("http://localhost:8088/guestbook/index.jsp");
%>

