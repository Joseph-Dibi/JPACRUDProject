<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AddUnit</title>
</head>
<body>
<h1>Update Unit</h1>
<form action="updatingUnit.do" method="POST">
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
Movement<input type="number" name="movement" value="${guardsman.movement}"><br>
Weapon Skill<input type="number" name="weaponSkill" value="${guardsman.weaponSkill}"><br>
Ballistic Skill<input type="number" name="ballisticSkill" value="${guardsman.ballisticSkill}"><br>
Strength<input type="number" name="strength" value="${guardsman.strength}"><br>
Toughness<input type="number" name="toughness" value="${guardsman.toughness}"><br>
Wounds<input type="number" name="wounds" value="${guardsman.wounds}"><br>
Attacks<input type="number" name="attacks" value="${guardsman.attacks}"><br>
Leadership<input type="number" name="leadership" value="${guardsman.leadership}"><br>
Armour Save<input type="number" name="armourSave" value="${guardsman.armourSave}"><br>
Unit Size<input type="number" name="unitSize" value="${guardsman.unitSize}"><br>
<h3>Are you adding a Special Character?</h3>
Yes<input type="radio" name="specialCharacter" value="Yes">
No<input type="radio" name="specialCharacter" value="No">
<br>
	<input type="hidden" name="guardsman" value="${guardsman}"/>
	<input type="hidden" name="id" value="${guardsman.id}"/>
	<input type="submit" value="Update Unit"/>
	</form>
	<a href="index.do">Home</a>
</body>
</html>