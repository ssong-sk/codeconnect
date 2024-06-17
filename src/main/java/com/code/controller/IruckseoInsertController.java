package com.code.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.IruckseoActibityDto;
import com.code.dto.IruckseoCareerDto;
import com.code.dto.IruckseoHopeDto;
import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoSchoolDto;
import com.code.dto.IruckseoSelfDto;
import com.code.dto.IruckseoSpecDto;
import com.code.service.IruckseoInsertService;

@Controller
public class IruckseoInsertController {
	
	//school service
	@Autowired
	IruckseoInsertService irservice;
	
	
	@GetMapping("/resumehome/list")
	public ModelAndView list() {
		
		ModelAndView mview = new ModelAndView();
		
		return mview;
	}
	
	//이력서 등록 폼
	@GetMapping("/resumehome/form")
	public ModelAndView form() {
		
		ModelAndView mview = new ModelAndView();
		
		IruckseoInsertDto irdto = new IruckseoInsertDto();
		//personal pe_num 등록하기 insert
		irservice.insertPersonal(irdto);
		
		mview.addObject("irdto", irdto);
		
		//포워드
		mview.setViewName("/resumehome/iruckseoform");
		
		return mview;
	}
	
	//학력 school insert 하기
	@PostMapping("/resumehome/schoolinsert")
	@ResponseBody
	public Map<String, Object> schoolinsert(@RequestBody IruckseoSchoolDto scdto) {
		
	    Map<String, Object> scmap = new HashMap<>();

	    irservice.insertSchool(scdto);
	    
	    List<IruckseoSchoolDto> sclist = irservice.OneSchoolDatas(scdto);
	    
	    scmap.put("sclist", sclist);
	    scmap.put("scdto", scdto);
	    

		return scmap;
	}
	
	
	//학력 수정폼 
	@GetMapping("/resumehome/shcoolupdateform")
	@ResponseBody
	public IruckseoSchoolDto schooluform(@RequestParam int sc_num) {
		
		return irservice.selectNumSchool(sc_num);
	}
	

	//학력 수정
	@PostMapping("/resumehome/shcoolupdate")
	@ResponseBody
	public List<IruckseoSchoolDto> schoolupdate(@RequestBody IruckseoSchoolDto scdto) {
		
		Map<String, Object> scmap = new HashMap<>();
		
		irservice.updateSchool(scdto);
		
		//스쿨 전체 조회 
		List<IruckseoSchoolDto> scAllList = irservice.allSchoolDatas(scdto);
		
		return scAllList;
	}
	
	
	//학력 school 삭제하기
    @GetMapping("/resumehome/schooldelete")	
    @ResponseBody
    public void schooldelete(@RequestParam int sc_num) {
    	
    	irservice.deleteSchool(sc_num);
    	
    }
    
    
	//경력 insert 하기, list 출력
	@PostMapping("/resumehome/careerinsert")
	@ResponseBody
	public Map<String, Object> careerinsert(@RequestBody IruckseoCareerDto cadto) {
		
	    Map<String, Object> camap = new HashMap<>();

	    irservice.insertCareer(cadto);
	    
	    List<IruckseoCareerDto> calist = irservice.OneCareerDatas(cadto);

	    camap.put("cadto", cadto);
	    camap.put("calist", calist);
	    

		return camap;
	}
	
	//경력 수정폼 
	@GetMapping("/resumehome/careerupdateform")
	@ResponseBody
	public IruckseoCareerDto careeruform(@RequestParam int ca_num) {
		
		return irservice.selectNumCareer(ca_num);
	}
	
	
	//경력 수정
	@PostMapping("/resumehome/careerupdate")
	@ResponseBody
	public List<IruckseoCareerDto> careerupdate(@RequestBody IruckseoCareerDto cadto) {
		
		Map<String, Object> camap = new HashMap<>();
		
		irservice.updateCareer(cadto);
		
		//경력 전체 조회 
		List<IruckseoCareerDto> caAllList = irservice.allCareerDatas(cadto);
		
		return caAllList;
	}
		
	//경력 삭제하기
    @GetMapping("/resumehome/careerdelete")	
    @ResponseBody
    public void careerdelete(@RequestParam int ca_num) {
    	
    	irservice.deleteCareer(ca_num);
    	
    }
	
    //경험활동 insert 하기, list 출력
    @PostMapping("/resumehome/actibityinsert")
    @ResponseBody
    public Map<String, Object> actibityinsert(@RequestBody IruckseoActibityDto acdto) {
    	
    	Map<String, Object> acmap = new HashMap<>();
    	
    	irservice.insertActibity(acdto);
    	
    	List<IruckseoActibityDto> aclist = irservice.OneActibityDatas(acdto);
    	
    	acmap.put("acdto", acdto);
    	acmap.put("aclist", aclist);
    	
    	return acmap;
    }
    
