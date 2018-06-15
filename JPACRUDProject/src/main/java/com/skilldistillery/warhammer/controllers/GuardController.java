package com.skilldistillery.warhammer.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
}
