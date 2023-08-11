<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>

	<c:if test="${not empty requestScope.failScout }">
		<h3>${requestScope.failScout}</h3>
	</c:if>
<jsp:include page="/view/home/footer.jsp"></jsp:include>
</body>
</html>