    //경험활동 수정폼 
  	@GetMapping("/resumehome/actibityupdateform")
  	@ResponseBody
  	public IruckseoActibityDto actibityform(@RequestParam int ac_num) {
  		
  		return irservice.selectNumActibity(ac_num);
  	}
  	
    //경험활동 수정
  	@PostMapping("/resumehome/actibityupdate")
  	@ResponseBody
  	public List<IruckseoActibityDto> actibityupdate(@RequestBody IruckseoActibityDto acdto) {
  		
  		Map<String, Object> camap = new HashMap<>();
  		
  		irservice.updateActibity(acdto);
  		
  		//경력 전체 조회 
  		List<IruckseoActibityDto> acAllList = irservice.allActibityDatas(acdto);
  		
  		return acAllList;
  	}
  	
  	//경험활동 삭제하기
  	@GetMapping("/resumehome/actibitydelete")
  	@ResponseBody
  	public void actibitydelete(@RequestParam int ac_num) {
    	
    	irservice.deleteActibity(ac_num);
    	
    }
    
    //스펙 insert 하기, list 출력
    @PostMapping("/resumehome/specinsert")
    @ResponseBody
    public Map<String, Object> specinsert(@RequestBody IruckseoSpecDto spdto) {
    	
    	Map<String, Object> spmap = new HashMap<>();
    	
    	irservice.insertSpec(spdto);
    	
    	List<IruckseoSpecDto> splist = irservice.OneSpecDatas(spdto);
    	
    	spmap.put("spdto", spdto);
    	spmap.put("splist", splist);

    	
    	return spmap;
    }
    
    //스펙 수정 폼 띄우기
    @GetMapping("/resumehome/specupdateform")
    @ResponseBody
    public IruckseoSpecDto specform(@RequestParam int sp_num) {
    	
    	return irservice.selectNumSpec(sp_num);
    }
    
    //스펙 수정하기
    @PostMapping("/resumehome/specupdate")
    @ResponseBody
    public List<IruckseoSpecDto> specupdate(@RequestBody IruckseoSpecDto spdto) {
  		
  		Map<String, Object> camap = new HashMap<>();
  		
  		irservice.updateSpec(spdto);
  		
  		//경력 전체 조회 
  		List<IruckseoSpecDto> spAllList = irservice.allSpecDatas(spdto);
  		
  		return spAllList;
  	}
    
    //스펙 삭제하기
    @GetMapping("/resumehome/specdelete")
  	@ResponseBody
  	public void specdelete(@RequestParam int sp_num) {
    	
    	irservice.deleteSpec(sp_num);
    	
    }
    
    //자기소개서 insert
    @PostMapping("/resumehome/selfinsert")
    @ResponseBody
    public Map<String, Object> selfinsert(@RequestBody IruckseoSelfDto sedto) {
    	
    	Map<String, Object> semap = new HashMap<>();
    	
    	irservice.insertSelf(sedto);
    	
    	List<IruckseoSelfDto> selist = irservice.OneSelfDatas(sedto);
    	
    	semap.put("sedto", sedto);
    	semap.put("selist", selist);
    	
    	return semap;
    }
    
    //자기소개서 수정 폼 띄우기
    @GetMapping("/resumehome/selfupdateform")
    @ResponseBody
    public IruckseoSelfDto selfform(@RequestParam int se_num) {
    	
    	return irservice.selectNumSelf(se_num);
    }
    
    //자기소개서 수정하기
    @PostMapping("/resumehome/selfupdate")
    @ResponseBody
    public List<IruckseoSelfDto> selfupdate(@RequestBody IruckseoSelfDto sedto) {
    	
    	Map<String, Object> semap = new HashMap<>();
    	
    	irservice.updateSelf(sedto);
    	
    	//자기소개서 전체 조회
    	List<IruckseoSelfDto> seAllList = irservice.allSelfDatas(sedto);
    	
    	return seAllList;
    }
    
    //자기소개서 삭제하기
    @GetMapping("/resumehome/selfdelete")
    @ResponseBody
    public void selfdelete(@RequestParam int se_num) {
    	
    	irservice.deleteSelf(se_num);
    }
    
    //희망조건 insert
    @PostMapping("/resumehome/hopeinsert")
    @ResponseBody
    public Map<String, Object> hopeinsert(@RequestBody IruckseoHopeDto hodto) {
    	
    	Map<String, Object> homap = new HashMap<>();
    	
    	List<IruckseoHopeDto> holist = irservice.OneHopeDatas(hodto);

    	if( holist.size() == 0 ) {
    		irservice.insertHope(hodto);
    	}else {
    		//저장 후 update
    		irservice.updateHope(hodto);
    	}
    	
    	
    	homap.put("hodto", hodto); 
    	
    	return homap;
    }
 
 }

