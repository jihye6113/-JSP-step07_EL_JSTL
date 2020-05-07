<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<h1>&lt;c:if>, &lt;c:choose> TEST</h1>

<!-- 
	http://localhost:8888/step07_EL_JSTL/ex04_if_choose.jsp?age=20
 -->
 <c:if test="${param.age>18}" var="re">
 	<h3>${param.age}살은 성인입니다.</h3>
 </c:if>
 
 결과: ${re}
 
 <c:choose>
 	<c:when test="${param.age>18}">
 		<h3 style="color:blue">${param.age}살은 성인입니다.</h3>
 	</c:when>
 	<c:otherwise>
 		<h3 style="color:red">${param.age}살은 미성년자입니다.</h3>
 	</c:otherwise>
 </c:choose>
 
 <hr color="green">
 <form action="ex04_if_choose.jsp" method="get" name="f"> <!-- 넘어가는 값 내용 확인하기 위해 get 방식 사용 -->
 	이름: <input type="text" name="name" value="${param.name }"><br>
 	선택:
 	<select name="job">
 		<option value="0">--선택--</option>
 		<option value="학생">학생</option>
 		<option value="개발자">개발자</option>
 		<option value="공주">공주</option>
 	</select>
 	
 	<input type="submit" value="전송"/>
 </form>
 
 
 	<c:if test="${not empty param.name and param.job != null}">
 	<h3>${param.name}님 직업은 ${param.job}입니다.</h3>
 	</c:if>
 
 <!-- 
 	1) job의 종류에 따른 메시지 출력하기
 	학생: "공부하세요"
 	개발자: "최고의 개발자가 되세요"
 	공주: "공주공주공주"
 	위 경우가 아닌 경우 "선택사항 없음"
 	
 	2) 이름과 직업이 전송되면 각 폼에 선택된 내용이 그대로 보이기
  -->
  <c:if test="${not empty param.name and param.job != null}">
	  <c:choose>
	  	<c:when test="${param.job == '학생'}">
	  		<h3>${param.name }님 직업은 ${param.job }이기에 공부하세요.</h3>
	  	</c:when>
	  	<c:when test="${param.job == '개발자'}">
	  		<h3>${param.name }님 직업은 ${param.job }이기에 최고의 개발자가 되세요.</h3>
	  	</c:when>
	  	<c:when test="${param.job == '공주'}">
	  		<h3>${param.name }님 직업은 ${param.job }이기에 공주공주공주.</h3>
	  	</c:when>
	  	<c:otherwise>
	  		<h3>${param.name }님 직업을 표시하지 않았기에 선택사항 없음.</h3>
	  	</c:otherwise>
	  </c:choose>
  </c:if>
  
  <script type="text/javascript">
  	document.f.job.value="${param.job}"  	
  	// $("select[name=job]").val("${param.job}")
  </script>

</body>
</html>