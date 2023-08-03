<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="model.Member,"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		ArrayList<Member> list = new ArrayList<Member>();
		list.add(new Member("a", "1", "b", "c"));
		list.add(new Member("d", "2", "e", "f"));
		list.add(new Member("g", "3", "h", "i"));
		pageContext.setAttribute("list", list);
	%>
	list[0] : ${list[0].id }, ${list[0].pwd },
			${list[0].name }, ${list[0].email } <br> 
	list[1] : ${list[1].id }, ${list[1].pwd }, 
			${list[1].name },	${list[1].email } <br>
	list[2] : ${list[2].id }, ${list[2].pwd }, 
			${list[2].name }, ${list[2].email } <br>
</body>
</html>