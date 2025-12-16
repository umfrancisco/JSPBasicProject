<%@ page import="com.umfrancisco.*" %>
<html>
	<style>
		body {
			background-color: #000;
			color: #fff;
		}
	</style>
	<title>JSP Project</title>
	<body>
		<%
			Bank bank = new Bank(100);
			bank.newCustomer(1, "Ana", 2000);
			bank.newCustomer(2, "Beatriz", 3000);
			bank.newCustomer(3, "Carlos", 1200);
			out.println(bank);
			
			bank.doTransaction(bank.getCustomer(1), bank.getCustomer(2), 500);
			out.println(bank);
		%>
	</body>
</html>