<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	function checkInsert(r){
		if(r.pname==""){
			alert("제품명을 입력!");
			r.pname.focus();
			return false;
		}
		if(r.pmaker==""){
			alert("회사명을 입력!");
			r.pmaker.focus();
			return false;
		}
		if(r.pprice==""){
			alert("가격을 입력!");
			r.pprice.focus();
			return false;
		}
		if(r.pdetail==""){
			alert("세부사항을 입력!");
			r.pdetail.focus();
			return false;
		}
		r.submit();
	}
</script>
</head>
<body>
 <form name="insertForm" method="post" action="<%=request.getContextPath()%>/control?type=insert">
 	<table>
 		
		<tr><td>제품 명:<input type="text" name="pname"></td></tr>
		<tr><td>회사 명:<input type="text" name="pmaker"></td></tr>
		<tr><td>가  격:<input type="text" name="pprice"></td></tr>
		<tr><td>세부사항:<input type="text" name="pdetail"></td></tr>
 		
 	</table>
 	<input type="button" value="입력" onclick="checkInsert(this.form)">
 </form>

</body>
</html>