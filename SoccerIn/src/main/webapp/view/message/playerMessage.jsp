<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function openPopup(id,t_name) {
 	var contextPath = "${pageContext.request.contextPath}"; // JSP 내에서 서블릿 컨텍스트 경로를 가져오는 방법
    var url = contextPath + "/TeamInfoController?id=" + id + "&t_name=" + t_name;
    var name = "popupWindow";
    var options = "width=400,height=300,scrollbars=yes";
    // 팝업 창 열기
    window.open(url, name, options);
}
</script>
<link href="${pageContext.request.contextPath}/view/message/css/messageListCss.css" rel="stylesheet" type="text/css">

</head>
<body>
<jsp:include page="/view/home/header.jsp"></jsp:include>

<div id= "back">
	<div id= "header"></div>
	<div id = "title"><p><b>스카우트 리스트</b></p></div>
	<div id="100">
		<div id= "card">
			<div id= "content">
				<div >
					<table id= "table">
						<tr id = "headline">
							<th id= "th">보내는곳</th><th id= "th">받는곳</th><th id= "th">수락</th><th id= "th">거절</th>
						</tr>
						<c:forEach var= "m" items= "${requestScope.list}">
							<tr id = "headline" onclick="openPopup('${m.id}','${m.t_name}')" style="cursor: pointer;">
								<td id= "th">${m.id }</td><td id= "th">${m.t_name }</td>
								<td id= "th">
								<form name= "TeamMessageForm" method= "post" action="${pageContext.request.contextPath}/MsgResponseController?id=${m.id}&t_name=${m.t_name}">
									<input type="submit" value="수락" > 
									<input type="hidden" name="response" value="0">
								</form>
								</td>
								<td id= "th">
								<form name= "TeamMessageForm" method= "post" action="${pageContext.request.contextPath}/MsgResponseController?id=${m.id}&t_name=${m.t_name}">
									<input type="submit" value="거절" > 
									<input type="hidden" name="response" value="1">
								</form>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

	
	

<jsp:include page="/view/home/footer.jsp"></jsp:include>
</body>
</html>