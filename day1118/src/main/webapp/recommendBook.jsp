<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.recommenddao.RecommendBookDAO"%>
<%@page import="com.sist.recommendvo.RecommendBookVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="recommendBook.jsp"method="post">
성함을 입력하시오 => <input type="text" name ="name">
<input type ="submit" value="확인">
</form>

<%

request.setCharacterEncoding("euc-kr");
if(request.getParameter("name")!= null){
	String name = request.getParameter("name");
	RecommendBookDAO dao = new RecommendBookDAO();
	ArrayList<RecommendBookVO>list = dao.listbook(name);
%>
<table border="1">
	<tr>
		<td>책번호</td>
		<td>책이름</td>
		<td>출판사</td>
		<td>가격</td>
	</tr>
	<%
		for(RecommendBookVO r : list){
			%>
			<tr>
				<td><%= r.getBookid() %></td>
				<td><%= r.getBookname() %></td>
				<td><%= r.getPublisher() %></td>
				<td><%= r.getPrice() %></td>				
			</tr>
			<%
		}
	%>
	
</table>
<br>

<%

}


%>

</body>
</html>