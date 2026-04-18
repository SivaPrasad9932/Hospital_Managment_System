package com.siva.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.siva.Vo.DoctorVo;
import com.siva.entity.Doctor;
import com.siva.service.IDoctorImplService;

@Controller
public class DoctorCrudOperations {
	
  @Autowired
  IDoctorImplService service;
  
  @RequestMapping({"/", "/home"})
	public String home() {
		return "home";
	}
	
	@GetMapping("/register")
	public String registerDoctor(Map<String,Object> mp,@ModelAttribute("dvo") DoctorVo vo) {
		//mp.put("dvo", new Doctor());
		return "registerDoctor";
	}
	
	@GetMapping("/show")
	public String showRecords1(Map<String, Object> mp) {
		
		//sending to showalldoctors.jsp
		Iterable<DoctorVo> docvo=service.showAllDoctors();
		mp.put("dlist", docvo);
		
		return "showAllDoctors";
	}
	
	@PostMapping("/register")
	public String regisetrDoctor(Map<String, Object> mp,@ModelAttribute("dvo") DoctorVo vo) {
		
	  String msg=service.RegisterDoctor(vo);
	  mp.put("msg", msg);
	  
	  return "redirect:/show";
	}
	
	@GetMapping("/edit")
	public String editDoctor(@RequestParam("no") int no,  @ModelAttribute("dvo") DoctorVo vo,Map<String, Object> mp) {
		Doctor doc=service.findById(no);
		BeanUtils.copyProperties(doc, vo);
		return "update";
	}
	
	@PostMapping("/edit")
	public String updateDoctor(@ModelAttribute("dvo") DoctorVo vo) {
		service.update(vo);
		return "redirect:show";
	}
	
	@GetMapping("/del")
	public String deleteDoctor(@RequestParam("no") int no,Map<String, String> mp) {
		
		String msg= service.deleteDoctorById(no);
		return "redirect:show";
		
	}
}
