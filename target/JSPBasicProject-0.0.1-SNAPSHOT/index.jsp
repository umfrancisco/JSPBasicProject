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
		<div>
			Hello! The time is now <%= new java.util.Date() %>
		</div>
		<%! 
			Bank bank = new Bank(100);
			Bank getBank(int id, String name, double amount) {
				bank.newCustomer(id, name, amount);
				return bank;
			}
		%>
		<div>
			<%= getBank(1, "Ana", 1200.00) %>
		</div>
		<div>
			<%= getBank(2, "Beatriz", 3200.00) %>
		</div>
	</body>
</html>