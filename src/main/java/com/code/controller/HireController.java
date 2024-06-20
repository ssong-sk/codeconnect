package com.code.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.code.dto.HireDto;
import com.code.service.CompanyService;
import com.code.service.HireService;

@Controller
public class HireController {

	@Autowired
	CompanyService com_service;

	@Autowired
	HireService hservice;
	
	@PostMapping("/hire/insert")
	public String hireInsert(@ModelAttribute("hdto") HireDto hdto) {

		hservice.hireInsert(hdto);

		return "/hire/hiremain";
	}

	@GetMapping("/hire/main")
	public String hireMain(@ModelAttribute("hdto") HireDto dto, Model model) {
		List<HireDto> hlist = hservice.getHireList();

		for (HireDto h : hlist) {
			String careerValue = h.getH_career();

			if (!"신입".equals(careerValue)) {
				String formattedCareer = formatCareer(careerValue);
				h.setH_career(formattedCareer);
			}
		}

		model.addAttribute("hlist", hlist);
		return "hire/hiremain";
	}

	private String formatCareer(String careerValue) {
		String[] parts = careerValue.split("\\|");
		int[] careerArray = new int[parts.length];
		for (int i = 0; i < parts.length; i++) {
			careerArray[i] = Integer.parseInt(parts[i]);
		}
		java.util.Arrays.sort(careerArray);

		StringBuilder result = new StringBuilder();
		int rangeStart = careerArray[0];
		for (int i = 1; i < careerArray.length; i++) {
			if (i < careerArray.length && careerArray[i] == careerArray[i - 1] + 1) {
				continue;
			} else {
				if (rangeStart == careerArray[i - 1]) {
					result.append(rangeStart);
				} else {
					result.append(rangeStart).append("~").append(careerArray[i - 1]);
				}
				if (i < careerArray.length) {
					result.append(", ");
				}
				rangeStart = careerArray[i];
			}
		}
		if (careerArray.length > 0) {
			if (rangeStart == careerArray[careerArray.length - 1]) {
				result.append(rangeStart);
			} else {
				result.append(rangeStart).append("~").append(careerArray[careerArray.length - 1]);
			}
		}
		return result.toString();
	}

	@ResponseBody
	@GetMapping("/hire/search")
	public List<HireDto> hireSearch(String search_job, String search_tech, String search_region, String search_career) {
		
		List<HireDto> slist=hservice.searchHire(search_job, search_tech, search_region, search_career);
		
		for (HireDto h : slist) {
			String careerValue = h.getH_career();

			if (!"신입".equals(careerValue)) {
				String formattedCareer = formatCareer(careerValue);
				h.setH_career(formattedCareer);
			}
		}
		
		return slist;
	}
}
