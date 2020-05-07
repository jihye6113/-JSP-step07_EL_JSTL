<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<h1>결과 확인</h1>
아이디: ${id } / ${session.id } <br>
메세지: ${message } / ${applicationScope.message }<br>
나이: ${age }

<h3>제거(삭제)하기</h3>
<c:remove var="message"/>

<h1>결과 확인하자</h1>
<h1>결과 확인</h1>
아이디: ${id } / ${session.id } <br>
메세지: ${message } / ${applicationScope.message }<br>
나이: ${age }
</body>
</html>