<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<form name="x" method="post" action="<%=request.getContextPath()%>/Control?type=insert">
	<table>
		<tr>
			<td>이름:<input type="text" name="name"></td>
		</tr>
		<tr>
			<td>전화번호:<input type="text" name="tel"></td>
		</tr>
		<tr>
			<td>주소:<input type="text" name="addr"></td>
		</tr>
		<tr>
			<td>우편번호:<input type="text" name="postal"></td>
		</tr>
	</table>

	<input type="button" onclick="checkInsert(this.form)" value="주소입력">
</form>
</body>
</html>