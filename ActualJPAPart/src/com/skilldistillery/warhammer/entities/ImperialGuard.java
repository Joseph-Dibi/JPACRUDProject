package com.skilldistillery.warhammer.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "guard")
public class ImperialGuard {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int id;
	@Column(name = "unit_name")
	private String unitName;
	@Column(name = "unit_type")
	@Enumerated(EnumType.STRING)
	private ForceOrg unitType;
	private int wounds;
	private int attacks;
	@Column(name = "armour_save")
	private int armourSave;
	private int leadership;
	private int movement;
	@Column(name = "weapon_skill")
	private int weaponSkill;
	@Column(name = "ballistic_skill")
	private int ballisticSkill;
	private int strength;
	private int toughness;
	@Column(name = "special_character")
	@Enumerated(EnumType.STRING)
	private SpecialCharacter specialCharacter;
	@Column(name = "unit_size")
	private int unitSize;
	@Column(name = "power_level")
	private int powerLevel;

	public enum SpecialCharacter {
		Yes, No;

	}

	public enum ForceOrg {
		HQ, Troops, Elites, HeavySupport, FastAttack, DedicatedTransport, Flyer, LordOfWar;


	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public ForceOrg getUnitType() {
		return unitType;
	}

	public void setUnitType(ForceOrg unitType) {
		this.unitType = unitType;
	}

	public int getWounds() {
		return wounds;
	}

	public void setWounds(int wounds) {
		this.wounds = wounds;
	}

	public int getAttacks() {
		return attacks;
	}

	public void setAttacks(int attacks) {
		this.attacks = attacks;
	}

	public int getArmourSave() {
		return armourSave;
	}

	public void setArmourSave(int armourSave) {
		this.armourSave = armourSave;
	}

	public int getLeadership() {
		return leadership;
	}

	public void setLeadership(int leadership) {
		this.leadership = leadership;
	}

	public int getMovement() {
		return movement;
	}

	public void setMovement(int movement) {
		this.movement = movement;
	}

	public int getWeaponSkill() {
		return weaponSkill;
	}

	public void setWeaponSkill(int weaponSkill) {
		this.weaponSkill = weaponSkill;
	}

	public int getBallisticSkill() {
		return ballisticSkill;
	}

	public void setBallisticSkill(int ballisticSkill) {
		this.ballisticSkill = ballisticSkill;
	}

	public int getStrength() {
		return strength;
	}

	public void setStrength(int strength) {
		this.strength = strength;
	}

	public int getToughness() {
		return toughness;
	}

	public void setToughness(int toughness) {
		this.toughness = toughness;
	}

	public SpecialCharacter getSpecialCharacter() {
		return specialCharacter;
	}

	public void setSpecialCharacter(SpecialCharacter specialCharacter) {
		this.specialCharacter = specialCharacter;
	}

	public int getUnitSize() {
		return unitSize;
	}

	public void setUnitSize(int unitSize) {
		this.unitSize = unitSize;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		
		builder.append("Unit Type: ");
		builder.append(unitType);
		builder.append(". Movement: ");
		builder.append(movement);
		builder.append(". Weapon Skill: ");
		builder.append(weaponSkill);
		builder.append("+. Ballistic Skill: ");
		builder.append(ballisticSkill);
		builder.append("+. Strength: ");
		builder.append(strength);
		builder.append(". Toughness: ");
		builder.append(toughness);
		builder.append(". Wounds: ");
		builder.append(wounds);
		builder.append(". Attacks: ");
		builder.append(attacks);
		builder.append(". Leadership: ");
		builder.append(leadership);
		builder.append(". Armour Save: ");
		builder.append(armourSave);
		builder.append("+. Unit Size: ");
		builder.append(unitSize);
		builder.append(" Unit Cost: ");
		builder.append(powerLevel);
		builder.append(". Special Character: ");
		builder.append(specialCharacter);
		return builder.toString();
	}
	

	public int getPowerLevel() {
		return powerLevel;
	}

	public void setPowerLevel(int powerLevel) {
		this.powerLevel = powerLevel;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + armourSave;
		result = prime * result + attacks;
		result = prime * result + ballisticSkill;
		result = prime * result + ((unitType == null) ? 0 : unitType.hashCode());
		result = prime * result + id;
		result = prime * result + leadership;
		result = prime * result + movement;
		result = prime * result + ((specialCharacter == null) ? 0 : specialCharacter.hashCode());
		result = prime * result + strength;
		result = prime * result + toughness;
		result = prime * result + ((unitName == null) ? 0 : unitName.hashCode());
		result = prime * result + weaponSkill;
		result = prime * result + wounds;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ImperialGuard other = (ImperialGuard) obj;
		if (armourSave != other.armourSave)
			return false;
		if (attacks != other.attacks)
			return false;
		if (ballisticSkill != other.ballisticSkill)
			return false;
		if (unitType != other.unitType)
			return false;
		if (id != other.id)
			return false;
		if (leadership != other.leadership)
			return false;
		if (movement != other.movement)
			return false;
		if (specialCharacter != other.specialCharacter)
			return false;
		if (strength != other.strength)
			return false;
		if (toughness != other.toughness)
			return false;
		if (unitName == null) {
			if (other.unitName != null)
				return false;
		} else if (!unitName.equals(other.unitName))
			return false;
		if (weaponSkill != other.weaponSkill)
			return false;
		if (wounds != other.wounds)
			return false;
		return true;
	}

}
