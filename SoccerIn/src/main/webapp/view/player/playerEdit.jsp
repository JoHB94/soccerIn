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
		var f = document.EditForm;
		if(f.pwd.value==""){
			alert("패스워드를 입력하세요.");
			return false;
		} else if(!check){
			alert("패스워드 확인을 하세요.");
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
		var pwd = document.EditForm.pwd.value;
		var pwdCheck = document.EditForm.pwdCheck.value;
		
		if(pwd != pwdCheck){
			alert("비밀번호가 서로 다릅니다.");
			document.EditForm.pwdCheck.value = "";
			return false;
		} else {
			alert("비밀번호 확인 완료.");
			check = true;
		}
	}
	
</script>
</head>

<body>
	<h3>회원정보 수정</h3>
	<form name= "EditForm" method= "post" action= "${pageContext.request.contextPath }/PlayerEditController" enctype="multipart/form-data">
		<table border= "1">
			<tr>
				<td>Id</td>
				<td>${requestScope.p.id }</td>
			</tr>
			<tr>
				<td>pwd</td>
				<td><input type= "password" name="pwd" > </td>
			</tr>
			<tr>
				<td>pwd확인</td>
				<td><input type= "password" name="pwdCheck" > </td>
				<td><input type="button" value="패스워드 확인" onclick="return checkPwd()"/></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type= "text" name="p_addr" value= "${requestScope.p.p_addr }"> </td>
			</tr>
			<tr>
				<td>email</td>
				<td><input type= "email" name="p_email" value= "${requestScope.p.p_email }"> </td>
			</tr>
			
			<tr>
			<td>생년월일</td>
			<td><input type= "date" name= "birth" value= "${requestScope.p.birth }"> </td>
		</tr>
		<tr>
			<td>신장</td>
			<td><input type= "number" name= "height" value= "${requestScope.p.height }"> </td>
		</tr>
		<tr>
			<td>체중</td>
			<td><input type= "number" name= "weight" value= "${requestScope.p.weight }"> </td>
		</tr>
		<tr>
			<td>포지션</td>
			<td>
				<select name= "position">
					<option value="NO">선택 안함</option>
					<option value="FW">공격수</option>
					<option value="MF">미드필더</option>
					<option value="DF">수비수</option>
					<option value="GK">골키퍼</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>주력</td>
			<td>
				<select name= "speed">
					<option value= "0">선택 안함</option>
					<option value= "5">매우빠름</option>
					<option value= "4">빠름</option>
					<option value= "3">보통</option>
					<option value= "2">느림</option>
					<option value= "1">매우느림</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>프로필 사진</td>
			<td><input type= "file" name= "profile"> </td>
		</tr>
		<tr>
			<td>자기소개</td>
			<td><textarea rows="15" cols="45" name= "p_intro" >
				${requestScope.p.p_intro }
			</textarea> </td>
		</tr>
		<tr>
			<td>이적시장 등록여부</td>
			<td>등록<input type= "radio" name= "onMarket" value= "1" >
				거절<input type= "radio" name= "onMarket" value= "0" > </td>
		</tr>
		<tr>*이적시장 등록시 구단에서 귀하의 정보를 열람할 수 있습니다.*</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정" onclick="return checkNull()">
				
			</td>
		</tr>
		
		</table>
		<input type= "hidden" name= "p_name" value= "${requestScope.p.p_name }" > 
	</form>
</body>
</html>