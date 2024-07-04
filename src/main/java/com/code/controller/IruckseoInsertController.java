package com.code.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.IruckseoActibityDto;
import com.code.dto.IruckseoCareerDto;
import com.code.dto.IruckseoHopeDto;
import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoPortfolioDto;
import com.code.dto.IruckseoSchoolDto;
import com.code.dto.IruckseoSelfDto;
import com.code.dto.IruckseoSpecDto;
import com.code.dto.RegisterDto;
import com.code.service.IruckseoInsertService;
import com.code.service.RegisterService;

@Controller
public class IruckseoInsertController {
	
	//이력서 service
	@Autowired
	IruckseoInsertService irservice;
	
	//로그인 service (로그인 세션 가져오기)
	@Autowired
	RegisterService reservice;
	
	//이력서 등록 폼
	@GetMapping("/resumehome/form")
	public ModelAndView form(HttpSession session ) {
		
		ModelAndView mview = new ModelAndView();
		IruckseoInsertDto irdto = new IruckseoInsertDto();
		RegisterDto rdto = new RegisterDto();
		int r_num =  Integer.parseInt((String)session.getAttribute("r_num"));
		
		//personal pe_num 등록하기 insert
		irdto.setR_num(r_num);
		irservice.insertPersonal(irdto);
		
		// 회원정보 조회
		rdto =reservice.getDataByNum((String)session.getAttribute("r_num"));
		
		mview.addObject("irdto", irdto);
		mview.addObject("rdto", rdto);
		//포워드
		mview.setViewName("/sub/resumehome/iruckseoform");
		
		return mview;
	}
	
	//이력서 업데이트 하기
	@PostMapping("/resumehome/personalupdate")
    public String personalupdate(@ModelAttribute IruckseoInsertDto pedto, HttpSession session ) {
    	
    	String path = session.getServletContext().getRealPath("/iruckseoimage");
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
    	
    	if("".equals(pedto.getMyphoto().getOriginalFilename()) == false ) {

    		String uploadfileName = sdf.format(new Date()) + "_" + pedto.getMyphoto().getOriginalFilename();
    		
    		try {
    			pedto.getMyphoto().transferTo(new File(path+"\\"+uploadfileName));
    			
    			pedto.setPe_image(uploadfileName);
                pedto.setPe_filepath(path);
    			
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		
    	}
		 // 최종 insert
        irservice.updatePersonal(pedto);
		
        return "redirect:conditionform";
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
    
    //포트폴리오 insert하기
    @PostMapping("/resumehome/portfolioinsert")
    @ResponseBody
    public Map<String, Object> portfolioinsert(MultipartFile[] po_filepath,	
     		                                  @RequestParam int pe_num,
    		                                   HttpSession session) {
    	
    	Map<String, Object> pomap = new HashMap<>();
    	IruckseoPortfolioDto podto = new IruckseoPortfolioDto();
    	String path = session.getServletContext().getRealPath("/iruckseoportfolio");
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
    	
    	
	   for(MultipartFile multipartFile : po_filepath) {
           try {
        	   String uploadfileName = sdf.format(new Date()) + "_" + multipartFile.getOriginalFilename();
               File tmp=new File(path+"\\"+uploadfileName);
               multipartFile.transferTo(tmp);
               
               
               podto.setPo_file(uploadfileName);
               podto.setPo_filepath(path);
               podto.setPe_num(pe_num);
    	
		        
		        // 최종 insert
		        irservice.insertPortfolio(podto);
		        
		        // 데이터 리스트 가져오기
		        List<IruckseoPortfolioDto> polist = irservice.OnePortfolioDatas(podto);
		        
		        // 반환할 데이터 맵에 추가
		        pomap.put("podto", podto);
		        pomap.put("polist", polist);
		        
		        return pomap;
           }
           catch(Exception e){
        	   System.out.println(e.getMessage());
           }
	   }
	   return null;
    }
    
    //포폴 삭제하기
    @PostMapping("/resumehome/portfoliodelete")
    @ResponseBody
    public Map<String, Object> portfoliodelete(@RequestBody IruckseoPortfolioDto podto) {
	    
    	Map<String, Object> map = new HashMap<String, Object>();
    	List<IruckseoPortfolioDto> polist = irservice.OnePortfolioDatas(podto);
    	
    	if( polist.size() == 1) {
    		
    		map.put("CODE", "99");
    		String filePath = polist.get(0).getPo_filepath();
    		String fileName = polist.get(0).getPo_file();
    		
    		File file = new File(filePath + "\\" + fileName);
    		if( file.exists() ){
    			boolean boln = file.delete();
    			if(boln){
    				irservice.deletePortfolio(podto.getPo_num());
    				map.put("CODE", "00");
    			} 
    		}
    	}
    	
    	return map;
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
    
    //이력서 전체 수정폼 띄우기
  	@GetMapping("/resumehome/updateForm")
  	public ModelAndView updateForm(@RequestParam int pe_num ,  HttpSession session ) {
  		
  		ModelAndView mview = new ModelAndView();
  		IruckseoInsertDto irdto = new IruckseoInsertDto();
  		int r_num =  Integer.parseInt((String)session.getAttribute("r_num"));
  		
  		// 회원정보 조회
  		RegisterDto rdto =reservice.getDataByNum((String)session.getAttribute("r_num"));
  		 
  		//인적사항
  		IruckseoInsertDto pedto = irservice.Personallist(pe_num);
  		
  		//학력
  		List<IruckseoSchoolDto> sclist = irservice.Schoollist(pe_num);
  		
  		//경력
  		List<IruckseoCareerDto> calist = irservice.Careerlist(pe_num);
  		
  		//경험/활동/교육
  		List<IruckseoActibityDto> aclist = irservice.Actibitylist(pe_num);
  		
  		//자격/어학/수상
  		List<IruckseoSpecDto> splist = irservice.Speclist(pe_num);
  		
  		//포트폴리오
  		List<IruckseoPortfolioDto> polist = irservice.Portfoliolist(pe_num);
  		
  		//자기소개서
  		List<IruckseoSelfDto> selist = irservice.Selflist(pe_num);
  		
  		//희망근무
  		IruckseoHopeDto hodto = irservice.Hopelist(pe_num);
  		
  		mview.addObject("pedto", pedto);
  		mview.addObject("rdto", rdto);
  		mview.addObject("sclist", sclist);
  		mview.addObject("calist", calist);
  		mview.addObject("aclist", aclist);
  		mview.addObject("splist", splist);
  		mview.addObject("polist", polist);
  		mview.addObject("selist", selist);
  		mview.addObject("hodto", hodto);
  		
  		//포워드
  		mview.setViewName("/sub/resumehome/iruckseoUpdateform");
  		
  		return mview;
  	}
 
 
 }

