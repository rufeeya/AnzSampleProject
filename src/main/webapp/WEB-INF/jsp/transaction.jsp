<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction History</title>
<style type="text/css">
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd47;
}
</style>
</head>
<body>
	<div
		style="font-family: serif; font-size: 25px; text-align: center; color: #d89c4e;">
		<h4>Transaction History</h4>
	</div>
	<table>
		<thead style="background: #264fe43b;">
			<tr>
				<th>Account Number</th>
				<th>Account Name</th>
				<th>Value Date</th>
				<th>Currency</th>
				<th>Debit Amount</th>
				<th>Credit Amount</th>
				<th>Credit/Debit</th>
				<th>Transaction Narrative</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="listItems" items="${trans }">
				<tr>
					<td><c:out value="${listItems.accountNumber}" /></td>
					<td><c:out value="${listItems.accountName}" /></td>
					<td><c:out value="${listItems.value_date}" /></td>
					<td><c:out value="${listItems.currency}" /></td>
					<td><c:out value="${listItems.debitAmount}" /></td>
					<td><c:out value="${listItems.creditAmount}" /></td>
					<td><c:out value="${listItems.dr_cr}" /></td>
					<td><c:out value="${listItems.narrative}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>