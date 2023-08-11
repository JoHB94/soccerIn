<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/view/home/css/headerCss.css" rel="stylesheet" type="text/css">
</head>
<body>
 <div>
        <div id='scroll_wrapper'>
            <div id='link_70container'>
                <div id='link_50container_left'>
                   <a href= "${pageContext.request.contextPath }/view/home/home.jsp">SoccerIn</a>
                </div>
                <div id='link_50container_right'>
                    <div id='to_link_item'>
                       	<a href= "${pageContext.request.contextPath }/PlayerListController">이적 시장</a>
                    </div>
                    <div id='to_link_item'>
                       <a href= "${pageContext.request.contextPath }/TeamListController">구인 구단 리스트</a>
                    </div>
                    <div id='to_link_item'>
                    	<a href= "${pageContext.request.contextPath }/MyTeamInfoController">내 구단 정보</a>
                    </div>
                    <div id='to_link_item'>
                       <a href= "${pageContext.request.contextPath }/view/home/myPage.jsp">내 정보</a>
                    </div>
                </div>
            </div>
        </div>
        </div>
</body>
</html>