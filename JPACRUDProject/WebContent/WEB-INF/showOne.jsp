<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ViewOne</title>
</head>
<body>
<a href="index.do">Home</a>
<br>
<h1><c:if test="${empty guardsman }">No ID Found</c:if></h1>
<h1><c:if test="${not empty updated }">You updated the unit</c:if>
</h1>
<h2>${guardsman.unitName }</h2>
<h3>${guardsman.id }</h3>
<p>${guardsman}</p>
<c:if test="${not empty guardsman }">
<form action="updateUnitView.do" method="GET">
		<input type="hidden" name="id" value="${guardsman.id}" /> <input type="submit"
			value="Update Unit" /><br />
	</form>
	<form action="deleteUnit.do" method="GET">
		<input type="hidden" name="id" value="${guardsman.id}" /> <input type="submit"
			value="Delete Unit" /><br />
	</form>
	<form action="addUnitToArmyList.do" method="GET">
		<input type="hidden" name="id" value="${guardsman.id}" /> <input type="submit"
			value="Add Unit to Army List" /><br />
	</form>
</c:if>	
</body>
</html>