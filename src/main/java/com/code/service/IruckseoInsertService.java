package com.code.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.CompanyDto;
import com.code.dto.HireDto;
import com.code.dto.IruckseoActibityDto;
import com.code.dto.IruckseoCareerDto;
import com.code.dto.IruckseoHopeDto;
import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoPortfolioDto;
import com.code.dto.IruckseoSchoolDto;
import com.code.dto.IruckseoSelfDto;
import com.code.dto.IruckseoSpecDto;
import com.code.dto.SupportDto;
import com.code.mapper.IruckseoInsertMapperInter;

@Service
public class IruckseoInsertService implements IruckseoInsertServiceInter {
	
	//전체 이력서내역  mapperinter
	@Autowired
	IruckseoInsertMapperInter irmapper;

	//이력서 insert 
	public void insertPersonal(IruckseoInsertDto irdto) {
		// TODO Auto-generated method stub
		irmapper.insertPersonal(irdto);
	}
	
	//이력서 update
	public void updatePersonal(IruckseoInsertDto irdto) {
		// TODO Auto-generated method stub
		irmapper.updatePersonal(irdto);
	}
	
	//이력서 단건 list
	public List<IruckseoInsertDto> OnePersonalDatas(IruckseoInsertDto pedto) {
		// TODO Auto-generated method stub
		return irmapper.OnePersonalDatas(pedto);
	}

	//이력서 인적사항 list 출력
	public List<IruckseoInsertDto> allPersonallist(IruckseoInsertDto pedto) {
		// TODO Auto-generated method stub
		return irmapper.allPersonallist(pedto);
	}
	
	//이력서 pe_num으로 조회
	public IruckseoInsertDto Personallist(int pe_num) {
		// TODO Auto-generated method stub
		return irmapper.Personallist(pe_num);
	}
	
    //이력서 희망조건 및 제목 리스트 출력
	public List<IruckseoInsertDto> allPersonalDatas(int r_num, int start, int perPage) {
        Map<String, Object> map = new HashMap<>();
	    
	    map.put("r_num", r_num);
	    map.put("start", start);
	    map.put("perPage", perPage); // 수정: 키 이름을 SQL 쿼리와 일치하게 설정
	    
	    return irmapper.allPersonalDatas(map);
	}
	
	//이력서 갯수
	public int getPersonalCount(int r_num) {
		// TODO Auto-generated method stub
		return irmapper.getPersonalCount(r_num);
	}
	
	//이력서 전체 삭제
	public void deletePersonal(int pe_num) {
		// TODO Auto-generated method stub
		irmapper.deletePersonal(pe_num);
	}
	
	//school insert
	@Override
	public void insertSchool(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		irmapper.insertSchool(scdto);
	}


	//학력 전체리스트 출력
	public List<IruckseoSchoolDto> allSchoolDatas(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		return irmapper.allSchoolDatas(scdto);
	}
	
	//school 단건list 출력하기
	@Override
	public List<IruckseoSchoolDto> OneSchoolDatas(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		return irmapper.OneSchoolDatas(scdto);
	}
	
	//학력 pe_num 조회
	public List<IruckseoSchoolDto> Schoollist(int pe_num) {
		// TODO Auto-generated method stub
		return irmapper.Schoollist(pe_num);
	}


	//학력 school 삭제하기
	@Override
	public void deleteSchool(int sc_num) {
		// TODO Auto-generated method stub
		irmapper.deleteSchool(sc_num);
	}

	//학력 수정폼
	@Override
	public IruckseoSchoolDto selectNumSchool(int sc_num) {
		// TODO Auto-generated method stub
		return irmapper.selectNumSchool(sc_num);
	}

	//학력 수정하기
	@Override
	public void updateSchool(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		irmapper.updateSchool(scdto);
	}

	//경력 insert
	public void insertCareer(IruckseoCareerDto cadto) {
		// TODO Auto-generated method stub
		irmapper.insertCareer(cadto);
	}

	//경력 단건 list 출력
	public List<IruckseoCareerDto> OneCareerDatas(IruckseoCareerDto cadto) {
		// TODO Auto-generated method stub
		return irmapper.OneCareerDatas(cadto);
	}

	//경력 수정폼 띄우기
	public IruckseoCareerDto selectNumCareer(int ca_num) {
		// TODO Auto-generated method stub
		return irmapper.selectNumCareer(ca_num);
	}
	
	//경력 pe_num 조회
	public List<IruckseoCareerDto> Careerlist(int pe_num) {
		// TODO Auto-generated method stub
		return irmapper.Careerlist(pe_num);
	}

	//경력 수정하기
	public void updateCareer(IruckseoCareerDto cadto) {
		// TODO Auto-generated method stub
		irmapper.updateCareer(cadto);
	}

