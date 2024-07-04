package com.code.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;

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
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.CompanyIntroDto;
import com.code.dto.HireDto;
import com.code.dto.RegisterDto;
import com.code.dto.SupportDto;
import com.code.mapper.RegisterMapperInter;
import com.code.service.CompanyIntroService;
import com.code.service.HireService;
import com.code.service.IruckseoInsertService;
import com.code.service.RegisterService;

@Controller
public class RegisterController {

   @Autowired
   RegisterService service;
   
   @Autowired
   RegisterMapperInter mservice;
   
   @Autowired
   HireService hservice;
   
   @Autowired
   CompanyIntroService ciservice;
   
   @Autowired
   IruckseoInsertService irservice;

   @GetMapping("/")
   public String start(@ModelAttribute("hdto") HireDto dto, @ModelAttribute CompanyIntroDto cidto, Model model,HttpSession session)
   {
	   List<HireDto> hlist = hservice.getHireList();
	   List<HireDto> rlist = hservice.getHireList();
	   List<CompanyIntroDto> cilist = ciservice.getAllCompanyIntros();

	   
	   String myid =(String)session.getAttribute("myid");
	   Integer r_num = null;
	   
	   if(myid != null) {
		   r_num = hservice.getRnumById(myid);
	   }
	   if(r_num == null)
	   {
		   r_num = 0;
	   }

	   int rScrap = service.getScrapCount(r_num);
	   
	   List<HireDto> userScraps = hservice.getUserScraps(r_num);
	   
	   model.addAttribute("hlist", hlist);
	   model.addAttribute("cilist", cilist);
	   model.addAttribute("rlist",rlist);
	   model.addAttribute("r_num",r_num);
	   model.addAttribute("userScraps",userScraps);
	   model.addAttribute("rScrap",rScrap);
	   
	   return "/layout/main";
   }
      
   @GetMapping("/main")
   public String form(HttpSession session,Model model)
   {		
	   
      //폼의 아이디얻어줌
      String myid=(String)session.getAttribute("myid");
      //로그인중인지 아닌지
      String loginok=(String)session.getAttribute("loginok");
      
      //한번도 실행안하면 null
      if(loginok==null)
         return "/login/loginform";
      else {
         
         String name=service.getName(myid);
         model.addAttribute("name", name);
         return "/login/logoutform";
      }
      
   }
   
   //insert
   @PostMapping("member/insert")
   public String insert(@ModelAttribute RegisterDto dto,
         HttpSession session)
   {   
      String myid=(String)session.getAttribute("myid");
      String loginok=(String)session.getAttribute("loginok");
      
      try {
         service.insertRegister(dto);
      } catch (IllegalStateException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
         return "error";
      }
          return "/member/gaipsuccess";
   }
   
      //회원목록 삭제
      @GetMapping("/deleteRegister")
      @ResponseBody
      public void deleteRegister(String r_num)
      {
         service.deleteRegister(r_num);
      }
      
      //수정폼에 출력할 데이타 반환
      @GetMapping("/member/updateform")
      @ResponseBody
      public RegisterDto getData(String r_num)
      {
         return service.getDataByNum(r_num);
      }
      
      
      
      //이름 수정
      @PostMapping("/updateName")
      @ResponseBody
      public ResponseEntity<String> updateName(@RequestParam("r_num")String r_num, @RequestParam("r_name") String r_name, RegisterDto dto,HttpSession session)
      {
    	 dto.setR_num(r_num);
    	 dto.setR_name(r_name);
    	 
         service.updateName(dto);
         session.setAttribute("r_name", dto.getR_name());
         return ResponseEntity.ok("수정 완료");
         
      }
      
      //전화번호 수정
      @PostMapping("/updateHp")
      @ResponseBody
      public void updateHp(@ModelAttribute("r_hp") String r_hp, RegisterDto dto,HttpSession session)
      {
    	  dto.setR_hp(r_hp);
    	  service.updateHp(dto);
    	  session.setAttribute("r_hp", dto.getR_hp());
      }
      
      //프로필 경력 수정
      @PostMapping("/updateExp")
      @ResponseBody
      public void updateExp(@ModelAttribute("r_exp") String r_exp, RegisterDto dto,HttpSession session)
      {
    	  dto.setR_exp(r_exp);
    	  service.updateExp(dto);
      }
      
      @PostMapping("/updateJob")
      @ResponseBody
      public void updateJob(@ModelAttribute("r_job") String r_job, RegisterDto dto,HttpSession session) {
    	  
    	  dto.setR_job(r_job);
    	  service.updateJob(dto);
      }
      
