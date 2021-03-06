<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
	<link rel="stylesheet" href="addUpdate.css">
	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AddUnit</title>
</head>
<body>
<h1>Add Unit</h1>
<form action="addingUnit.do" method="POST">
Unit Name: <input type="text" name="unitName" value="${guardsman.unitName}"><br>
<h3>Select Unit Type:</h3>
HQ<input type="radio" name="unitType" value="HQ">
Troops<input type="radio" name="unitType" value="Troops">
Elites<input type="radio" name="unitType" value="Elites">
Fast Attack<input type="radio" name="unitType" value="FastAttack">
Heavy Support<input type="radio" name="unitType" value="HeavySupport">
Flyer<input type="radio" name="unitType" value="Flyer">
Lord of War<input type="radio" name="unitType" value="LordOfWar">
<br>
<h3>Are you adding a Special Character?</h3>
Yes<input type="radio" name="specialCharacter" value="Yes">
	No<input type="radio" name="specialCharacter" value="No">
<br>
<div class="numGroup">
Movement		<input type="number" name="movement" value="${guardsman.movement}" class = "inputBox"><br>
Weapon Skill		<input type="number" name="weaponSkill" value="${guardsman.weaponSkill}" class = "inputBox"><br>
Ballistic Skill		<input type="number" name="ballisticSkill" value="${guardsman.ballisticSkill}" class = "inputBox"><br>
Strength		<input type="number" name="strength" value="${guardsman.strength}" class = "inputBox"><br>
Toughness		<input type="number" name="toughness" value="${guardsman.toughness}" class = "inputBox"><br>
Wounds		<input type="number" name="wounds" value="${guardsman.wounds}" class = "inputBox"><br>
Attacks		<input type="number" name="attacks" value="${guardsman.attacks}" class = "inputBox"><br>
Leadership		<input type="number" name="leadership" value="${guardsman.leadership}" class = "inputBox"><br>
Armour Save		<input type="number" name="armourSave" value="${guardsman.armourSave}" class = "inputBox"><br>
Unit Size		<input type="number" name="unitSize" value="${guardsman.unitSize}" class = "inputBox"><br>
Unit Cost		<input type="number" name="powerLevel" value="${guardsman.powerLevel}" class = "inputBox"><br>
</div>
	<input type="hidden" name="guardsman" value="${guardsman}"/>
	<input type="submit" value="Add Unit"/>
	</form>
	<br>
	<a href="index.do">Home</a>
</body>
</html>