	//경력 list 전체 출력
	public List<IruckseoCareerDto> allCareerDatas(IruckseoCareerDto cadto) {
		// TODO Auto-generated method stub
		return irmapper.allCareerDatas(cadto);
	}

	//경력 삭제하기
	public void deleteCareer(int ca_num) {
		// TODO Auto-generated method stub
		irmapper.deleteCareer(ca_num);
	}

	//경험활동 insert
	public void insertActibity(IruckseoActibityDto acdto) {
		// TODO Auto-generated method stub
		irmapper.insertActibity(acdto);
	}

	//경험활동 단건 list 출력
	public List<IruckseoActibityDto> OneActibityDatas(IruckseoActibityDto acdto) {
		// TODO Auto-generated method stub
		return irmapper.OneActibityDatas(acdto);
	}
	
	//경험활동 pe_num 조회
	public List<IruckseoActibityDto> Actibitylist(int pe_num) {
		// TODO Auto-generated method stub
		return irmapper.Actibitylist(pe_num);
	}

	
	//경험활동 수정폼 띄우기
	public IruckseoActibityDto selectNumActibity(int ac_num) {
		// TODO Auto-generated method stub
		return irmapper.selectNumActibity(ac_num);
	}
	
	//경험활동 수정하기
	public void updateActibity(IruckseoActibityDto acdto) {
		// TODO Auto-generated method stub
		irmapper.updateActibity(acdto);
	}
	
	//경험활동 수정 후 전체리스트 띄우기
	public List<IruckseoActibityDto> allActibityDatas(IruckseoActibityDto acdto) {
		// TODO Auto-generated method stub
		return irmapper.allActibityDatas(acdto);
	}
	
	//경험활동 삭제하기
	public void deleteActibity(int ac_num) {
		// TODO Auto-generated method stub
		irmapper.deleteActibity(ac_num);
	}

	//스펙 insert
	public void insertSpec(IruckseoSpecDto spdto) {
		// TODO Auto-generated method stub
		irmapper.insertSpec(spdto);
	}

	//스펙 단건 list 출력
	public List<IruckseoSpecDto> OneSpecDatas(IruckseoSpecDto spdto) {
		// TODO Auto-generated method stub
		return irmapper.OneSpecDatas(spdto);
	}
	
	//스펙 pe_num 조회
	public List<IruckseoSpecDto> Speclist(int pe_num) {
		// TODO Auto-generated method stub
		return irmapper.Speclist(pe_num);
	}

	//스펙 수정폼 띄우기
	public IruckseoSpecDto selectNumSpec(int sp_num) {
		// TODO Auto-generated method stub
		return irmapper.selectNumSpec(sp_num);
	}

	//스펙 수정하기
	public void updateSpec(IruckseoSpecDto spdto) {
		// TODO Auto-generated method stub
		irmapper.updateSpec(spdto);
	}

	//스펙 수정 후 리스트 출력
	public List<IruckseoSpecDto> allSpecDatas(IruckseoSpecDto spdto) {
		// TODO Auto-generated method stub
		return irmapper.allSpecDatas(spdto);
	}

	//스펙 삭제하기
	public void deleteSpec(int sp_num) {
		// TODO Auto-generated method stub
		irmapper.deleteSpec(sp_num);
	}
	
	//포트폴리오 insert
	public void insertPortfolio(IruckseoPortfolioDto podto) {
		// TODO Auto-generated method stub
		irmapper.insertPortfolio(podto);
	}
	
	//포트폴리오 insert 후 list
	public List<IruckseoPortfolioDto> OnePortfolioDatas(IruckseoPortfolioDto podto) {
		// TODO Auto-generated method stub
		return irmapper.OnePortfolioDatas(podto);
	}
	
	//포트폴리오 pe_num 조회
	public List<IruckseoPortfolioDto> Portfoliolist(int pe_num) {
		// TODO Auto-generated method stub
		return irmapper.Portfoliolist(pe_num);
	}
	
	//포트폴리오 삭제하기
	public void deletePortfolio(int po_num) {
		// TODO Auto-generated method stub
		irmapper.deletePortfolio(po_num);
	}

	//자기소개서 insert
	public void insertSelf(IruckseoSelfDto sedto) {
		// TODO Auto-generated method stub
		irmapper.insertSelf(sedto);
	}

	//자기소개서 insert list 출력
	public List<IruckseoSelfDto> OneSelfDatas(IruckseoSelfDto sedto) {
		// TODO Auto-generated method stub
		return irmapper.OneSelfDatas(sedto);
	}

	//자기소개서 수정폼 띄우기
	public IruckseoSelfDto selectNumSelf(int se_num) {
		// TODO Auto-generated method stub
		return irmapper.selectNumSelf(se_num);
	}

