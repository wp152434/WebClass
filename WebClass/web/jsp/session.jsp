<%--
  User: choich
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SEEEEEEEESION</title>
</head>
<body>
    <%
        Integer cnt = (Integer) session.getAttribute("cnt");
        if (cnt == null) { %>
            <p>최초 호출</p>
    <%
            cnt = 0;
        }
        session.setAttribute("cnt", ++cnt);
    %>
    <h1>cnt : <%=cnt%></h1>
    <%=request.getHeader("Cookie")%>
</body>
</html>
