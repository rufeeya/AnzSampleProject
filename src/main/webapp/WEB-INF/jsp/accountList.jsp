<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account List</title>
<style type="text/css">
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border-bottom: 1px solid #ddddd;
	border-top: 1px solid #ddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd47;
}
</style>
</head>
<body>
	<div style="font-family: serif; font-size: 25px;text-align: center;color: #d89c4e;" ><h4>Account List</h4></div>
	<div style="padding-top: 10px">
		<table>
			<thead style="background: #264fe43b;">
				<tr>
					<th>Account Number</th>
					<th>Account Name</th>
					<th>Account Type</th>
					<th>Balance Date</th>
					<th>Currency</th>
					<th>Opening Balance</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="listItems" items="${accList }">
					<tr>
						<td><a href="/anz/transaction/${listItems.accountNumber}"><c:out
									value="${listItems.accountNumber}" /></a></td>
						<td><c:out value="${listItems.accountName}" /></td>
						<td><c:out value="${listItems.accountType}" /></td>
						<td><c:out value="${listItems.balanceDate}" /></td>
						<td><c:out value="${listItems.currency}" /></td>
						<td><c:out value="${listItems.openingBalance}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>