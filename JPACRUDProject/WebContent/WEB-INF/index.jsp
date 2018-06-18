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
<link rel="stylesheet" href="index.css">

<title>Index View</title>

</head>
<body>
	<main class="container">
	<div class="row">
		<div class="col">
			<h1>Welcome to the Imperial Guard</h1>
			<c:if test="${not empty deleted }">Unit ${deleted.unitName }, ID: ${deleted.id } was deleted. </c:if>
			<c:if test="${not empty deleteArmyList}">Army List deleted. </c:if>
			<hr>
		</div>
	</div>
	<h3>Find Units in Codex</h3>
	<div class="row">
		<div class="col">
			<form action="showAll.do" method="GET">
				<input type="submit" value="View All Units" /><br />
			</form>
		</div>
		<div class="col">
			<form action="showOne.do" method="GET">
				<input type="submit" value="View Unit by Id" /> <input
					type="number" name="id" class="numBox" required/>
			</form>
		</div>
	</div>
	<hr>

	<h3>Create new Unit in Codex</h3>
	<div class="row">
		<div class="col">
			<form action="addUnitView.do" method="GET">
				<input type="submit" value="Add Unit" /><br />
			</form>
		</div>
	</div>
	<hr>
	<h3>Create/View Army List</h3>
	<div class="row">
		<div class="col">
			<c:if test="${empty initialPointsValue}">
				<p>Enter a Points Limit to use for an army list</p>
				<form action="createArmyList.do" method="GET">
					<input type="number" name="pointsValue" required/><br /> <input
						type="submit" value="Create Army" /><br />
				</form>
			</c:if>
			<c:if test="${not empty initialPointsValue}">
				<a href="viewArmyList.do">View Army List</a>
			</c:if>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<img alt="Golden Aquila on black background"
				src="https://pre00.deviantart.net/7575/th/pre/f/2013/184/a/4/aquila_imperialis_by_hank9y-d6buo5y.jpg"
				class="bottomPhoto">
		</div>
	</div>





	</main>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>