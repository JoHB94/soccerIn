<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function a() {
		var flag = confirm("정말 삭제하시겠습니까?");
		if (flag) {
			document.f.action = "${pageContext.request.contextPath}/seller/Del?num=${p.num}";
			document.f.submit();
		} else {
			alert("삭제가 취소되었습니다.");
		}
	}
	function addComments(){
		document.f.action = "${pageContext.request.contextPath}/ComAddController";
		document.f.submit();
	}
</script>
</head>
<body>
	<form name="f" action="${pageContext.request.contextPath }/seller/Edit"
		method="post">
		<table border="1">
			<tr>
				<th>상품명</th>
				<td><input type="text" value="${p.name }" name="name"></td>
			</tr>

			<tr>
				<th>가격</th>
				<td><input type="text" value="${p.price }" name="price"></td>
			</tr>

			<tr>
				<th>수량</th>
				<td><input type="text" value="${p.quantity }" name="quantity"></td>
			</tr>

			<tr>
				<th>상품 이미지</th>
				<td>${p.img }<br> <img src="${p.img}" width="300"
					height="300" />
				</td>
			</tr>

			<tr>
				<th>상품 상세 설명</th>
				<td><input type="text" value="${p.content }" name="content"></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="수정"> <input
					type="button" value="삭제" onclick="a()"></td>
			</tr>

			<tr>
				<c:forEach var="c" items="${comments }">
					<tr>
						<td colspan="2">${c.content }</td>
					</tr>
				</c:forEach> 
			<tr>
				<td colspan="2">
				<input type="text" name= "comments" size="45">
				<input type= "button" value= "작성" size="45" onclick="addComments()"> 
				</td>
			</tr>

		</table>
		<input type="hidden" name="num" value="${p.num }">
	</form>
</body>
</html>