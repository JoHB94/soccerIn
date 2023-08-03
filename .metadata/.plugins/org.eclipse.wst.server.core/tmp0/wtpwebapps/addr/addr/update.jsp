<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkInsert(r){
		
		if(r.name.value==""){
			alert("이름을 입력하세요.");
			r.name.focus();
			return false;
		}
		if(r.tel.value==""){
			alert("전화번호를 입력하세요.");
			r.tel.focus();
			return false;
		}
		if(r.addr.value==""){
			alert("주소를 입력하세요.");
			r.addr.focus();
			return false;
		}
		if(r.postal.value==""){
			alert("우편번호를 입력하세요.");
			r.postal.focus();
			return false;
		}
		r.submit();
	}
</script>
</head>
<body>
<%
	Member m =(Member)request.getAttribute("m");
%>

<form method="post" action="<%=request.getContextPath()%>/Control?num=<%=m.getNum()%>">
<input type="hidden" name="type" value="edit">
	<table>
		<tr>
			<td>이름:<input type="text" name="name" value="<%=m.getName() %>"></td>
		</tr>
		<tr>
			<td>전화번호:<input type="text" name="tel" value="<%=m.getTel() %>"></td>
		</tr>
		<tr>
			<td>주소:<input type="text" name="addr" value="<%=m.getAddress() %>"></td>
		</tr>
		<tr>
			<td>우편번호:<input type="text" name="postal" value="<%=m.getPostal() %>"></td>
		</tr>
	</table>

	<input type="submit" value="수정">
</form>
</body>
</html>