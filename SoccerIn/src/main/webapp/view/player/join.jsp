<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*check는 비밀번호 확인을 진행했는지 체크하는 변수입니다.*/
	var check = false;
	
	/*checkNull()은 필수 입력란에 값이 없는지 확인하고 check변수값을 확인 합니다.*/
	function checkNull(){
		var f = document.JoinForm;
		if(f.id.value==""){
			alert("아이디를 입력하세요.");
			return false;
		} else if(f.pwd.value==""){
			alert("패스워드를 입력하세요.");
			return false;
		} else if(!check){
			alert("패스워드 확인을 하세요.");
			return false;
		} else if(f.p_name.value==""){
			alert("이름을 입력하세요.");
			return false;
		} else if(f.p_email.value==""){
			alert("이메일을 입력하세요.");
			return false;
		} else if(f.p_addr.value==""){
			alert("주소를 입력하세요.");
			return false;
		}
		f.submit();
	}
	/*checkPwd()메소드는 pwd와 pwdCheck의 값이 같은지 확인합니다. 
		확인한 후 같다면 check변수의 값을 변동시킵니다.*/
	function checkPwd(){
		var pwd = document.JoinForm.pwd.value;
		var pwdCheck = document.JoinForm.pwdCheck.value;
		
		if(pwd != pwdCheck){
			alert("비밀번호가 서로 다릅니다.");
			document.JoinForm.pwdCheck.value = "";
			return false;
		} else {
			alert("비밀번호 확인 완료.");
			check = true;
		}
	}
	
	function dupId(){
		alert("Id가 중복되었습니다.")
	}
</script>
<link href="${pageContext.request.contextPath}/view/player/css/joinCss.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="/view/home/header.jsp"></jsp:include>
		<div id = "back">
		<div id= "header"></div>
		<div id= "title">
			<p><b>회원가입</b></p>
		</div>
		<div id= "100">
			<div id="join_card">
				
				<div id= "content">
				<form name="JoinForm" method="post"
					action="${pageContext.request.contextPath }/CheckDuplicatedIdController">
					<table id= "table" >
						<tr id = "headline">
							<th id= "th">ID </th>
							<td><input type= "text" name= "id"> </td>
						</tr>
						<tr id = "headline">
							<th id= "th">pwd </th>
							<td><input type= "password" name= "pwd"> </td>
						</tr>
						<tr id = "headline">
							<th id= "th">pwd확인</th>
							<td><input type="password" name="pwdCheck"></td>
							<td><input type="button" value="체크" onclick="return checkPwd()"></td>
						</tr>
						<tr>
						
						</tr>
						<tr id = "headline">
							<th id= "th">name</th>
							<td><input type="text" name="p_name"></td>
						</tr>
						<tr id = "headline">
							<th id= "th">email</th>
							<td><input type="email" name="p_email"></td>
						</tr>
						<tr id = "headline">
							<th id= "th">address</th>
							<td><input type="text" name="p_addr"></td>
						</tr>
					</table>
					<hr>
					<div id= "join_bottom">
						<input type="button" value="다음" onclick="return checkNull()"> 
						<input type="reset" value="취소">
					</div>	
					
				</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>