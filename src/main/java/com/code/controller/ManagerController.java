package com.code.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.code.dto.RegisterDto;
import com.code.service.ManagerService;
import com.code.service.RegisterService;

@Controller
public class ManagerController {
	
	@Autowired
	RegisterService rservice;
	
	@Autowired
	ManagerService mservice;
	
	@GetMapping("/manager/main")
	public String main() {
		return "/manager/managermain";
	}
	
	@GetMapping("/manager/member")
	public String member(Model model, @RequestParam(value = "currentPage",defaultValue = "1")int currentPage) {
		
		
		int r_count = mservice.countRegister();
		
		//페이징에 필요한 변수

		int perPage=10; //한페이지당 보여질 글의 갯수
		int perBlock=5; //한블럭당 보여질 페이지 갯수
		int start; //db에서 가져올 글의 시작번호(mysql은 첫글이0번,오라클은 1번);
		int startPage; //각블럭당 보여질 시작페이지
		int endPage; //각블럭당 보여질 끝페이지
		int totalPage; //총페이지수
		int no; //각페이지당 출력할 시작번호

		//총페이지수 구한다
		//총글갯수/한페이지당보여질갯수로 나눔(7/5=1)
		//나머지가 1이라도 있으면 무조건 1페이지 추가(1+1=2페이지가 필요)
		totalPage=r_count/perPage+(r_count%perPage==0?0:1);

		//각블럭당 보여질 시작페이지
		//perBlock=5일경우 현재페이지가 1~5일경우 시작페이지가1,끝페이지가 5
		//현재가 13일경우 시작:11 끝:15
		startPage=(currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;

		//총페이지가 23일경우 마지막블럭은 끝페이지가 25가 아니라 23
		if(endPage>totalPage)
			endPage=totalPage;

		//각페이지에서 보여질 시작번호
		//1페이지:0, 2페이지:5 3페이지: 10.....
		start=(currentPage-1)*perPage;

		//각페이지당 출력할 시작번호 구하기
		//총글개수가 23  , 1페이지:23 2페이지:18  3페이지:13
		no=r_count-(currentPage-1)*perPage;

		//리스트
		List<RegisterDto> rlist = mservice.getAllRegister(start, perPage);

		//저장
		model.addAttribute("no", no);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);
		

		model.addAttribute("rlist",rlist);
		model.addAttribute("r_count", r_count);
		
		return "/manager/managermember";
	}
	
	@GetMapping("/manager/memberedit")
	public String memberedit(HttpSession session, Model model, String r_num) {
		
		RegisterDto rdto = mservice.getRegister(r_num);
		model.addAttribute("rdto", rdto);
		System.out.println(rdto);
		
		return "/manager/memberedit";
	}
	
	@PostMapping("/manager/memberupdate")
	public String memberupdate(@ModelAttribute("dto") RegisterDto dto) {
		mservice.updateRegister(dto);
		return "redirect:/manager/member";	
	}
	
	@GetMapping("/manager/memberdelete")
	public String memberdelete(String r_num) {
		mservice.deleteRegister(r_num);
		return "redirect:/manager/member";	
	}
	
	@GetMapping("/manager/company")
	public String company() {
		return "/manager/managercompany";
	}
	
	@GetMapping("/manager/info")
	public String info() {
		return "/manager/managerinfo";
	}
	
	@GetMapping("/manager/event")
	public String event() {
		return "/manager/managerevent";
	}
	
	@GetMapping("/manager/edit")
	public String edit() {
		return "/manager/manageredit";
	}

}
