package com.code.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.code.dto.CompanyDto;
import com.code.dto.CustomerDto;
import com.code.dto.RegisterDto;
import com.code.service.CompanyService;
import com.code.service.CustomerService;
import com.code.service.ManagerService;
import com.code.service.RegisterService;

@Controller
public class ManagerController {

	@Autowired
	RegisterService rservice;

	@Autowired
	ManagerService mservice;

	@Autowired
	CompanyService cservice;

	@Autowired
	CustomerService cusservice;

	@GetMapping("/manager/main")
	public String main() {
		return "manager/managermain";
	}

	// 회원 관리
	@GetMapping("/manager/member")
	public String member(Model model, @RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {

		int r_count = mservice.countRegister();

		// 페이징에 필요한 변수

		int perPage = 10; // 한페이지당 보여질 글의 갯수
		int perBlock = 5; // 한블럭당 보여질 페이지 갯수
		int start; // db에서 가져올 글의 시작번호(mysql은 첫글이0번,오라클은 1번);
		int startPage; // 각블럭당 보여질 시작페이지
		int endPage; // 각블럭당 보여질 끝페이지
		int totalPage; // 총페이지수
		int no; // 각페이지당 출력할 시작번호

		// 총페이지수 구한다
		// 총글갯수/한페이지당보여질갯수로 나눔(7/5=1)
		// 나머지가 1이라도 있으면 무조건 1페이지 추가(1+1=2페이지가 필요)
		totalPage = r_count / perPage + (r_count % perPage == 0 ? 0 : 1);

		// 각블럭당 보여질 시작페이지
		// perBlock=5일경우 현재페이지가 1~5일경우 시작페이지가1,끝페이지가 5
		// 현재가 13일경우 시작:11 끝:15
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;

		// 총페이지가 23일경우 마지막블럭은 끝페이지가 25가 아니라 23
		if (endPage > totalPage)
			endPage = totalPage;

		// 각페이지에서 보여질 시작번호
		// 1페이지:0, 2페이지:5 3페이지: 10.....
		start = (currentPage - 1) * perPage;

		// 각페이지당 출력할 시작번호 구하기
		// 총글개수가 23 , 1페이지:23 2페이지:18 3페이지:13
		no = r_count - (currentPage - 1) * perPage;

		// 리스트
		List<RegisterDto> rlist = mservice.getAllRegister(start, perPage);

		// 저장
		model.addAttribute("no", no);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);

		model.addAttribute("rlist", rlist);
		model.addAttribute("r_count", r_count);

		return "manager/managermember";
	}

