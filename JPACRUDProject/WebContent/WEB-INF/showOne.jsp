<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ViewOne</title>
</head>
<body>
<a href="index.do">Home</a>
<br>
<h1>${guardsman.unitName }</h1>
<h2>${guardsman.id }</h2>
<p>${guardsman}</p>
<form action="updateUnitView.do" method="GET">
		<input type="hidden" name="id" value="${guardsman.id}" /> <input type="submit"
			value="Update Unit" /><br />
	</form>
	<form action="deleteUnit.do" method="GET">
		<input type="hidden" name="id" value="${guardsman.id}" /> <input type="submit"
			value="Delete Unit" /><br />
	</form>
</body>
</html>