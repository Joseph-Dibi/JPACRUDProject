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
<title>Index View</title>

</head>
<body>
	<%-- 	<form action="getFilm.do" method="GET">
		<input type="text" name="fid" /> <input type="submit"
			value="Find Film" />
	</form>
<c:forEach items = "${filmIndex }" var = "film">
	<p><a href="getFilm.do?fid=${film.id }">${film.title}</a></p>
	<p>${film.description}</p>

</c:forEach> --%>
	<h1>Welcome to the Imperial Guard</h1>
	<c:if test="${not empty deleted }">Unit ${deleted.unitName }, ID: ${deleted.id } was deleted. </c:if>
	<form action="showAll.do" method="GET">
		<input type="submit" value="View All Units" /><br />
	</form>
	<form action="showOne.do" method="GET">
		<input type="number" name="id" /> <input type="submit"
			value="View Unit by Id" />
	</form>
	<br />
	<form action="addUnitView.do" method="GET">
		<input type="submit" value="Add Unit" /><br />
	</form>
	
</body>
</html>