package com.skilldistillery.warhammer.controllers;

import java.util.List;

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
	
	@RequestMapping(path="index.do", method = RequestMethod.GET)
	public ModelAndView displayIndex() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/index.jsp");
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
		mv.setViewName("WEB-INF/showOne.jsp");
		return mv;
	}
	@RequestMapping(path="addingUnit.do", method = RequestMethod.POST)
	public ModelAndView addUnit(ImperialGuard newGuard) {
		System.out.println(newGuard.toString());
		ImperialGuard guardsman = dao.create(newGuard);
		ModelAndView mv = new ModelAndView();
		mv.addObject("guardsman", guardsman);
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
	
}
