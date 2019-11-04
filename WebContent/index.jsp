<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="com.exercise29jsp.model.Users" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First jsp</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	
	<h2>Practica con JSP</h2>
	<%
	
		for(int i= 1; i<=10;i++)
		{
			out.append("<p>");
			out.append(i+"X"+"4="+(i*4));
			out.append("</p>");
		}
	
	%>
	<%!Users mi = new Users(); %>
	<%! int i = 10; %>
	<p>
		El valor de i es <%=i %>
	</p>
	<form action="TableResult.jsp" method="post">
	<p>
		<label for="txtTable">
			Table
		</label>
		<input type="number" class="form-control" name="txtTable" id="txtTable">
		<label for="txtRange">
			Range
		</label>
		<input type="range" class="form-control" name="txtRange" id="txtRange">
		<input type="submit" class="btn btn-info" value="Calculate">
	</p>
	</form>
	<hr>
	<form action="index.jsp" method="post">
	<% 
		
		
		mi.setId(request.getParameter("txtId"));
		mi.setName(request.getParameter("txtName"));
				
				
				%>
		<p>
			<label for="txtId">
				ID
			</label>
			<input type="text" id="txtId" name="txtId" class="form-control"  value="<%=mi.getId()%>">
		</p>
		<p>
			<label for="txtName">
				Name
			</label>
			<input type="text" id="txtName" name="txtName" class="form-control"  value="<%=mi.getName()%>">
		</p>
		<input type="submit" value="Save" class="btn btn-info">
	</form>
	
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