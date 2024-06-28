package com.code.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.CompanyDto;
import com.code.dto.CompanyIntroDto;
import com.code.dto.HireDto;
import com.code.dto.IruckseoActibityDto;
import com.code.dto.IruckseoCareerDto;
import com.code.dto.IruckseoHopeDto;
import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoPortfolioDto;
import com.code.dto.IruckseoSchoolDto;
import com.code.dto.IruckseoSelfDto;
import com.code.dto.IruckseoSpecDto;
import com.code.dto.RegisterDto;
import com.code.dto.SupportDto;
import com.code.service.CompanyIntroService;
import com.code.service.CompanyService;
import com.code.service.HireService;
import com.code.service.IruckseoInsertService;
import com.code.service.RegisterService;
import com.code.service.SupportService;


@Controller
public class CompanyController {

	@Autowired
	CompanyService cservice;

	//채용공고에서 사용
	@Autowired
	CompanyIntroService ciservice;

	//지원자 관리 페이지용
	@Autowired
	SupportService stservice;


	//이력서 service
	@Autowired
	IruckseoInsertService irservice;

	//이력서 보여주기용 일반 회원 service가져오기
	@Autowired
	RegisterService reservice;
	
	//채용공고리스트에서 사용
	@Autowired
	HireService hservice;


	//기업 로그인로그아웃관련 임시 통합페이지
	@GetMapping("/company")
	public String imsicom() {
		return "/company/companyimsiall"; //앞에 '/'넣은게 최신입니다.
	}

	//채용공고 작성 페이지로 이동하기
	@GetMapping("/hire/hirewrite")
	public String gohirewrite(HttpSession session, Model model) {

		String c_id = (String)session.getAttribute("c_myid");

		int c_num = cservice.selectC_num(c_id);
		int ci_num = ciservice.selectCi_num(c_num);
		model.addAttribute("c_id",c_id);
		model.addAttribute("c_num",c_num);
		model.addAttribute("ci_num",ci_num);
		return "/hire/hirewrite";
	}

	//아직없어!
	@GetMapping("/company/list")
	public ModelAndView list() {
		ModelAndView mview = new ModelAndView();

		List<CompanyDto> c_list = cservice.getAllCompanys();

		mview.addObject("c_list", c_list);
		mview.addObject("c_mcount", c_list.size());

		mview.setViewName("/company/companylist");
		return mview;
	}

	@GetMapping("/company/form")
	public String form() {
		return "/company/companygaip";
	}

	// id체크
	// Map으로 하는 이유 :ajax => key value로 저장할때
	@GetMapping("/company/idcheck")
	@ResponseBody
	public Map<String, Integer> idcheckprocess(@RequestParam String c_id) {
		Map<String, Integer> map = new HashMap<>();

		// 로그 추가
		System.out.println("Received ID for check: " + c_id);

		// id 체크 메서드 호출
		int n = cservice.getSearchId(c_id);

		// 로그 추가
		System.out.println("ID check result for " + c_id + ": " + n);

		map.put("count", n); // 1 or 0
		return map;
	}

	// insert(기업 회원 가입 작동)
	@PostMapping("/company/gaip")
	public String insert(@ModelAttribute CompanyDto dto, HttpSession session) {
		String c_myid = (String) session.getAttribute("c_myid");
		String c_loginok = (String) session.getAttribute("c_loginok");

		cservice.insertCompany(dto);

		return "/company/gaipsuccess";
	}

	// 회원정보로 가기
	@GetMapping("/company/myinfo")
	public String myinfo(Model model, HttpSession session) {
		String c_myid = (String) session.getAttribute("c_myid");
		CompanyDto dto = cservice.getDataById(c_myid); // myid로 CompanyDto를 가져오는 서비스 메서드

		// List<CompanyDto> c_list=cservice.getAllCompanys();
		// model.addAttribute("c_list", c_list);

		model.addAttribute("dto", dto);
		return "/company/companymypage";
	}

	// 회원리스트확인

	// 회원목록 삭제
	@GetMapping("/company/delete")
	@ResponseBody
	public void deleteMember(String c_num) {
		cservice.deleteCompany(c_num);
	}

