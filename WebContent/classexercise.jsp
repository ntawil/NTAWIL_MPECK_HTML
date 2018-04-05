<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>classexcercise</title>
</head>
<body>

	<h1>
		<%=
		  session.getAttribute( "theName" )
		%>
	</h1>
	<form action="createTable.jsp" name="table">
		<table style=" text-align: left; width: 649px; height: 123px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">Enter your name<br> <br>
					</td>
					<td style="vertical-align: top;"><input name="name" ><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Enter number of rows<br>
					</td>
					<td style="vertical-align: top;"><input name="numRows"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Enter number of columns<br>
					</td>
					<td style="vertical-align: top;"><input name="numCol"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><input type="submit"><br>
					</td>
					<td style="vertical-align: top;"><input value="Reset"
						type="reset"><br></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
</body>
</html>