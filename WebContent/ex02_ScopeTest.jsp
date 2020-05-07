<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>

</style>
<script type="text/javascript"></script>
</head>
<body>
requestScope 영역 <br>
주소: <%=request.getAttribute("addr") %> / ${requestScope.addr } / ${addr }<p>

sessionScope 영역<br>
아이디: <%=session.getAttribute("id") %> / ${sessionScope.id } / ${id }<br>
메시지: <%=session.getAttribute("message") %> / ${sessionScope.message } / ${message }<p>

applicationScope 영역<br>
메시지: <%=application.getAttribute("message") %> / ${applicationScope.message } / ${message }<br>
취미: <%=application.getAttribute("hobby") %> / ${applicationScope.hobby } / ${hobby }<br>
</body>
</html>