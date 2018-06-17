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
	<link rel="stylesheet" href="addUpdate.css">

<title>AddUnit</title>
</head>
<body>
<h1>Update Unit</h1>
<form action="updatingUnit.do" method="POST">
Unit Name: <input type="text" name="unitName" value="${guardsman.unitName}"><br>
<h3>Select Unit Type:</h3>
HQ<input type="radio" name="unitType" value="HQ" <c:if test="${guardsman.unitType == 'HQ' }">CHECKED</c:if>/>
Troops<input type="radio" name="unitType" value="Troops" <c:if test="${guardsman.unitType == 'Troops' }">CHECKED</c:if>/>
Elites<input type="radio" name="unitType" value="Elites" <c:if test="${guardsman.unitType == 'Elites' }">CHECKED</c:if>/>
Fast Attack<input type="radio" name="unitType" value="FastAttack" <c:if test="${guardsman.unitType == 'HeavySupport' }">CHECKED</c:if>/>
Heavy Support<input type="radio" name="unitType" value="HeavySupport" <c:if test="${guardsman.unitType == 'FastAttack' }">CHECKED</c:if>/>
Flyer<input type="radio" name="unitType" value="Flyer" <c:if test="${guardsman.unitType == 'Flyer' }">CHECKED</c:if>/>
Lord of War<input type="radio" name="unitType" value="LordOfWar" <c:if test="${guardsman.unitType == 'LordOfWar' }">CHECKED</c:if>/>
<br>
<h3>Are you adding a Special Character?</h3>
Yes<input type="radio" name="specialCharacter" value="Yes" <c:if test="${guardsman.specialCharacter == 'Yes' }">CHECKED</c:if>>
No<input type="radio" name="specialCharacter" value="No" <c:if test="${guardsman.specialCharacter == 'No' }">CHECKED</c:if>>
<br>
Movement<input type="number" name="movement" value="${guardsman.movement}" ><br>
Weapon Skill<input type="number" name="weaponSkill" value="${guardsman.weaponSkill}"><br>
Ballistic Skill<input type="number" name="ballisticSkill" value="${guardsman.ballisticSkill}"><br>
Strength<input type="number" name="strength" value="${guardsman.strength}"><br>
Toughness<input type="number" name="toughness" value="${guardsman.toughness}"><br>
Wounds<input type="number" name="wounds" value="${guardsman.wounds}"><br>
Attacks<input type="number" name="attacks" value="${guardsman.attacks}"><br>
Leadership<input type="number" name="leadership" value="${guardsman.leadership}"><br>
Armour Save<input type="number" name="armourSave" value="${guardsman.armourSave}"><br>
Unit Size<input type="number" name="unitSize" value="${guardsman.unitSize}"><br>
Unit Cost<input type="number" name="powerLevel" value="${guardsman.powerLevel}"><br>
	<input type="hidden" name="guardsman" value="${guardsman}"/>
	<input type="hidden" name="id" value="${guardsman.id}"/>
	<input type="submit" value="Update Unit"/>
	</form>
		<form action="showAll.do" method="GET">
		<input type="submit" value="Back" /><br />
	</form>
	<a href="index.do">Home</a>
</body>
</html>