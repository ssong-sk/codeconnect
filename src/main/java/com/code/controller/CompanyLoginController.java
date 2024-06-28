package com.code.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.code.dto.CompanyDto;
import com.code.dto.HireDto;
import com.code.service.CompanyService;
import com.code.service.HireService;




@Controller
public class CompanyLoginController {


	@Autowired
	CompanyService cservice;
	
	//로그인하자마자 채용공고 관리 페이지로 보이기 위함.
	@Autowired
	HireService hservice;

	//임시 제작 : 기업 로그인 페이지 불러오기 : 폐기
	/*
	@GetMapping("/imsiloginpage")
	public String imsiloginpage() {
		return "/companylogin/companyloginform"; //앞에 '/'있는게 최신입니다.
	}
	*/

	//아직 없어! : 폐기
	/*
	@GetMapping("/company/main")
	public String form(HttpSession session,Model model)
	{
		//폼의 아이디얻어줌
		String c_myid=(String)session.getAttribute("c_myid");
		//로그인중인지 아닌지
		String c_loginok=(String)session.getAttribute("c_loginok");


		//한번도 실행안하면 null
		if(c_loginok==null)
			return "/login/loginform";
		else {

			CompanyDto dto = cservice.getDataById(c_myid);
			String c_num=dto.getC_num();

			//String c_name=cservice.getCompanyName(c_myid);
			//model.addAttribute("c_name", c_name);
			return "/company/companymypage";
		}

	}
	*/



	@PostMapping("/company/loginprocess")
	public String loginprocess(@RequestParam String c_id,
			@RequestParam String c_pass,
			@RequestParam(required = false) String c_cbsave,
			HttpSession session,Model model)
	{

		int check=cservice.loginIdPassCheck(c_id, c_pass);

		if(check==1) {

			session.setMaxInactiveInterval(60*60*8); //8시간

			session.setAttribute("c_myid", c_id);
			session.setAttribute("c_loginok", "yes");
			session.setAttribute("c_saveok", c_cbsave);

			CompanyDto cdto = cservice.getDataById(c_id);
			// c_myid를 통해 CompanyDto를 가져오기
			session.setAttribute("c_num", cdto.getC_num());			
			session.setAttribute("c_loginname", cdto.getC_name());


			// c_num을 가져오기
			String c_num_str = cdto.getC_num();  // c_num을 String으로 가져오기
			int c_num = Integer.parseInt(c_num_str);  // String을 int로 변환


			// c_num을 통해 hire 테이블의 리스트를 가져오기
			List<HireDto> hlist = hservice.getHireListByCnum(c_num);
			//System.out.println(c_num);

			// 모델에 hlist를 추가
			model.addAttribute("hlist", hlist);

			return "/companyhire/companyhire_gongolist";

		}else {
			return "/companylogin/passfail";
		}


	}


	@GetMapping("/company/logoutprocess")
	public String logout(HttpSession session)
	{
		//기업 로그아웃시 세션 제거용
		session.removeAttribute("c_loginok");
		session.removeAttribute("c_loginname");
		session.removeAttribute("c_myid");
		session.removeAttribute("c_num");
		return "redirect:/login/main";
	}

}