	@GetMapping("/manager/memberedit")
	public String memberedit(HttpSession session, Model model, String r_num) {

		RegisterDto rdto = mservice.getRegister(r_num);
		model.addAttribute("rdto", rdto);
		// System.out.println(rdto);

		return "manager/memberedit";
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

	// 기업 관리
	@GetMapping("/manager/company")
	public String company(Model model, @RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {

		int c_count = mservice.countCompany();

		// 페이징에 필요한 변수

		int perPage = 10; // 한페이지당 보여질 글의 갯수
		int perBlock = 5; // 한블럭당 보여질 페이지 갯수
		int start; // db에서 가져올 글의 시작번호(mysql은 첫글이0번,오라클은 1번);
		int startPage; // 각블럭당 보여질 시작페이지
		int endPage; // 각블럭당 보여질 끝페이지
		int totalPage; // 총페이지수
		int no; // 각페이지당 출력할 시작번호

		// 총페이지수 구한다
		// 총글갯수/한페이지당보여질갯수로 나눔(7/5=1)
		// 나머지가 1이라도 있으면 무조건 1페이지 추가(1+1=2페이지가 필요)
		totalPage = c_count / perPage + (c_count % perPage == 0 ? 0 : 1);

		// 각블럭당 보여질 시작페이지
		// perBlock=5일경우 현재페이지가 1~5일경우 시작페이지가1,끝페이지가 5
		// 현재가 13일경우 시작:11 끝:15
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;

		// 총페이지가 23일경우 마지막블럭은 끝페이지가 25가 아니라 23
		if (endPage > totalPage)
			endPage = totalPage;

		// 각페이지에서 보여질 시작번호
		// 1페이지:0, 2페이지:5 3페이지: 10.....
		start = (currentPage - 1) * perPage;

		// 각페이지당 출력할 시작번호 구하기
		// 총글개수가 23 , 1페이지:23 2페이지:18 3페이지:13
		no = c_count - (currentPage - 1) * perPage;

		// 리스트
		List<CompanyDto> clist = mservice.getAllCompany(start, perPage);

		// 저장
		model.addAttribute("no", no);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);

		model.addAttribute("clist", clist);
		model.addAttribute("c_count", c_count);

		return "manager/managercompany";
	}

	@GetMapping("/manager/companyedit")
	public String companyedit(HttpSession session, Model model, String c_num) {

		CompanyDto cdto = mservice.getCompany(c_num);
		model.addAttribute("cdto", cdto);
		// System.out.println(cdto);

		return "manager/companyedit";
	}

	@PostMapping("/manager/companyupdate")
	public String companyupdate(@ModelAttribute CompanyDto dto, String c_num, MultipartFile c_registration_file,
			HttpSession session) {

		String path = session.getServletContext().getRealPath("/company_regi_files");

		CompanyDto cdto = mservice.getCompany(c_num);

		if (!c_registration_file.isEmpty()) {
			// Delete the existing file if it exists
			if (cdto.getC_regi_file() != null) {
				File existingFile = new File(path + "\\" + cdto.getC_regi_file());
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
			// 파일 업데이트가 없는 경우 그대로 유지.
			dto.setC_regi_file(cdto.getC_regi_file());
		}

		cservice.updateCompany(dto); // db update

		return "redirect:/manager/company";
	}

	@GetMapping("/manager/companydelete")
	public String companydelete(String c_num) {
		cservice.deleteCompany(c_num);
		return "redirect:/manager/company";
	}

	@GetMapping("/manager/info")
	public String info(Model model, @RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {

		int cus_count = mservice.countCustomer();

		// 페이징에 필요한 변수

		int perPage = 10; // 한페이지당 보여질 글의 갯수
		int perBlock = 5; // 한블럭당 보여질 페이지 갯수
		int start; // db에서 가져올 글의 시작번호(mysql은 첫글이0번,오라클은 1번);
		int startPage; // 각블럭당 보여질 시작페이지
		int endPage; // 각블럭당 보여질 끝페이지
		int totalPage; // 총페이지수
		int no; // 각페이지당 출력할 시작번호

		// 총페이지수 구한다
		// 총글갯수/한페이지당보여질갯수로 나눔(7/5=1)
		// 나머지가 1이라도 있으면 무조건 1페이지 추가(1+1=2페이지가 필요)
		totalPage = cus_count / perPage + (cus_count % perPage == 0 ? 0 : 1);

		// 각블럭당 보여질 시작페이지
		// perBlock=5일경우 현재페이지가 1~5일경우 시작페이지가1,끝페이지가 5
		// 현재가 13일경우 시작:11 끝:15
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;

		// 총페이지가 23일경우 마지막블럭은 끝페이지가 25가 아니라 23
		if (endPage > totalPage)
			endPage = totalPage;

		// 각페이지에서 보여질 시작번호
		// 1페이지:0, 2페이지:5 3페이지: 10.....
		start = (currentPage - 1) * perPage;

		// 각페이지당 출력할 시작번호 구하기
		// 총글개수가 23 , 1페이지:23 2페이지:18 3페이지:13
		no = cus_count - (currentPage - 1) * perPage;

		// 리스트
		List<CustomerDto> cuslist = mservice.getAllCustomer(start, perPage);

		// 저장
		model.addAttribute("no", no);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);

		model.addAttribute("cuslist", cuslist);
		model.addAttribute("cus_count", cus_count);

		return "manager/managerinfo";
	}

	@GetMapping("/manager/infowrite")
	public String infowrite() {
		return "manager/infowrite";
	}

	@GetMapping("/manager/infoedit")
	public String infoedit(HttpSession session, Model model, int cus_num) {

		CustomerDto cusdto = mservice.getCustomer(cus_num);
		model.addAttribute("cusdto", cusdto);

		return "manager/infoedit";
	}

	@PostMapping("/manager/infoinsert")
	public String infoinsert(CustomerDto dto, @RequestParam("upload") MultipartFile file, HttpSession session) {

		// 파일 업로드 처리
		if (!file.isEmpty()) {
			String fileName = file.getOriginalFilename();
			String uploadDir = session.getServletContext().getRealPath("/customerimage"); // 실제 업로드할 디렉토리 설정
			File dir = new File(uploadDir);
			if (!dir.exists()) {
				dir.mkdirs(); // 디렉토리가 존재하지 않으면 생성
			}
			try {
				File uploadedFile = new File(uploadDir + "/" + fileName);
				file.transferTo(uploadedFile);
				dto.setCus_photo(fileName); // 업로드된 파일명을 DTO에 설정
				System.out.println("Uploaded file path: " + uploadedFile.getAbsolutePath());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
	        dto.setCus_photo("no");
	    }

		// 데이터베이스에 DTO 저장
		mservice.insertCustomer(dto);

		return "redirect:/manager/info";
	}

	@PostMapping("/manager/infoupdate")
	public String infoupdate(@ModelAttribute CustomerDto dto, @RequestParam int cus_num, MultipartFile file,
			HttpSession session ,@RequestParam String isDeleted) {

		String path = session.getServletContext().getRealPath("/customerimage");

	    if (isDeleted.equals("true") || file == null || file.getOriginalFilename().equals("")) {
	        dto.setCus_photo("no");

	        // Delete the previous file if it exists
	        String cus_photo = mservice.getCustomer(cus_num).getCus_photo();
	        File file2 = new File(path + "\\" + cus_photo);

	        if (file2.exists()) {
	            file2.delete();
	        }
	    } else {
	        // Handle new file upload
	        String cus_photo = mservice.getCustomer(cus_num).getCus_photo();
	        File file2 = new File(path + "\\" + cus_photo);

	        if (file2.exists()) {
	            file2.delete();
	        }

	        String photname = file.getOriginalFilename();
	        dto.setCus_photo(photname);

	        try {
	            file.transferTo(new File(path + "\\" + photname));
	        } catch (IllegalStateException | IOException e) {
	            e.printStackTrace();
	        }
	    }

	    // Update customer data
	    mservice.updateCustomer(dto);

	    return "redirect:/manager/info";
	}

	@GetMapping("/manager/infodelete")
	public String infodelete(int cus_num) {
		mservice.deleteCustomer(cus_num);
		return "redirect:/manager/info";
	}

	@GetMapping("/manager/event")
	public String event(Model model, @RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {
		
		int cus_count = mservice.countCustomerEvent();

		// 페이징에 필요한 변수

		int perPage = 10; // 한페이지당 보여질 글의 갯수
		int perBlock = 5; // 한블럭당 보여질 페이지 갯수
		int start; // db에서 가져올 글의 시작번호(mysql은 첫글이0번,오라클은 1번);
		int startPage; // 각블럭당 보여질 시작페이지
		int endPage; // 각블럭당 보여질 끝페이지
		int totalPage; // 총페이지수
		int no; // 각페이지당 출력할 시작번호

		// 총페이지수 구한다
		// 총글갯수/한페이지당보여질갯수로 나눔(7/5=1)
		// 나머지가 1이라도 있으면 무조건 1페이지 추가(1+1=2페이지가 필요)
		totalPage = cus_count / perPage + (cus_count % perPage == 0 ? 0 : 1);

		// 각블럭당 보여질 시작페이지
		// perBlock=5일경우 현재페이지가 1~5일경우 시작페이지가1,끝페이지가 5
		// 현재가 13일경우 시작:11 끝:15
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;

		// 총페이지가 23일경우 마지막블럭은 끝페이지가 25가 아니라 23
		if (endPage > totalPage)
			endPage = totalPage;

		// 각페이지에서 보여질 시작번호
		// 1페이지:0, 2페이지:5 3페이지: 10.....
		start = (currentPage - 1) * perPage;

		// 각페이지당 출력할 시작번호 구하기
		// 총글개수가 23 , 1페이지:23 2페이지:18 3페이지:13
		no = cus_count - (currentPage - 1) * perPage;

		// 리스트
		List<CustomerDto> cuslist = mservice.getAllCustomerEvent(start, perPage);

		// 저장
		model.addAttribute("no", no);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);

		model.addAttribute("cuslist", cuslist);
		model.addAttribute("cus_count", cus_count);

		return "manager/managerevent";
	}

	@GetMapping("/manager/edit")
	public String edit() {
		return "manager/manageredit";
	}

}
