package com.skilldistillery.warhammer.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.warhammer.data.GuardDAO;
import com.skilldistillery.warhammer.entities.ImperialGuard;

@Controller
public class GuardController {

	@Autowired
	GuardDAO dao;
	
	@RequestMapping(path="intro.do", method = RequestMethod.GET)
	public ModelAndView displayIntroPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/intro.jsp");

		return mv;
	}
	@RequestMapping(path="index.do", method = RequestMethod.GET)
	public ModelAndView displayIndex(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/index.jsp");
		session.setAttribute("deleteArmyList", null);
		
		return mv;
	}
	
	@RequestMapping(path="showAll.do", method = RequestMethod.GET)
	public ModelAndView displayAllUnits() {
		
		ModelAndView mv = new ModelAndView();
		List<ImperialGuard> guardArmy = dao.listAll();
		mv.addObject("guardArmy", guardArmy);
		mv.setViewName("WEB-INF/showAll.jsp");
		return mv;
	}
	@RequestMapping(path="showOne.do", method = RequestMethod.GET)
	public ModelAndView displayUnitById(@RequestParam("id") int id) {
		
		ModelAndView mv = new ModelAndView();
		ImperialGuard guardsman = dao.findById(id);
		mv.addObject("guardsman", guardsman);
		mv.setViewName("WEB-INF/showOne.jsp");
		return mv;
	}
	@RequestMapping(path="addUnitView.do", method = RequestMethod.GET)
	public ModelAndView addUnitView() {
		ImperialGuard guardsman = new ImperialGuard();
		ModelAndView mv = new ModelAndView();
		mv.addObject("guardsman", guardsman);
		mv.setViewName("WEB-INF/addUnit.jsp");
		return mv;
	}
	@RequestMapping(path="updateUnitView.do", method = RequestMethod.GET)
	public ModelAndView upgradeUnitView(@RequestParam("id") int id) {
		ImperialGuard guardsman = dao.findById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("guardsman", guardsman);
		mv.setViewName("WEB-INF/updateUnit.jsp");
		return mv;
	}
	@RequestMapping(path="updatingUnit.do", method = RequestMethod.POST)
	public ModelAndView updateUnit(int id, ImperialGuard newGuard) {
		ImperialGuard guardsman = dao.update(id, newGuard);
		ModelAndView mv = new ModelAndView();
		mv.addObject("guardsman", guardsman);
		mv.addObject("updated", guardsman);

		mv.setViewName("WEB-INF/showOne.jsp");
		return mv;
	}
	@RequestMapping(path="addingUnit.do", method = RequestMethod.POST)
	public ModelAndView addUnit(ImperialGuard guardsman) {
		System.out.println(guardsman.toString());
		ImperialGuard addGuardsman = dao.create(guardsman);
		ModelAndView mv = new ModelAndView();
		mv.addObject("guardsman", addGuardsman);
		mv.setViewName("WEB-INF/showOne.jsp");
		return mv;
	}
	@RequestMapping(path="deleteUnit.do", method = RequestMethod.GET)
	public ModelAndView deleteUnit(int id) {
		ImperialGuard guardsman = dao.findById(id);
				dao.delete(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("deleted", guardsman);
		mv.setViewName("WEB-INF/index.jsp");
		return mv;
	}
	@RequestMapping(path="createArmyList.do", method = RequestMethod.GET)
	public ModelAndView createArmyList(int pointsValue, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<ImperialGuard> armyList = new ArrayList();
		session.setAttribute("armyList", armyList);
		session.setAttribute("tooMuch", 0);
		session.removeAttribute("deleteArmyList");
		session.setAttribute("pointsValue", pointsValue);
		session.setAttribute("initialPointsValue", pointsValue);
		mv.setViewName("WEB-INF/armyList.jsp");
		return mv;
	}
	@RequestMapping(path="deleteUnitFromList.do", method = RequestMethod.GET)
	public ModelAndView deleteFromArmyList(int id, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<ImperialGuard> armyList = (List<ImperialGuard>) session.getAttribute("armyList");
		int pointsValue = (int) session.getAttribute("pointsValue");
		ImperialGuard guardsman = dao.findById(id);
		pointsValue = pointsValue + guardsman.getPowerLevel();
		armyList.remove(guardsman);
		session.setAttribute("armyList", armyList);
		session.setAttribute("pointsValue", pointsValue);
		mv.setViewName("WEB-INF/armyList.jsp");
		return mv;
	}
	@RequestMapping(path="addUnitToArmyList.do", method = RequestMethod.GET)
	public ModelAndView addToArmyList(int id, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<ImperialGuard> armyList = (List<ImperialGuard>) session.getAttribute("armyList");
		int pointsValue = (int) session.getAttribute("pointsValue");
		ImperialGuard guardsman = dao.findById(id);
		if (pointsValue - guardsman.getPowerLevel() >= 0) {
			armyList.add(guardsman);
			pointsValue = pointsValue -guardsman.getPowerLevel();
			session.setAttribute("tooMuch", 0);
		}
		else {
			session.setAttribute("tooMuch", Math.abs(pointsValue - guardsman.getPowerLevel()));
		}
		session.setAttribute("pointsValue", pointsValue);
		session.setAttribute("armyList", armyList);
		mv.setViewName("WEB-INF/armyList.jsp");
		return mv;
	}
	
	@RequestMapping(path="viewArmyList.do", method = RequestMethod.GET)
	public ModelAndView viewArmyList(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<ImperialGuard> armyList = (List<ImperialGuard>) session.getAttribute("armyList");
		session.setAttribute("armyList", armyList);
		mv.setViewName("WEB-INF/armyList.jsp");
		return mv;
	}
	@RequestMapping(path="deleteArmyList.do", method = RequestMethod.GET)
	public ModelAndView deleteArmyList(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<ImperialGuard> armyList = (List<ImperialGuard>) session.getAttribute("armyList");
		armyList.clear();
		session.setAttribute("armyList", armyList);
		session.setAttribute("deleteArmyList", 1);
		session.setAttribute("initialPointsValue", null);
		mv.setViewName("WEB-INF/index.jsp");
		return mv;
	}
	
}
