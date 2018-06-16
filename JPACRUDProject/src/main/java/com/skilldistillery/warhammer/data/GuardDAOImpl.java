package com.skilldistillery.warhammer.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.warhammer.entities.ImperialGuard;

@Transactional
@Component
public class GuardDAOImpl implements GuardDAO {

	@PersistenceContext
	EntityManager em;

	@Override
	public List<ImperialGuard> listAll() {
		String sqlStmt = "select g from ImperialGuard g";

		List<ImperialGuard> guardArmy = em.createQuery(sqlStmt, ImperialGuard.class).getResultList();
		return guardArmy;
	}

	@Override
	public ImperialGuard findById(int id) {
		ImperialGuard guardsman = em.find(ImperialGuard.class, id);

		return guardsman;
	}

	@Override
	public ImperialGuard create(ImperialGuard newGuard) {
		System.out.println(newGuard.getId());
		em.persist(newGuard);
		
		System.out.println(newGuard.getId());
		em.flush();
		System.out.println(newGuard.getId());
		
		return newGuard;
	}
	@Override
	public ImperialGuard update(int id, ImperialGuard guardsman) {
		ImperialGuard managed = em.find(ImperialGuard.class, id);
		managed.setArmourSave(guardsman.getArmourSave());
		managed.setAttacks(guardsman.getAttacks());
		managed.setBallisticSkill(guardsman.getBallisticSkill());
		managed.setLeadership(guardsman.getLeadership());
		managed.setMovement(guardsman.getMovement());
		managed.setSpecialCharacter(guardsman.getSpecialCharacter());
		managed.setStrength(guardsman.getStrength());
		managed.setToughness(guardsman.getToughness());
		managed.setUnitName(guardsman.getUnitName());
		managed.setUnitSize(guardsman.getUnitSize());
		managed.setUnitType(guardsman.getUnitType());
		managed.setWeaponSkill(guardsman.getWeaponSkill());
		managed.setWounds(guardsman.getWounds());
		managed.setPowerLevel(guardsman.getPowerLevel());
		
		
		return managed;
	}
	
	@Override
	public void delete(int id) {
		ImperialGuard delete = em.find(ImperialGuard.class, id);
		em.remove(delete);
		
	}

	@Override
	public ImperialGuard addToArmyList(int id) {
		List<ImperialGuard> armyList;
		
		return null;
	}

}
