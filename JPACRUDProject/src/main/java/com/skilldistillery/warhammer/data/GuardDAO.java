package com.skilldistillery.warhammer.data;

import java.util.List;

import com.skilldistillery.warhammer.entities.ImperialGuard;

public interface GuardDAO {
	public List<ImperialGuard> listAll();
	public ImperialGuard findById(int id);
}
