<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable.html</title>
</head>
<body style="background-color: white;">
<%String name = request.getParameter("name");
int row = Integer.parseInt(request.getParameter("numRows"));
int column = Integer.parseInt(request.getParameter("numCol"));

if (row <= 0)
{
	String message = "Hello: " + name + ", Please provide row value >=1";
	session.setAttribute("theName", message);
	response.sendRedirect("classexercise.jsp");
	return;
}
if (column <= 0)
{
	String message = "Hello: " + name + ", Please provide col value >=1";
	session.setAttribute("theName", message);
	response.sendRedirect("classexercise.jsp");
	return;
}
String amessage = "";
session.setAttribute("theName", amessage);
%>

	<br>
	<span style="color: black;">Hello <%
		out.println(name);
	%>. Here is your table
	</span>
	<br>
	<table style="text-align: left; width: 384px; height: 34px;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<%
				

				for (int i = 1; i <= row; i++) {
					//tr
					out.write("<tr>");
					for (int j = 1; j <= column; j++) {
						out.write("<td>");
						out.println(i + ", " + j);
						out.write("</td>");
					}
					out.write("</tr>");
				}
			%>
		</tbody>
	</table>
	<br>
	<br>
</body>
</html>
