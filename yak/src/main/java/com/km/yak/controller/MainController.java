package com.km.yak.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak.service.DrugService;
import com.km.yak.vo.DrugVO;

@Controller
public class MainController {
	@Inject
    DrugService drugService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Model model) throws Exception{
		
		List<DrugVO> list = drugService.drugRank();
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
	    map.put("list", list);
	    mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
	    mav.setViewName("home");
	    
		return mav;
	}
}
