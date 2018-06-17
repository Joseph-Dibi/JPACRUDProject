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
	<link rel="stylesheet" href="showall.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Guard Codex Units</title>
</head>
<body>
<h1>Current Imperial Guard Army Roster</h1>
<hr>
<a href="index.do" class="topHome">Home</a>
<br>
<main class="container">
<c:forEach items = "${guardArmy }" var = "unit">
	<h2>${unit.unitName}</h2>
	<h4>Unit ID: ${unit.id}</h4>
		<p>${unit}</p>
<form action="updateUnitView.do" method="GET">
		<input type="hidden" name="id" value="${unit.id}" /> <input type="submit"
			value="Update Unit" /><br />
	</form>
<form action="deleteUnit.do" method="GET">
		<input type="hidden" name="id" value="${unit.id}" /> <input type="submit"
			value="Delete Unit" /><br />
	</form>
	<c:if test="${not empty initialPointsValue}">
	<form action="addUnitToArmyList.do" method="GET">
		<input type="hidden" name="id" value="${unit.id}" /> <input type="submit"
			value="Add Unit to Army List" /><br />
	</form>
	</c:if>
	<hr>
</c:forEach>
</main>
<br>
<br>
<a href="index.do" class="bottomHome">Home</a>

</body>
</html>