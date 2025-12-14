<%@ page import="com.umfrancisco.Customer" %>
<html>
	<body>
		<%!
			
			Customer getCustomer() {
				Customer c = new Customer(1, "ana", "ana@email.com");
				return c;
			}
		%>
		hello, <%= getCustomer() %>
	</body>
</html>