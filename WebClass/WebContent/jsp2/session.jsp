<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Integer cnt = (Integer)session.getAttribute("cnt");
	if(cnt == null) {
		out.println("최초 호출");
		cnt = 0;
	}
	session.setAttribute("cnt", ++cnt);
%>
<h1>cnt : ${cnt}</h1>
<br>
${ header.Cookie }
</body>
</html>