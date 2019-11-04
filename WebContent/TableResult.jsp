<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Multiplication result</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>Multiplication result</h2>
	<%
		int range = Integer.parseInt(request.getParameter("txtRange"));
		int number = Integer.parseInt(request.getParameter("txtTable"));
	%>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Number</th>
				<th>Multiplied by</th>
				<th>Equals to</th>
			</tr>

		</thead>
		<tbody>
			<%
				for (int i = 1; i <= range; i++) {
					out.append("<tr>");
					out.append("<td>");
					out.append("" + number);
					out.append("</td>");
					out.append("<td>");
					out.append("" + i);
					out.append("</td>");
					out.append("<td>");
					out.append("" + (number * i));
					out.append("</td>");
					out.append("</tr>");

				}
			%>
		</tbody>
	</table>


	<script type="text/javascript" src="js/jQuery3.4.1.js">
		
	</script>
	<script type="text/javascript" src="js/popper.min.js">
		
	</script>
	<script type="text/javascript" src="js/tooltip.min.js">
		
	</script>
	<script type="text/javascript" src="js/bootstrap.min.js">
		
	</script>

</body>
</html>