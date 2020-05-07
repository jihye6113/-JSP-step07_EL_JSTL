<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="ex0413.el.Product"%>
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
<h1>EL - 표현언어 TEST</h1>
<h3>
\${5} = ${5} <br>
\${5+3} = ${5+3} <br>
\${5-2} = ${5-2} <br>
\${5 / 2} = ${5 / 2} <br> <!-- ${5 div 2}가능 -->
\${5 gt 3} = ${5 gt 3} <br>
\${5 gt 3 and 3 eq 3} = ${5 gt 3 and 3 eq 3} <br>

\${ 5 > 3 ? "맞다" : "틀리다" } = ${ 5 > 3 ? "맞다" : "틀리다" }<br><!-- 조건연산자 -->

<hr color="green">
<!-- 만약, 
http://localhost:8888/step07_EL_JSTL/ex01_ELTest.jsp?age=23
주소 뒤에 ?age=원하는 수 를 입력한다.
만약, age를 뜻하는 주소에 입력한 수가 18보다 크면 성인입니다. 아니면 미성년자입니다. 를 띄운다.
 -->
${param.age>18 ? "성인" : "미성년자"}<br>

<!-- 만약,
http://localhost:8888/step07_EL_JSTL/ex01_ELTest.jsp?age=23&id=bjhye
만약, id가 있다면 id님 출력하고 없으면 guest님 이라고 출력한다.
 -->
 ${param.id  == null ? "Guest" : param.id}님<br>
 ${empty param.id? "Guest" : param.id }님<p>
 
 ${param.id  != null ? param.id : "Guest"}님<br>
 ${not empty param.id ? param.id : "Guest"}님<p>
 
 ${not empty param.id ? param.id+="학생" : "Guest님"}<br>
 ${not empty param.id ? param.id.concat("학생") : "Guest님"}<p>
 
 Scope에 저장된 데이터 EL로 출력하기<p>
 <%
 	// scope 영역에 데이터 저장
 	request.setAttribute("addr", "서울");
 
 	session.setAttribute("id", "bjhye");
 	session.setAttribute("message", "졸려");
 
 	application.setAttribute("message", "하이루");
 	application.setAttribute("hobby", "놀고 먹기");
 	
 %>
requestScope 영역 <br>
주소: <%=request.getAttribute("addr") %> / ${requestScope.addr } / ${addr }<p>

sessionScope 영역<br>
아이디: <%=session.getAttribute("id") %> / ${sessionScope.id } / ${id }<br>
메시지: <%=session.getAttribute("message") %> / ${sessionScope.message } / ${message }<p>

applicationScope 영역<br>
메시지: <%=application.getAttribute("message") %> / ${applicationScope.message } / ${message }<br>
취미: <%=application.getAttribute("hobby") %> / ${applicationScope.hobby } / ${hobby }<p>

<a href="ex02_ScopeTest.jsp" >확인하러가자</a>
</h3>

<hr color="green">
<h3>
Product 객체 안에 있는 데이터 표현 언어로 출력하기<p>
<%-- <%
	Product p = new Product();
%> --%>
<jsp:useBean id="p" class="ex0413.el.Product" />

코드: <%=p.getCode() %> / ${p.code }<p> <!-- p.getCode() 호출 -->
이름: <%=p.getName() %> / ${p.name }<p>
가격: <%=p.getPrice() %> / ${p.price }<p>
수량: <%=p.getQty() %> / ${p.qty }<p>
총금액: <%=p.getPrice() * p.getQty() %> / ${p.price * p.qty }<p>
</h3>
</body>
</html>