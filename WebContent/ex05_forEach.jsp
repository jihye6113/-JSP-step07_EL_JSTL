<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
table{
	width: 500px;
	border: 5px double orange;
	border-collapse: collapse;
}

th, td{
	border: 1px solid olive; padding: 5px; text-align: center;
}
th{
	background-color: green;
	color: white
}
</style>
<script type="text/javascript"></script>
</head>
<body>
<h1> &lt;c:forEach> TEST</h1>
<c:forEach begin="1" end="10" var="i">
	i,
</c:forEach><br>
<c:forEach begin="1" end="10" var="i">
	${i}, 
</c:forEach>
<hr color="green">

<%
	String hobbys [] = {"등산", "수영", "낚시", "골프"};
%>
<c:forEach items ="<%=hobbys %>" var="h" varStatus="state">
	${h} / ${state.index} / ${state.count}<br>
</c:forEach>

<hr color="green">
<jsp:useBean id="bean" class="ex0414.jstl.ForEachBean"/>

<!-- names는 select 박스로 출력 -->
<select>
	<option>--이름선택--</option>
	<c:forEach items="${bean.names}" var="name"> <!-- getNames() 호출 -->
		<option value="${name}">${name}</option>
	</c:forEach>
</select><br>

<p>
<!-- menus는 checkbox 출력 -->
<fieldset>
	<legend>메뉴선택</legend>
	<c:forEach items="${bean.menus}" var="menu" varStatus="state">
	<input type="checkbox" name="${menu}" value="${state.count}"/>${menu}
</c:forEach>
</fieldset><br>

<p>
<!--  memberList는 테이블로 출력 -->
<table style="border: 1px solid">
	<tbody>
	<tr><th>번호</th><th>아이디</th><th>나이</th><th>주소</th><th>연락처</th></tr>
	<c:forEach items="${bean.memberList}" var="memberList" varStatus="state">
		<tr><td>${state.count}</td><td>${memberList.id}</td><td>${memberList.age}</td><td>${memberList.addr}</td><td>${memberList.phone}</td></tr><!-- ${memberList.id}: member.getId() 호출 -->
	</c:forEach>
	</tbody>
</table><br>

<p>
<!-- map은 radio 박스로 출력 -->
<c:forEach items="${bean.map}" var="map">
	<input type="radio" name ="nation" value="${map.key}"/>${map.key}: ${map.value}
</c:forEach><br>

<hr color="green">
가격: 252540000원 / 
<fmt:formatNumber value="252540000"/>원
</body>
</html>