      @PostMapping("/updateDescription")
      @ResponseBody
      public void upateDescription(@ModelAttribute("r_sogae")String r_sogae, RegisterDto dto,HttpSession session) {
    	  dto.setR_sogae(r_sogae);
    	  service.updateDescription(dto);
      }

      
	@GetMapping("/member/mypage")
	public String mypage(@ModelAttribute("hdto") HireDto dto,Model model,HttpSession session)
	{    
	   String myid =(String)session.getAttribute("myid");
	   String r_num2 =(String)session.getAttribute("r_num");
	   // 사용자의 r_num을 초기화
	   Integer r_num = null;

	   // 만약 myid가 null이 아니면, 해당 사용자의 r_num을 가져옴
	   if (myid != null) {
		   	r_num = hservice.getRnumById(myid);
	   }
	    
	   // r_num이 null인 경우, 기본값 0으로 설정
	   if (r_num == null) {
		   r_num = 0;
	   }
	   
	   int rScrap = service.getScrapCount(r_num);
	   int pe_num = service.getpenum(r_num2);
	   int midcount = service.getwritemiddle(pe_num);
	   int unicount = service.getwriteuni(pe_num);
	   Optional<Integer> carcountOpt = service.getwritecareer(pe_num);
	   int carcount = carcountOpt.orElse(0);
	   int actcount = service.getwriteactibity(pe_num);
	   int spcecount = service.getwritesp_ce(pe_num);
	   int splacount = service.getwritesp_la(pe_num);
	   int spawcount = service.getwritesp_aw(pe_num);
	   
	   int totalCount = irservice.getSupportCount(r_num);
	   int CountApply = irservice.getCountApply(r_num);
	   int CountApplySuc = irservice.getCountApplySuc(r_num);
	   int CountApplyFin = irservice.getCountApplyFin(r_num);
	   int CountApplyFail = irservice.getCountApplyFail(r_num);

	   model.addAttribute("pe_num", pe_num);
	   model.addAttribute("rScrap",rScrap);
	   model.addAttribute("midcount",midcount);
	   model.addAttribute("unicount", unicount);
	   model.addAttribute("carcount", carcount);
	   model.addAttribute("actcount", actcount);
	   model.addAttribute("spcecount", spcecount);
	   model.addAttribute("splacount", splacount);
	   model.addAttribute("spawcount", spawcount);
	   
	   model.addAttribute("count",totalCount);
	   model.addAttribute("apply",CountApply);
	   model.addAttribute("applySuc",CountApplySuc);
	   model.addAttribute("applyFin",CountApplyFin);
	   model.addAttribute("applyFail",CountApplyFail);
	   return "/sub/member/mypage"; 
	}
   
   
   
 @GetMapping("/member/apply")
   public String apply(@RequestParam(value="currentPage",defaultValue="1") int currentPage,HttpSession session,Model model) {
	 
	 int r_num = Integer.parseInt((String) session.getAttribute("r_num"));
	 
	 int perPage = 5;
	 int start;
	 
	 
	 start = (currentPage -1) * perPage;
	 
	 List<SupportDto> sulist = irservice.getSupportPaging(r_num,start,perPage);
	 int totalCount = irservice.getSupportCount(r_num);
	 int CountApply = irservice.getCountApply(r_num);
	 int CountApplySuc = irservice.getCountApplySuc(r_num);
	 int CountApplyFin = irservice.getCountApplyFin(r_num);
	 int CountApplyFail = irservice.getCountApplyFail(r_num);
	 
	 
	 model.addAttribute("sulist",sulist);
	 model.addAttribute("count",totalCount);
	 model.addAttribute("apply",CountApply);
	 model.addAttribute("applySuc",CountApplySuc);
	 model.addAttribute("applyFin",CountApplyFin);
	 model.addAttribute("applyFail",CountApplyFail);
	   
	   return "/sub/member/apply";
   }

   @GetMapping("/member/memberform")
   public String memberform() {
      return "/member/memberform";
   }
   
   
    @PostMapping("/checkDuplicateId")
       public ResponseEntity<String> checkDuplicateId(@RequestBody Map<String, String> requestData) {
           String id = requestData.get("id");
           boolean isUnique = service.isIdUnique(id);
           if (isUnique) {
               return ResponseEntity.ok("unique");
           } else {
               return ResponseEntity.ok("duplicate");
           }
       }
    
    @PostMapping("/checkDuplicateNn")
    public ResponseEntity<String> checkDuplicateNn(@RequestBody Map<String, String> requestData) {
       String nickname = requestData.get("nickname");
       boolean a = service.isNicknameUnique(nickname);
       if(a) {
          return ResponseEntity.ok("unique");
       } else {
          return ResponseEntity.ok("duplicate");
       }
    }
        
  //스크랩
    @ResponseBody
    @PostMapping("/member/addScrapRes")
    public void scrapInsertRes(@ModelAttribute("hdto") HireDto hdto, HttpSession session) {

        int r_num =  Integer.parseInt((String) session.getAttribute("r_num"));

        hdto.setR_num(r_num);
        service.scrapInsert(hdto);
    }

    @ResponseBody
    @PostMapping("/member/deleteScrapRes")
    public void scrapDeleteRes(@RequestParam int r_num, @RequestParam int h_num) {
        service.scrapDelete(r_num, h_num);
    }


   @GetMapping("/member/bookmarks")
   public String bookmarks(@ModelAttribute("hdto") HireDto dto,Model model,HttpSession session) { 
	   
	   List<HireDto> rlist = hservice.getHireList();
	  
	   
	   String myid =(String)session.getAttribute("myid");
	   Integer r_num = null;
	   
	   if(myid != null) {
		   r_num = hservice.getRnumById(myid);
	   }
	   if(r_num == null)
	   {
		   r_num = 0;
	   }
	   
	   int rScrap = service.getScrapCount(r_num);

	   List<HireDto> userScraps = hservice.getUserScraps(r_num);
	   
	   model.addAttribute("rlist",rlist);
	   model.addAttribute("r_num",r_num);
	   model.addAttribute("userScraps",userScraps);
	   model.addAttribute("rScrap",rScrap);
	   return "/sub/member/bookmarks";

   }
   
   @GetMapping("/member/companies")
   public String companies() {
	   return "/sub/member/companies";
   }
   
   
    
}