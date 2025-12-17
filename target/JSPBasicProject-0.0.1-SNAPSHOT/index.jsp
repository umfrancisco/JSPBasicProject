<%@ page import="com.umfrancisco.*, java.util.*" %>
<html>
	<style>
		body {
			background-color: #000;
			color: #fff;
		}
	</style>
	<title>JSP Project</title>
	<body>
		<div>
			Hello! The time is now <%= new java.util.Date() %>
		</div>
		<form method="post">
			Id:<input type="text" name="id"/><br>
			Name:<input type="text" name="name"/><br>
            <input type="submit" value="Enviar"/>
        </form>
		<%
			Bank bank = new Bank(100);
			
			String id = request.getParameter("id");
	        String name = request.getParameter("name");
			
			if (id != null && name != null) {
				bank.newCustomer(id, name, "1000.00");
			}
			
			for (Customer c : bank.print()) {
				out.println(c+"<br>");
			}
		%>
	</body>
</html>