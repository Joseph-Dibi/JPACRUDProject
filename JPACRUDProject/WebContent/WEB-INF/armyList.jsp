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
<title>Army List</title>
</head>
<body>
<a href="index.do">Home</a>
<br>
<h1><c:if test="${tooMuch > 0}">Unable to add unit. It cost ${tooMuch } points too many</c:if></h1>
<h2>Army List for Power Level ${initialPointsValue }</h2>
<h1><c:if test="${empty armyList}">Your Army is Empty! Add some units!</c:if></h1>
<c:forEach items = "${armyList }" var = "unit">
	<h2>${unit.unitName}</h2>
	<h4>Unit ID: ${unit.id}</h4>
		<p>${unit}</p>

<form action="deleteUnitFromList.do" method="GET">
		<input type="hidden" name="id" value="${unit.id}" /> <input type="submit"
			value="Delete Unit" /><br />
	</form>
</c:forEach>
<h3>You have ${pointsValue } points left to spend</h3>

<form action="showAll.do" method="GET">
		<input type="submit" value="View All Units" /><br />
	</form>
<form action="deleteArmyList.do" method="GET">
		<input type="submit" value="Delete Army List" /><br />
	</form>
</body>
</html>