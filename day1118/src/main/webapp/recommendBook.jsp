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
������ �Է��Ͻÿ� => <input type="text" name ="name">
<input type ="submit" value="Ȯ��">
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
		<td>å��ȣ</td>
		<td>å�̸�</td>
		<td>���ǻ�</td>
		<td>����</td>
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