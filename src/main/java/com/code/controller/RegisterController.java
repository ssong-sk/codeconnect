package com.code.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.code.dto.RegisterDto;
import com.code.service.RegisterService;

@Controller
public class RegisterController {

   @Autowired
   RegisterService service;
   
   @GetMapping("/")
   public String start()
   {
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
   
   
   
   //회원정보로 가기
      @GetMapping("/member/myinfo")
      public String myinfo(Model model)
      {
         List<RegisterDto> list=service.getAllRegister();
         model.addAttribute("list", list);
         return "/member/memberinfo";
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
      public void updateName(RegisterDto dto)
      {
         service.updateName(dto);
      }
      
      //전화번호 수정
      @PostMapping("/updateHp")
      @ResponseBody
      public void updateHp(RegisterDto dto)
      {
    	  service.updateHp(dto);
      }
      
      //프로필 경력 수정
      @PostMapping("/updateExp")
      @ResponseBody
      public void updateExp(RegisterDto dto)
      {
    	  service.updateExp(dto);
      }
      
      @PostMapping("/updateJob")
      @ResponseBody
      public void updateJob(RegisterDto dto) {
    	  service.updateJob(dto);
      }
      
      @PostMapping("/updateDescription")
      @ResponseBody
      public void upateDescription(RegisterDto dto) {
    	  service.updateDescription(dto);
      }

      
   @GetMapping("/member/mypage")
   public String mypage()
   {
      return "/member/mypage";
   }
   
 @GetMapping("/member/apply")
   public String apply() {
	   return "/member/apply";
   }
   
   @GetMapping("/member/bookmarks")
   	public String bookmarks() {
	   return "/member/bookmarks";
   }
   
   @GetMapping("/member/companies")
   public String companies() {
	   return "/member/companies";
   }
   
   @GetMapping("/member/memberform")
   public String memberform() {
      return "/member/memberform";
   }
   
   @GetMapping("/member/register2")
   public String position() {
      return "/member/register2";
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
    
    
    
    
    
    
    
    
}