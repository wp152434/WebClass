<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>첫번째 JSP</title>
</head>
<body>
<%! private static final String DEFAULT_NAME = "Guest"; %>
<%
	// 자바 코드를 그대로 작성
	String name = request.getParameter("name");
	if(name == null) name = DEFAULT_NAME;
	//out.println("<h1>Hello, " + name + "</h1>");
%>
<%-- 5. 표현식 tag (주의) 세미콜론 찍지 말기 --%>
<h1>Hello, <%= name.toUpperCase() %></h1>
</body>
</html>