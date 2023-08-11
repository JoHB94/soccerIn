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
			<p><b>회원가입 상세</b></p>
		</div>
		<div id= "100">
			<div id="join_card">		
				<div id= "content">
				<form name="JoinForm" method="post"
					action="${pageContext.request.contextPath }/JoinController" enctype="multipart/form-data">
					<table id= "table" >
						<tr id = "headline">
							<th id= "th">생년월일 </th>
							<td><input type= "date" name= "birth"> </td>
						</tr>
						<tr id = "headline">
							<th id= "th">신장 </th>
							<td><input type= "number" name= "height"> </td>
						</tr>
						<tr id = "headline">
							<th id= "th">체중</th>
							<td><input type= "number" name= "weight"> </td>
						</tr>
						<tr id = "headline">
							<th id= "th">포지션</th>
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
						<tr id = "headline">
							<th id= "th">주력</th>
							<td>
								<select name= "speed">
									<option value= "0">선택 안함</option>
									<option value= "5">매우빠름</option>
									<option value= "4">빠름</option>
									<option value= "3">보통</option>
									<option value= "2">느림</option>
									<option value= "1">매우느림</option>
								</select>
							</td >
						</tr>
						<tr id = "headline">
							<th id= "th">프로필 사진</th>
							<td><input type= "file" name= "profile"> </td>
						</tr>
						<tr id = "headline">
							<th id= "th">자기소개</th>
							<td><textarea rows="15" cols="45" name= "p_intro"></textarea> </td>
						</tr>
					</table>
						
							<div><b>이적시장 등록여부</b>
							<span id = "join_bottom">등록<input type= "radio" name= "onMarket" value= "1" >
								거절<input type= "radio" name= "onMarket" value= "0" > </span>
							</div>
							<div id = "headline"><p>*이적시장 등록시 구단에서 귀하의 정보를 열람할 수 있습니다.*</p></div>
						
							<div id= "join_bottom">
								<input type="submit" value="가입">
								<input type="reset" value="취소">
							</div>
					
					<input type= "hidden" name= "id" value= "${requestScope.id }">
					<input type= "hidden" name= "pwd" value= "${requestScope.pwd }">
					<input type= "hidden" name= "p_name" value= "${requestScope.p_name }">
					<input type= "hidden" name= "p_email" value= "${requestScope.p_email }">
					<input type= "hidden" name= "p_addr" value= "${requestScope.p_addr }"> 			
					
				</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>