<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h2 align = "center">점수 결과 화면</h2>

	
<c:forEach var="vo" items ="${list }" varStatus="num">
	
				
				번호 : ${vo.num},
				이름 : ${vo.name},
				국어 : ${vo.kor},
				수학 : ${vo.eng},
				영어 : ${vo.math}
<button type = "button"  onclick ="location.href = 'scoreDelete?num=${vo.num}'">삭제</button><br>
	</c:forEach>
	
	<script>
	(function(){
		if('${num}' !== ''){
			alert('${num}' + "가 삭제되었습니다.");
		}
	})()
	</script>
	
</body>
</html>