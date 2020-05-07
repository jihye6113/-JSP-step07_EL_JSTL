<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
response.setHeader("Cache-Control","no-store");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style ></style>
<script src="../js/jquery-3.4.1.min.js"></script>
<script>
	$(function(){
		// 로그아웃 버튼 클릭
		$("input[type=button]").click(function(){
			if(confirm("정말 로그아웃 하시겠습니까?")){
				location.href="Logout.jsp";
			}
		});
	})
</script>
</head>
<body>
<c:choose>
	<c:when test="${empty sessionScope.sessionName }">
		<script type="text/javascript">
			alert("로그인하고 이용해주세요");
			location.href="LoginForm.html";
		</script>
	</c:when>
	<c:otherwise>
		<h3>
			[접속시간: ${sessionTime}]<p>
			${sessionName }님 로그인 되었습니다.<p>
			<img src="images/common.jpg"/>
			<input type="button" value="로그아웃"/>
		</h3>
	</c:otherwise>
</c:choose>

<%-- <%

	Object sessionName = session.getAttribute("sessionName");
	
	long time = session.getCreationTime();
	
	if(sessionName == null){
		%>
		<script type="text/javascript">
			alert("로그인하고 이용해주세요");
			location.href="LoginForm.html";
		</script>
		<%
		} else{
			%>
			<h3>
			[접속시간: <%=session.getAttribute("sessionTime") %>]<p>
			<%=sessionName %>님 로그인 되었습니다.<p>
			<img src="images/common.jpg"/>
			<input type="button" value="로그아웃"/>
			</h3>
			<%
		}
		%> --%>

</body>
</html>