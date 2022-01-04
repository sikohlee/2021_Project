<%@page import="java.io.PrintWriter"%>
<%@page import="com.koreait.Service.RegisterDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="vo" class="com.koreait.Service.RegisterVO" scope="page"/>
<jsp:setProperty name="vo" property="userID" />
<jsp:setProperty name="vo" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
		String userID= request.getParameter("userID");
		RegisterDAO dao = new RegisterDAO();
		int result = dao.login(vo.getUserID(), vo.getUserPassword());
		if(result == 1){
			PrintWriter script = response.getWriter();
			session.setAttribute("userID", vo.getUserID());
			script.println("<script>");
			script.println("alert('로그인 성공')");
			script.println("location.href='sessionMain.jsp'");
			script.println("</script>");
		}else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류입니다')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>

</body>
</html>