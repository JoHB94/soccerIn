<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import= "model.MemberVO" %>
<%@page import= "java.util.ArrayList" %>
<%@page import= "java.util.Map,java.util.HashMap" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	//String 배열 생성
	String[] strings = {"aaa","bbb","ccc"};
	
	//ArrayList객체 생성 Member객체 3개를 생성하여 members에 저장
	ArrayList<MemberVO> members = new ArrayList<MemberVO>();
	members.add(new MemberVO("id1","111","name","email1"));
	members.add(new MemberVO("id2","222","name","email2"));
	members.add(new MemberVO("id3","333","name","email3"));
	
	//맵 객체 생성, 생성한 맵에 name,tel,address키로 값저장
	Map<String,String>map = new HashMap<>();
	map.put("name","xxx");
	map.put("tel","111");
	map.put("address","대한민국");
%>

<%--생성한 배열,ArrayList, map객체를 set태그로 선언한 변수에 할당한다. --%>
	<c:set var= "strings" value= "<%=strings %>"/>
	<c:set var= "members" value= "<%=members %>"/>
	<c:set var= "map" value= "<%=map %>"/>

	1~5출력<br>
	<c:forEach var= "i" begin= "1" end= "5">
	${i }
	</c:forEach>
	<br><br>
<!-- i가 2부터 5까지 2씩증가하며 반복한 i값 -->
	1~5 2씩 증가하며 출력<br>
	<c:forEach var= "i" begin= "1" end= "5" step= "2">
	${i }
	</c:forEach>
	<br><br>
	
	"String[]에 저장된 데이터 출력"<br>
	<c:forEach var= "s" items= "${strings }">
		${s},
	</c:forEach>
	
	"ArrayList에 저장된 데이터 출력"<br>
	<c:forEach var= "m" items= "${members }">
		id: ${m.in },pwd: ${m.pwd },name: ${m.name },email: ${m.addr }<br>
	</c:forEach>
	
	"Map에 저장된 데이터 출력"<br>
	<c:forEach var= "m" items= "${map }">
		id: ${m},
	</c:forEach>
	
	
	<br><br>
</body>
</html>







