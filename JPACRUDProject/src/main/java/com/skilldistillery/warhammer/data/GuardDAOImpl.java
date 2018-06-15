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

}