	// 수정폼으로 이동하기
	@GetMapping("/company/companyupdate")
	public String companyupdate(Model model, HttpSession session) {
		String c_myid = (String) session.getAttribute("c_myid");
		CompanyDto dto = cservice.getDataById(c_myid); // myid로 CompanyDto를 가져오는 서비스 메서드

		String c_num = dto.getC_num();
		model.addAttribute("dto", dto);
		return "/company/companyupdate";
	}

	// 수정+  0617추가 : 수정폼에 사업자등록증 파일 추가하기.
	@PostMapping("/company/update")
	public String update(@ModelAttribute CompanyDto dto, String c_num, MultipartFile c_registration_file, HttpSession session) {

		String path = session.getServletContext().getRealPath("/company_regi_files");

		CompanyDto existingDto = cservice.getDataByNum(c_num);

		if (!c_registration_file.isEmpty()) {
			// Delete the existing file if it exists
			if (existingDto.getC_regi_file() != null) {
				File existingFile = new File(path + "\\" + existingDto.getC_regi_file());
				if (existingFile.exists()) {
					existingFile.delete();
				}
			}

			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String fileName = sdf.format(new Date()) + c_registration_file.getOriginalFilename();

			try {
				c_registration_file.transferTo(new File(path + "\\" + fileName));
				dto.setC_regi_file(fileName); // set new file name in the DTO
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		} else {
			//파일 업데이트가 없는 경우 그대로 유지.
			dto.setC_regi_file(existingDto.getC_regi_file());
		}

		cservice.updateCompany(dto); // db update

		return "redirect:/company/companyupdate"; // redirect to the myinfo mapping
	}


	//기업 계정관리 페이지로 이동
	@GetMapping("/company/account")
	public String accountmain(HttpSession session,Model model) {
		String c_myid = (String) session.getAttribute("c_myid");
		CompanyDto dto = cservice.getDataById(c_myid); // myid로 CompanyDto를 가져오는 서비스 메서드

		String c_num = dto.getC_num();

		CompanyIntroDto cdto = ciservice.getDataByNum(c_num);
		model.addAttribute("dto", dto);
		model.addAttribute("cdto", cdto);

		return "/companyaccount/companyaccount_main";
	}


	//기업회원 : 계정탈퇴 버튼 -> 계정탈퇴 폼으로 이동
	@GetMapping("/company/deleteaccount")
	public String comdeleteaccount() {

		return "/companyaccount/companyaccount_delete";
	}


	//계정 탈퇴하기
	@GetMapping("/company/deleteme")
	@ResponseBody
	public Map<String, String> deleteme(HttpSession session, @RequestParam String input_pass) {
		Map<String, String> response = new HashMap<>();
		String c_myid = (String) session.getAttribute("c_myid");
		CompanyDto dto = cservice.getDataById(c_myid);
		String c_pass = dto.getC_pass();
		String c_num = dto.getC_num();

		//비밀번호 체크하고 일치하면 계정 삭제, 아니면 계정삭제 불가
		if (input_pass.equals(c_pass)) {
			cservice.deleteCompany(c_num);
			session.removeAttribute("c_loginok");
			session.removeAttribute("c_myid");
			response.put("status", "success");
		} else {
			response.put("status", "error");
			response.put("message", "비밀번호가 다릅니다.");
		}

		return response;
	}


	// 비밀번호 변경 폼으로 이동
	//기업회원 : 비밀번호 변경 버튼 클릭
	@GetMapping("/company/changepassform")
	public String comchangepassform() {

		return "/companyaccount/companyaccount_changepassform";
	}

	//기업회원 : 내 비밀번호 변경
	@PostMapping("/company/changepass")
	@ResponseBody
	public Map<String, String> companyupdatepassword(HttpSession session, @RequestParam String original_pass, @RequestParam String new_pass) {
		Map<String, String> response = new HashMap<>();
		String c_myid = (String) session.getAttribute("c_myid");
		CompanyDto dto = cservice.getDataById(c_myid);
		String c_pass = dto.getC_pass(); // 기존의 비밀번호 가져오기

		// 비밀번호 체크하고 일치하면 비밀번호 변경, 아니면 변경 불가
		if (original_pass.equals(c_pass)) { // 기존의 비밀번호 일치
			dto.setC_pass(new_pass); // 새로운 비밀번호 설정
			cservice.updateCompanyPass(dto); // 데이터베이스에 변경 사항 반영
			response.put("message", "비밀번호가 변경되었습니다.");
			response.put("status", "success");
		} else {
			response.put("status", "error");
			response.put("message", "기존 비밀번호가 다릅니다.");
		}

		return response;
	}

	// 기업명 변경 폼으로 이동
	//기업회원 : 기업명 변경 버튼 클릭
	@GetMapping("/company/changecompanyname")
	public String changecompanyname() {

		return "/companyaccount/companyaccount_namechange";
	}

	//기업회원 : 기업명 변경
	@GetMapping("/company/updatename")
	@ResponseBody
	public Map<String, String> updatecomname(HttpSession session, @RequestParam String input_pass,@RequestParam String new_name) {
		Map<String, String> response = new HashMap<>();
		String c_myid = (String) session.getAttribute("c_myid");
		CompanyDto dto = cservice.getDataById(c_myid);
		String c_pass = dto.getC_pass();


		//비밀번호 체크하고 일치하면 기업명 변경, 아니면 불가
		if (input_pass.equals(c_pass)) {// 기존의 비밀번호 일치
			dto.setC_name(new_name);// 새로운 비밀번호 설정
			cservice.updateCompanyName(dto); // 데이터베이스에 변경 사항 반영

			//기업 이름 변경을 반영
			session.setAttribute("c_loginname", new_name);
			response.put("message", "기업명이 변경되었습니다.");
			response.put("status", "success");


		} else {
			response.put("status", "error");
			response.put("message", "비밀번호가 다릅니다.");
		}

		return response;
	}

	//사업자등록번호 변경 폼으로 이동
	//기업회원 : 사업자등록번호 변경 버튼 클릭
	@GetMapping("/company/updateRegiNumForm")
	public String changeRegiNumForm() {

		return "/companyaccount/companyaccount_reginum";
	}

	//기업회원 : 사업자등록번호 변경 + 사업자등록증 재업
	@PostMapping("/company/updateRegiNum")
	@ResponseBody
	public Map<String, String> updateRegiNum(MultipartFile new_regifile, HttpSession session, @RequestParam String input_pass, @RequestParam String new_reginum) {
		Map<String, String> response = new HashMap<>();
		String c_myid = (String) session.getAttribute("c_myid");
		CompanyDto dto = cservice.getDataById(c_myid);
		String c_pass = dto.getC_pass();

		String path = session.getServletContext().getRealPath("/company_regi_files");

		// 비밀번호 체크하고 일치하면 사업자등록번호 변경, 아니면 불가
		if (input_pass.equals(c_pass)) { // 기존 비밀번호 일치

			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String fName = sdf.format(new Date()) + "_" + new_regifile.getOriginalFilename();

			try {
				// Delete the existing file if it exists
				if (dto.getC_regi_file() != null) {
					File existingFile = new File(path + "\\" + dto.getC_regi_file());
					if (existingFile.exists()) {
						existingFile.delete();
					}
				}

				new_regifile.transferTo(new File(path + "\\" + fName));

				dto.setC_reginum(new_reginum); // 새로운 사업자등록번호 설정
				dto.setC_regi_file(fName); // 새로운 사업자등록번호 파일명 설정

				cservice.updateCompanyRegiNum(dto); // 데이터베이스에 변경 사항 반영

				response.put("message", "사업자등록번호가 변경되었습니다.");
				response.put("status", "success");

			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
				response.put("status", "error");
				response.put("message", "파일 업로드 중 오류가 발생했습니다.");
			}

		} else {
			response.put("status", "error");
			response.put("message", "비밀번호가 다릅니다.");
		}

		return response;
	}



	//기업 스크랩
	//스크랩 insert
	@ResponseBody
	@PostMapping("/company/scrap")
	public void scrapInsert(@ModelAttribute("cdto") CompanyDto cdto, HttpSession session) {

		int r_num =  Integer.parseInt((String) session.getAttribute("r_num"));

		cdto.setR_num(r_num);
		cservice.scrapCompanyInsert(cdto);
	}

	//스크랩 delete
	@ResponseBody
	@PostMapping("/company/scrapdelete")
	public void scrapDelete(@RequestParam int c_num, HttpSession session) {
		int r_num =  Integer.parseInt((String) session.getAttribute("r_num"));
		cservice.scrapCompanyDelete(r_num, c_num);
	}


	//CompanyHire작동오류로 임시로 옮김.
	//기업 마이페이지 => 채용공고 리스트 클릭
	@GetMapping("/company/companyhire")
	public String comhire(HttpSession session, Model model) {
		try {
			String c_myid = (String) session.getAttribute("c_myid");
			String c_loginok = (String) session.getAttribute("c_loginok");


			// c_myid를 통해 CompanyDto를 가져오기
			CompanyDto cdto = cservice.getDataById(c_myid);

			// c_num을 가져오기
			// c_num을 가져오기
			String c_num_str = cdto.getC_num();  // c_num을 String으로 가져오기
			int c_num = Integer.parseInt(c_num_str);  // String을 int로 변환


			// c_num을 통해 hire 테이블의 리스트를 가져오기
			List<HireDto> hlist = hservice.getHireListByCnum(c_num);
			System.out.println(c_num);

			// 모델에 hlist를 추가
			model.addAttribute("hlist", hlist);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/companyhire/companyhire_gongolist"; 
	}

	//기업 마이페이지 => 전체 지원자 관리 클릭
	@GetMapping("/company/jiwon")
	public String comjiwon(HttpSession session, Model model) {

		String c_myid = (String) session.getAttribute("c_myid");
		String c_loginok = (String) session.getAttribute("c_loginok");


		// c_myid를 통해 CompanyDto를 가져오기
		CompanyDto dto = cservice.getDataById(c_myid);

		// 로그인한 회사(c_myid)의 회사넘버(c_num) 가져오기.
		String c_num = dto.getC_num();

		// 위에서 얻은 c_num을 넣어서 support 테이블 List로 가져오기
		List<SupportDto> slist = stservice.selectSupportByCnum(c_num);


		// 모델에 리스트와 변환된 날짜 리스트를 추가
		model.addAttribute("slist", slist);

		return "/companyhire/companyhire_jiwon"; 
	}

	//기업 지원자 관리 상태 update
	@PostMapping("/company/updateStatus")
	@ResponseBody
	public ResponseEntity<String> updateStatus(@RequestBody Map<String, String> payload) {
		String st_num = payload.get("st_num");
		String st_result = payload.get("st_result");

		try {
			stservice.updateSupportResult(st_num, st_result);
			return ResponseEntity.ok("상태가 성공적으로 업데이트되었습니다.");
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("상태 업데이트 중 오류가 발생했습니다.");
		}
	}


	// 기업의 '전체 지원자 관리' 페이지에서 사용할 용도의 update문 : st_open을 '열람'으로 update하기
	@PostMapping("/company/updateSupportOpen")
	public void updateSupportOpen(@RequestBody Map<String, String> requestData) {
		String st_num = requestData.get("st_num");
		stservice.updateSupportOpen(st_num);
	}

	//지원자 이력서 확인할 때
	@PostMapping("/company/handleClick")
	public void handleClick(@RequestParam("pe_num") String pe_num,
			@RequestParam("r_num") String r_num,
			@RequestParam("st_num") String st_num,
			HttpServletResponse response) throws IOException {
		// st_open 값을 '열람'으로 업데이트
		stservice.updateSupportOpen(st_num);

		// 기존 a 태그의 기능 수행
		String url = "/resumehome/iruckseolist1?pe_num=" + pe_num + "&r_num=" + r_num;
		response.sendRedirect(url);
	}


	//이력서 전체 리스트 띄우기
	@GetMapping("/resumehome/iruckseolist1")
	public ModelAndView iruckseolist(@RequestParam int pe_num ,@RequestParam String r_num) {

		ModelAndView mview = new ModelAndView();
		//IruckseoInsertDto irdto = new IruckseoInsertDto();
		//int r_num =  Integer.parseInt(r_num);

		// 회원정보 조회
		RegisterDto rdto =reservice.getDataByNum(r_num);

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

		//포워드: 일부러 맨앞의 /빼고 함.
		mview.setViewName("resumehome/iruckseolist2");

		return mview;
	}

	// 잠깐 연습용 기업 마이페이지 => 제안 보낸 인재풀 관리
	@GetMapping("/company/injae")
	public String cominjae() {
		return "/companyhire/companyhire_injae"; 
	}


}