	//자기소개서 수정하기
	public void updateSelf(IruckseoSelfDto sedto) {
		// TODO Auto-generated method stub
		irmapper.updateSelf(sedto);
	}

	//자기소개서 수정하고 list 출력
	public List<IruckseoSelfDto> allSelfDatas(IruckseoSelfDto sedto) {
		// TODO Auto-generated method stub
		return irmapper.allSelfDatas(sedto);
	}
	
	//자기소개서 pe_num 조회
	public List<IruckseoSelfDto> Selflist(int pe_num) {
		// TODO Auto-generated method stub
		return irmapper.Selflist(pe_num);
	}

	//자기소개서 삭제하기
	public void deleteSelf(int se_num) {
		// TODO Auto-generated method stub
		irmapper.deleteSelf(se_num);
	}

	//희망조건 insert
	public void insertHope(IruckseoHopeDto hodto) {
		// TODO Auto-generated method stub
		irmapper.insertHope(hodto);
	}

	//희망조건 insert 후 list 출력
	public List<IruckseoHopeDto> OneHopeDatas(IruckseoHopeDto hodto) {
		// TODO Auto-generated method stub
		return irmapper.OneHopeDatas(hodto);
	}

	//희망조건 update
	public void updateHope(IruckseoHopeDto hodto) {
		// TODO Auto-generated method stub
		irmapper.updateHope(hodto);
	}

//희망조건 list 불러오기
	public List<IruckseoHopeDto> allHopeDatas() {
		// TODO Auto-generated method stub
		return irmapper.allHopeDatas();
	}

	//희망조건 pe_num 조회
	public IruckseoHopeDto Hopelist(int pe_num) {
		// TODO Auto-generated method stub
		return irmapper.Hopelist(pe_num);
	}
    
	//이력서 홈 이미지
	public IruckseoInsertDto getImage(int r_num) {
		// TODO Auto-generated method stub
		return irmapper.getImage(r_num);
	}

	//스크랩 채용공고 리스트 띄우기
	public List<HireDto> getScrapHireList(int r_num, int start, int perPage) {
		// TODO Auto-generated method stub
        Map<String, Object> map = new HashMap<>();
	    
	    map.put("r_num", r_num);
	    map.put("start", start);
	    map.put("perPage", perPage); // 수정: 키 이름을 SQL 쿼리와 일치하게 설정
	    
	    return irmapper.getScrapHireList(map);
	}
	
	//스크랩 갯수구하기
	public int getScrapCount(int r_num) {
		// TODO Auto-generated method stub
		return irmapper.getScrapCount(r_num);
	}
	
	//스크랩 공고 삭제하기
	public void scrapDelete(int s_num) {
		// TODO Auto-generated method stub
		irmapper.scrapDelete(s_num);
	}

	//입사지원 현황 리스트
	public List<SupportDto> getSupportList(int r_num) {
		// TODO Auto-generated method stub
		return irmapper.getSupportList(r_num);
	}

	//입사지원 지원취소 업데이트
	public void updateSupportDelete(int st_num) {
		// TODO Auto-generated method stub
		irmapper.updateSupportDelete(st_num);
	}

	//관심기업 리스트
	public List<CompanyDto> getScrapCompanyList(int r_num, int start, int perPage) {
	    Map<String, Object> map = new HashMap<>();
	    
	    map.put("r_num", r_num);
	    map.put("start", start);
	    map.put("perPage", perPage); // 수정: 키 이름을 SQL 쿼리와 일치하게 설정
	    
	    return irmapper.getScrapCompanyList(map);
	}

	//관심기업 갯수
	public int getCompanyCount(int r_num) {
		// TODO Auto-generated method stub
		return irmapper.getCompanyCount(r_num);
	}

	//지원완료 갯수
	public int getResultCount(int r_num) {
		// TODO Auto-generated method stub
		return irmapper.getResultCount(r_num);
	}

	//이력서 열람 갯수
	public int getOpenCount(int r_num) {
		// TODO Auto-generated method stub
		return irmapper.getOpenCount(r_num);
	}

	//이력서지원현황 갯수
	public int getSupportCount(int r_num) {
		// TODO Auto-generated method stub
		return irmapper.getSupportCount(r_num);
	}

	//이력서지원현황 페이징 및 리스트
	public List<SupportDto> getSupportPaging(int r_num, int start, int perPage) {
	    Map<String, Object> map = new HashMap<>();
	    
	    map.put("r_num", r_num);
	    map.put("start", start);
	    map.put("perPage", perPage); // 수정: 키 이름을 SQL 쿼리와 일치하게 설정
	    
	    return irmapper.getSupportPaging(map);
	}

	//이력서지원현황 삭제
	public void SupportDelete(int st_num) {
		// TODO Auto-generated method stub
		irmapper.SupportDelete(st_num);
	}


}

