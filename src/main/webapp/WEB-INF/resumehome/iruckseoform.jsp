<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=IBM+Plex+Sans+KR&family=Nanum+Myeongjo&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
  /* 전체 틀 레이아웃 */
  .all {
      height: 100%;
  }
  
  .center {
      margin: 0 auto;
      width: 100%;
      height: 100%;
      max-width: 1000px;
  }
  
  #wrap {
      margin-top: 100px; /* 헤더 들어갈 부분 */
      font-family: 'IBM Plex Sans KR', sans-serif;
  }
  
  .form-caption {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
  }
  
 .form-group {
        display: flex; /* 내용을 가로로 배치 */
        gap: 5px; /* 간격을 5px로 설정 (원하는 만큼 조절 가능) */
        margin-top: 5px;
        align-items: center; /* 요소를 세로로 가운데 정렬 */
    }
  
  /* 인정사항 css */
  .personal {
      margin-top: 8%;
  }
    
  #showimg{
    margin: 10px 10px;
    width: 130px;
    height: 160px;
    border: 0px solid gray;
    
  }
  #modal_showImg{
    margin: 10px 10px;
    width: 130px;
    height: 160px;
    border: 0px solid gray;
    
  }  
  /*학력*/
  .school {
    margin-top: 8%;
  
  }
  
  /*경력*/
  .career {
    margin-top: 8%;
  }
  
  /*경험*/
  .activity {
    margin-top: 8%;
  }
  
  /*경험 활동 교육*/
  .qualification {
    margin-top: 8%;
  }
  
  /*포트폴리오*/
  .portfolio {
    margin-top: 8%;
  }
  
  /*자기소개*/
  .self {
    margin-top: 8%;
  }
  
  /*희망근무*/
  .hope  {
    margin-top: 8%;
  }
  
  .areaSelect {
     width: 100%; /* 원하는 너비로 설정 */
     height: 150px; /* 원하는 높이로 설정 */
     padding: 10px;
     border: 1px solid #ccc;
     overflow-y: scroll; /* 내용이 많을 경우 스크롤 가능하게 설정 */
  }
  
  .areaSelect ul {
    list-style-type: none; /* 불렛 제거 */
    padding: 0;
    margin: 0;
    display: flex;
    flex-wrap: wrap; /* 넘치는 요소들을 줄바꿈하여 배치 */
    gap: 25px;
    justify-content: space-between; /* 요소들을 각 행당으로 최대한 분산 배치 */
    
  }
  
  .areaSelect li {
    font-size: 0.9em;
    margin: 5px 0;
    flex-basis: calc(25% - 50px); /* 요소 너비 설정 (한 행당 4개씩 배치하도록 설정) */
    padding: 5px; /* 내용 주변에 여백 추가 */
    transition: outline-color 0.3s, color 0.3s; /* 부드러운 전환 효과를 위해 추가 */
    outline: 1px solid transparent; /* 초기에는 투명한 아웃라인 적용 */
 }
 
 .areaSelect li:hover {
    outline-color: #0D6EFD; /* 마우스를 올렸을 때 아웃라인 색상을 블루로 변경 */
    color: #000000; /* 마우스를 올렸을 때 글자색을 블랙으로 변경 */
    cursor: pointer; /* 마우스 커서를 포인터로 변경 */
    border-radius: 12px;
    padding: 8px;
  }
  
  .areaStyle {
    display: inline-block;
    padding: 8px 15px;
    margin: 5px;
    border-radius: 12px;
    background-color: #0D6EFD;
    color: white;
    font-size: 0.9em;
   }
   
   .areaStyle i {
    cursor: pointer;
   }

  .jobSelect {
     width: 100%; /* 원하는 너비로 설정 */
     height: 150px; /* 원하는 높이로 설정 */
     padding: 10px;
     border: 1px solid #ccc;
     overflow-y: scroll; /* 내용이 많을 경우 스크롤 가능하게 설정 */
  }
  
  .jobSelect ul {
    list-style-type: none; /* 불렛 제거 */
    padding: 0;
    margin: 0;
    display: flex;
    flex-wrap: wrap; /* 넘치는 요소들을 줄바꿈하여 배치 */
    gap: 25px;
    justify-content: space-between; /* 요소들을 각 행당으로 최대한 분산 배치 */
    
  }
  
  .jobSelect li {
    font-size: 0.9em;
    margin: 5px 0;
    flex-basis: calc(25% - 50px); /* 요소 너비 설정 (한 행당 4개씩 배치하도록 설정) */
    padding: 5px; /* 내용 주변에 여백 추가 */
    transition: outline-color 0.3s, color 0.3s; /* 부드러운 전환 효과를 위해 추가 */
    outline: 1px solid transparent; /* 초기에는 투명한 아웃라인 적용 */
 }
 
 .jobSelect li:hover {
    outline-color: #0D6EFD; /* 마우스를 올렸을 때 아웃라인 색상을 블루로 변경 */
    color: #000000; /* 마우스를 올렸을 때 글자색을 블랙으로 변경 */
    cursor: pointer; /* 마우스 커서를 포인터로 변경 */
    border-radius: 12px;
    padding: 8px;
  }
  
  .jobStyle {
    display: inline-block;
    padding: 8px 15px;
    margin: 5px;
    border-radius: 12px;
    background-color: #0D6EFD;
    color: white;
    font-size: 0.9em;
   }
   
   .jobStyle i {
    cursor: pointer;
   }
  
  /*동의서*/
  .consent {
    margin-top: 12%;
  }
  
  /*동의서 모달창*/
  .modal-content, .modal-header, .modal-body {
    border: none;
  }
  
  .modal-content {
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
  }
  
  .modal-fullsize {
  width: 600px !important;
  height: 350px !important;
  max-width: none !important; /* 최대 크기를 무제한으로 설정 */
  max-height: none !important; /* 최대 크기를 무제한으로 설정 */
  margin: 0 auto; /* 화면 중앙에 위치하도록 설정 */
  }
  
  /*미리보기 모달창*/
   .modal-fullsize1 {
  width: 1000px !important;
  max-width: none !important; /* 최대 크기를 무제한으로 설정 */
  max-height: none !important; /* 최대 크기를 무제한으로 설정 */
  margin: 0 auto; /* 화면 중앙에 위치하도록 설정 */
  }
    
  /*최종저장 버튼*/
  .fixed_final {
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    background-color: white;
    padding: 10px;
    box-sizing: border-box;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
</style>
</head>
<body>
    <div class="all">
        <div id="wrap">
            <div class="center">
  <form action="personalupdate" id="pe_form" method="post" enctype="multipart/form-data" >
    <input type="hidden"   name="pe_title" id="pe_title">
    <input type="hidden" name="pe_num" id="pe_num" value="${irdto.pe_num }">
                
<!-- 인정사항 폼 -------------------------------------------------------------------------------------------------------------------------->
                <div class="personal">
                        <div class="form-caption">
                            <h5><b>인적사항</b></h5>&nbsp;&nbsp;&nbsp;
                            <span style="font-size: 0.8em;">자동입력(사진 및 경력 제외)</span>
                        </div>
                        <hr style="width: 100%;">
                        <table class="" style="width: 100%;">
                          <tr>
                      <td class="form-group">
                          <span>${rdto.r_name }</span>&nbsp;&nbsp;
                          <select class="form-select" style="width: 120px;" name="pe_category">
                              <option>신입/경력</option>
                              <option>신입</option>
                              <option>경력</option>
                          </select>
                      </td>
                      
                      <td rowspan="4">
                        <input type="file" name="myphoto" id="myphoto" style="display: none;" multiple="multiple">
                              <div style="position: relative;  display: inline-block;" id="photo_img">
                                <img id="showimg">
                               <span id="plusphoto" name="pe_image" style="position: absolute; top: 85%; left: 50%; 
                               transform: translate(-50%, -50%); cursor: pointer; font-size: 0.8em;">사진추가</span>
                              </div>
                              
                              <script type="text/javascript">
                              
                                    $(function () {
                                         
                                       //버튼 클릭 시 파일 열기 (증명사진넣기)
                                       $("#plusphoto").click(function () {
                                          
                                          $("#myphoto").trigger("click");
                                       });
                                       
                                       
                                       //사진을 불러오면 증명사진 미리보기로 넣기
                                       $("#myphoto").change(function () {
                                          
                                          if ($(this)[0].files[0]) {
                                               var reader = new FileReader();
                                               
                                               reader.onload = function (e) {
                                                   $("#showimg").attr('src', e.target.result);
                                               }
                                               reader.readAsDataURL($(this)[0].files[0]);
                                           }
      
                                       });
                                       
                                       //이미지들어가면 보더 주기
                                       $("#plusphoto").on("click", function () {
                                           $("#showimg").css('border', '0.5px solid gray');
                                       });
                                       
                                  })
                              
                              </script>
                              
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                        <span>성별 (${rdto.r_gender })</span>&nbsp;&nbsp;&nbsp;
                        <span>${rdto.r_birthday}</span>
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                        <span><i class="bi bi-envelope"></i>${rdto.r_email}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span><i class="bi bi-telephone"></i>${rdto.r_hp}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span><i class="bi bi-phone"></i>${rdto.r_hp}</span>
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                        <span><i class="bi bi-house"></i>${rdto.r_addr}${rdto.r_addr_detail}</span>
                      </td>
                    </tr>
                    
                        </table>
                   
                </div>
           </form>              
                
<!-- 학력 폼 ---------------------------------------------------------------------------------------------------------------------->
                <div class="school">
                    <div class="form-caption">
                        <h5><b>학력</b></h5>&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 0.8em;">*필수정보입력</span>
                        <span style="font-size: 0.8em; color: #4876EF; margin-left: 82%;">
                        <a style="cursor: pointer;" id="schoolPlus">+ 추가하기</a></span>
                    </div>
                    <hr style="width: 100%;">

                    <div id="schoolList"></div>
                    <div id="schoolform"></div> 
               </div>
            
            <script type="text/javascript">
                //추가하기 누르면 폼 나타나게 하기
                $(function () {
                	
                    //추가하기 클릭시 입력창 추가
                    $("#schoolPlus").click(function () {
                        var schoolclick = $("#schoolclick").length;
            
                        // 창이 하나도 안열려 있는 경우 추가폼 생성됨
                        if (schoolclick == 0) {
                            var total = "";
                            
                            total += '<form id="sctotal">'
                            total += '<table id="schoolclick" style="width: 100%;  margin-top: 2%;">';
                            total += '<tr>';
                            total += '<td class="form-group">';
                            total += '<select class="form-select" style="width: 250px;" id="education-select" name="sc_category" >';
                            total += '<option value="none">학력구분 선택*</option>';
                            total += '<option value="고등학교 졸업">고등학교 졸업</option>';
                            total += '<option value="대학·대학원 이상 졸업">대학·대학원 이상 졸업</option>';
                            total += '</select>';
                            total += '</td>';
                            total += '<!-- 고등학교 졸업을 선택했을 때 메뉴 -->';
                            total += '<tr id="highschool-options" style="display: none;">';
                            total += '<td class="form-group">';
                            total += '<input type="checkbox" name="sc_hi_transfer">편입';
                            total += '</td>';
                            total += '</tr>';
                            total += '<tr id="highschool-options-details" style="display: none;">';
                            total += '<td class="form-group">';
                            total += '<input type="text" class="form-control" name="sc_hi_name" style="width: 200px;" placeholder="학교명*">';
                            total += '<select class="form-select" name="sc_hi_check" style="width: 150px;">';
                            total += '<option value="">졸업여부*</option>';
                            total += '<option>졸업</option>';
                            total += '<option>재학중</option>';
                            total += '<option>휴학중</option>';
                            total += '<option>중퇴</option>';
                            total += '<option>자퇴</option>';
                            total += '<option>졸업예정</option>';
                            total += '</select>';
                            total += '<input type="date" name="sc_hi_iphack" class="form-control" style="width: 180px;">';
                            total += '<input type="date" name="sc_hi_jolup" class="form-control" style="width: 180px;">';
                            total += '<select class="form-select" name="sc_hi_major" style="width: 150px;">';
                            total += '<option value="">전공계열*</option>';
                            total += '<option>문과계열</option>';
                            total += '<option>이과계열</option>';
                            total += '<option>전문(실업)계</option>';
                            total += '<option>예체능계</option>';
                            total += '<option>특성화</option>';
                            total += '<option>특수목적고</option>';
                            total += '</select>';
                            total += '</td>';
                            total += '</tr>';
                            total += '<!-- 대학 대학원 폼 -->';
                            total += '<tr id="university-options" style="display: none;">';
                            total += '<td class="form-group">';
                            total += '<select class="form-select" name="sc_uni_category"  style="width: 150px;" >';
                            total += '<option value="">대학구분*</option>';
                            total += '<option>2,3년</option>';
                            total += '<option>4년</option>';
                            total += '<option>석사</option>';
                            total += '<option>박사</option>';
                            total += '</select>';
                            total += '<input type="text" class="form-control" name="sc_uni_name" style="width: 200px;" placeholder="학교명*">';
                            total += '<input type="checkbox" name="sc_uni_transfer">편입';
                            total += '</td>';
                            total += '</tr>';
                            total += '<tr id="university-options-details" style="display: none;">';
                            total += '<td class="form-group">';
                            total += '<input type="text" class="form-control" name="sc_uni_major" style="width: 180px;" placeholder="전공*">';
                            total += '<select class="form-select" name="sc_uni_check" style="width: 150px;">';
                            total += '<option value="">졸업여부*</option>';
                            total += '<option>졸업</option>';
                            total += '<option>재학중</option>';
                            total += '<option>휴학중</option>';
                            total += '<option>중퇴</option>';
                            total += '<option>자퇴</option>';
                            total += '<option>졸업예정</option>';
                            total += '</select>';
                            total += '<input type="date" class="form-control" name="sc_uni_iphack" style="width: 180px;">';
                            total += '<input type="date" class="form-control" name="sc_uni_jolup" style="width: 180px;">';
                            total += '<input type="text" class="form-control" name="sc_uni_grade" style="width: 100px;" placeholder="학점*">';
                            total += '<select class="form-select" name="sc_uni_sum" style="width: 150px;">';
                            total += '<option value="">기준학점*</option>';
                            total += '<option>4.0</option>';
                            total += '<option>4.3</option>';
                            total += '<option>4.5</option>';
                            total += '<option>5.0</option>';
                            total += '</select>';
                            total += '</td>';
                            total += '</tr>';
                            total += '<!-- 저장 취소 버튼 -->';
                            total += '<tr>';
                            total += '<td colspan="2" align="right">';
                            total += '<br>';
                            total += '<button type="button" id="schoolOk" class="btn btn-outline-primary">저장</button>';
                            total += '&nbsp';
                            total += '<button type="button" id="schoolCancle" class="btn btn-outline-primary">취소</button>';
                            total += '</td>';
                            total += '</tr>';
                            total += '</table>';
                            total += '</form>'
                            $("#schoolform").append(total);
                        }
                    });
                    
                    // 학력구부 카페고리 변경 이벤트
                    $(document).on("change", "#education-select", function () {
                        // 해당폼 구분 선택시 다르게
                        if ($(this).val() === '고등학교 졸업') {
                        	$("#highschool-options").css("display","block");
                        	$("#university-options").css("display","none");
                        	$("#highschool-options-details").css("display","table-row");
                        	$("#university-options-details").css("display","none");
                        	 
						}
     					else if($(this).val() === '대학·대학원 이상 졸업') {
     						$("#highschool-options").css("display","none");
                        	$("#university-options").css("display","block");
                        	$("#highschool-options-details").css("display","none");
                        	$("#university-options-details").css("display","table-row");
                         }	       
     					else {
     						$("#highschool-options").css("display","none");
                        	$("#university-options").css("display","none");
                        	$("#highschool-options-details").css("display","none");
                        	$("#university-options-details").css("display","none");	
     					}
                    });
                    
                    // 취소 클릭시 입력창 삭제
                    $(document).on("click", "#schoolCancle", function () {
                    	$("#schoolList").show();
                        $("#schoolform").html("");
                    });
                    
                    //저장시 shcool insert 하기
                    $(document).on("click", "#schoolOk", function () {
                    	

                    	var formData = {
                    			
					        pe_num: $('#pe_num').val(),
					        sc_category: $('select[name="sc_category"]').val(),
					        sc_hi_name: $('input[name="sc_hi_name"]').val(),
					        sc_hi_transfer: $('input[name="sc_hi_transfer"]').is(':checked') ? '편입' : '',
					        sc_hi_check: $('select[name="sc_hi_check"]').val(),
					        sc_hi_iphack: $('input[name="sc_hi_iphack"]').val(),
					        sc_hi_jolup: $('input[name="sc_hi_jolup"]').val(),
					        sc_hi_major: $('select[name="sc_hi_major"]').val(),
					        sc_uni_category: $('select[name="sc_uni_category"]').val(),
					        sc_uni_name: $('input[name="sc_uni_name"]').val(),
					        sc_uni_transfer: $('input[name="sc_uni_transfer"]').is(':checked') ? '편입' : '',
					        sc_uni_major: $('input[name="sc_uni_major"]').val(),
					        sc_uni_check: $('select[name="sc_uni_check"]').val(),
					        sc_uni_iphack: $('input[name="sc_uni_iphack"]').val(),
					        sc_uni_jolup: $('input[name="sc_uni_jolup"]').val(),
					        sc_uni_grade: $('input[name="sc_uni_grade"]').val(),
					        sc_uni_sum: $('select[name="sc_uni_sum"]').val()
					    }
                    	
                    	
                    	//sc insert 작성 및 list 출력
                    	$.ajax({
                    		
                    	    type: "post",
                    	    url: "schoolinsert",
                    	    contentType: "application/json",
                    	    data: JSON.stringify(formData),
                    	    dataType: "json", 
                    	    success: function (res) {
                    	    	
                    	    	//삼항연산자 사용으로 고등학교 졸업 체크 여부에 따라 분류
                    	    	var sc_category = res.sclist[0].sc_category; // 카테고리
                    	    	var sc_name = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_name : res.sclist[0].sc_uni_name; // 학교명
                    	    	
                    	    	var sc_transfer = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_transfer : res.sclist[0].sc_uni_transfer; //편입여부
                    	    	sc_transfer = sc_transfer == "" ? "" : sc_transfer + ' | ';
                    	    	
                    	    	var sc_check = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_check : res.sclist[0].sc_uni_check; //졸업여부
                    	    	var sc_iphack = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_iphack : res.sclist[0].sc_uni_iphack; // 입학년도
                    	    	var sc_jolup = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_jolup : res.sclist[0].sc_uni_jolup; // 졸업년도
                    	    	var sc_major = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_major : res.sclist[0].sc_uni_major; // 전공
                    	    	var sc_uni_grade = res.sclist[0].sc_uni_grade; // 학점(대학교)
                    	    	var sc_uni_sum = res.sclist[0].sc_uni_sum; // 총학점(대학교)
                    	    	var sc_uni_category = res.sclist[0].sc_uni_category; // 대학구분(대학교)
                    	    	var sc_num = res.sclist[0].sc_num; //num값
                    	    	
                    	    	 
                    	    	//전체 데이터 담기
                    	    	var sc = "";
                    	    	
                    	    	sc += '<table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">';
                                sc += '<tr>';
                                sc += '<td class="form-group">';
                                sc += '<span style="font-size: 1.3em;"><b>'+sc_name+'</b></span>&nbsp;';
                                
                                //고등학교 졸업 선택 안할 경우
                                if( sc_category != "고등학교 졸업"){
                                	
	                                sc += '<b>'+'('+sc_uni_category+')'+'</b>&nbsp;&nbsp;&nbsp;&nbsp;';
                               
                                }
                                
                                sc += '<span>'+sc_iphack+' ~ '+sc_jolup+' (' + sc_transfer + sc_check+')</span><br>';
                                sc += '<span style="cursor: pointer;"><i class="bi bi-pencil scupdate" sc_num='+sc_num+'></i></span>';
                                sc += '<span style="cursor: pointer;"><i class="bi bi-trash3 scdelete" sc_num='+sc_num+'></i></span>';
                                sc += '</td>';
                                sc += '<td class="form-group">';
                                sc += '<span>'+sc_major+'</span>';
                                sc += '</td>';
                                
                                //고등학교 졸업 선택 안할 경우
                                if( sc_category != "고등학교 졸업") {
                                	
	                                sc += '<td class="form-group">';
	                                sc += '<span>학점</span>&nbsp;&nbsp;&nbsp;&nbsp;';
	                                sc += '<span>'+sc_uni_grade+' / '+sc_uni_sum+'</span>';
	                                sc += '</td>';
	                           
                                }
                              
                                sc += '</tr>';
                              	sc += '</table>';
                    	    	
                    	    	
                    	    	
                    	    	//list 나타내기
                    	    	$("#schoolList").append(sc);
                    	    	
                    	    	//form 리셋
                    	    	$("#schoolform").html("");
                    	    }
                    	})
					});
                    
                    
                    //학력 삭제하기
                    $(document).on("click", ".scdelete", function() {
                    	
                    	var sc_num = $(this).attr("sc_num");
                    	
                    	var scThis = $(this);

                    	var sc_confirm = confirm("해당 내역을 삭제하시겠습니까?");
                    	
                    	if(sc_confirm) {
                    		
                    		$.ajax({
                    			
                    			type : "get",
                    			dataType : "html",
                    			url : "schooldelete",
                    			data : {"sc_num":sc_num},
                    			success : function() {
                    				
                    				scThis.parents('table').remove();
                    			}
                    		})
                    	}
                    });
                    
                    
                    //학력 수정폼 띄우기
                     $(document).on("click", ".scupdate", function() {
                    	
                    	var sc_num = $(this).attr("sc_num");
                    	//alert(sc_num);
                    	
                        $.ajax ({
                        	
                        	type : "get",
                        	dataType : "json",
                        	url : "shcoolupdateform",
                        	data : {"sc_num":sc_num},
                        	success : function (data) {
                        		
                        		$("#schoolList").hide();
                        		
                        		var sc_category = data.sc_category; // 카테고리
                    	    	var sc_name = sc_category == "고등학교 졸업" ? data.sc_hi_name : data.sc_uni_name; // 학교명
                    	    	var sc_transfer = sc_category == "고등학교 졸업" ? data.sc_hi_transfer : data.sc_uni_transfer; //편입여부
                    	    	sc_transfer = sc_transfer == "" ? "" : sc_transfer + '|';
                    	    	var sc_check = sc_category == "고등학교 졸업" ? data.sc_hi_check : data.sc_uni_check; //졸업여부
                    	    	var sc_iphack = sc_category == "고등학교 졸업" ? data.sc_hi_iphack : data.sc_uni_iphack; // 입학년도
                    	    	var sc_jolup = sc_category == "고등학교 졸업" ? data.sc_hi_jolup : data.sc_uni_jolup; // 졸업년도
                    	    	var sc_major = sc_category == "고등학교 졸업" ? data.sc_hi_major : data.sc_uni_major; // 전공
                    	    	var sc_uni_grade = data.sc_uni_grade; // 학점(대학교)
                    	    	var sc_uni_sum = data.sc_uni_sum; // 총학점(대학교)
                    	    	var sc_uni_category = data.sc_uni_category; // 대학구분(대학교)
                    	    	var sc_num = data.sc_num; //sc_num값
                        		
                        		
                        		
                        		var total = "";
                                
                                total += '<form id="sctotal">'
                                total += '<input type="hidden" name="sc_num" id="sc_num" value='+sc_num+'>'
                                total += '<table id="schoolclick" style="width: 100%;">';
                                total += '<tr>';
                                total += '<td class="form-group">';
                                total += '<select class="form-select" style="width: 250px;" id="education-select" name="sc_category" value="'+sc_category+'">';
                                total += '<option value="none">학력구분 선택*</option>';
                                total += '<option value="고등학교 졸업" >고등학교 졸업</option>';
                                total += '<option value="대학·대학원 이상 졸업">대학·대학원 이상 졸업</option>';
                                total += '</select>';
                                total += '</td>';
                                total += '<!-- 고등학교 졸업을 선택했을 때 메뉴 -->';
                                total += '<tr id="highschool-options" style="display: none;">';
                                total += '<td class="form-group">';
                                
                                if( sc_transfer == ""){
	                                total += '<input type="checkbox" name="sc_hi_transfer">편입';
                                }else{
	                                total += '<input type="checkbox" name="sc_hi_transfer" checked="checked">편입';
                                }
                                
                                total += '</td>';
                                total += '</tr>';
                                total += '<tr id="highschool-options-details" style="display: none;">';
                                total += '<td class="form-group">';
                                total += '<input type="text" class="form-control" name="sc_hi_name" style="width: 200px;" value="'+sc_name+'">';
                                total += '<select class="form-select" name="sc_hi_check" style="width: 150px;" value="'+sc_check+'">';
                                total += '<option value="">졸업여부*</option>';
                                total += '<option value="졸업">졸업</option>';
                                total += '<option value="재학중">재학중</option>';
                                total += '<option value="휴학중">휴학중</option>';
                                total += '<option value="중퇴">중퇴</option>';
                                total += '<option value="자퇴">자퇴</option>';
                                total += '<option value="졸업예정">졸업예정</option>';
                                total += '</select>';
                                total += '<input type="date" name="sc_hi_iphack" class="form-control" style="width: 180px;" value="'+sc_iphack+'">';
                                total += '<input type="date" name="sc_hi_jolup" class="form-control" style="width: 180px;" value="'+sc_jolup+'">';
                                total += '<select class="form-select" name="sc_hi_major" style="width: 150px;" value="'+sc_major+'">';
                                total += '<option value="">전공계열*</option>';
                                total += '<option value="문과계열">문과계열</option>';
                                total += '<option value="이과계열">이과계열</option>';
                                total += '<option value="전문(실업)계">전문(실업)계</option>';
                                total += '<option value="예체능계">예체능계</option>';
                                total += '<option value="특성화">특성화</option>';
                                total += '<option value="특수목적고">특수목적고</option>';
                                total += '</select>';
                                total += '</td>';
                                total += '</tr>';
                                total += '<!-- 대학 대학원 폼 -->';
                                total += '<tr id="university-options" style="display: none;">';
                                total += '<td class="form-group">';
                                total += '<select class="form-select" name="sc_uni_category"  style="width: 150px;" value="'+sc_uni_category+'">';
                                total += '<option value="">대학구분*</option>';
                                total += '<option value="2,3년">2,3년</option>';
                                total += '<option value="4년">4년</option>';
                                total += '<option value="석사">석사</option>';
                                total += '<option value="박사">박사</option>';
                                total += '</select>';
                                total += '<input type="text" class="form-control" name="sc_uni_name" style="width: 200px;" value="'+sc_name+'" >';
                                
                                if( sc_transfer == ""){
                                	total += '<input type="checkbox" name="sc_uni_transfer">편입';
                                }else{
                                	total += '<input type="checkbox" name="sc_uni_transfer" checked="checked">편입';
                                }
                                
                                total += '</td>';
                                total += '</tr>';
                                total += '<tr id="university-options-details" style="display: none;">';
                                total += '<td class="form-group">';
                                total += '<input type="text" class="form-control" name="sc_uni_major" style="width: 180px;" value="'+sc_major+'">';
                                total += '<select class="form-select" name="sc_uni_check" style="width: 150px;" value="'+sc_check+'">';
                                total += '<option value="">졸업여부*</option>';
                                total += '<option value="졸업">졸업</option>';
                                total += '<option value="재학중">재학중</option>';
                                total += '<option value="휴학중">휴학중</option>';
                                total += '<option value="중퇴">중퇴</option>';
                                total += '<option value="자퇴">자퇴</option>';
                                total += '<option value="졸업예정">졸업예정</option>';
                                total += '</select>';
                                total += '<input type="date" class="form-control" name="sc_uni_iphack" style="width: 180px;" value="'+sc_iphack+'">';
                                total += '<input type="date" class="form-control" name="sc_uni_jolup" style="width: 180px;" value="'+sc_jolup+'">';
                                total += '<input type="text" class="form-control" name="sc_uni_grade" style="width: 100px;" value="'+sc_uni_grade+'">';
                                total += '<select class="form-select" name="sc_uni_sum" style="width: 150px;" valuse="'+sc_uni_sum+'">';
                                total += '<option value="">기준학점*</option>';
                                total += '<option value="4.0">4.0</option>';
                                total += '<option value="4.3">4.3</option>';
                                total += '<option value="4.5">4.5</option>';
                                total += '<option value="5.0">5.0</option>';
                                total += '</select>';
                                total += '</td>';
                                total += '</tr>';
                                total += '<!-- 저장 취소 버튼 -->';
                                total += '<tr>';
                                total += '<td colspan="2" align="right">';
                                total += '<br>';
                                total += '<button type="button" id="schoolUpdateOk" class="btn btn-outline-primary">수정</button>';
                                total += '&nbsp';
                                total += '<button type="button" id="schoolCancle" class="btn btn-outline-primary">취소</button>';
                                total += '</td>';
                                total += '</tr>';
                                total += '</table>';
                                total += '</form>'
                
                                $("#schoolform").append(total);
                                
                                
                             	// 해당폼 구분 선택시 다르게
                             	$("select[name=sc_category]").val(sc_category).prop("selected",true);
                                // 해당폼 고등학교
	                            if (sc_category === '고등학교 졸업') {
	                            	$("select[name=sc_hi_check]").val(sc_check).prop("selected",true);
	                            	$("select[name=sc_hi_major]").val(sc_major).prop("selected",true);
	                            	$("#highschool-options").css("display","block");
	                            	$("#university-options").css("display","none");
	                            	$("#highschool-options-details").css("display","table-row");
	                            	$("#university-options-details").css("display","none");
	                            	 
								}
	                            // 해당폼 대학 대학원
	         					else if (sc_category === '대학·대학원 이상 졸업') {
	                            	$("select[name=sc_uni_check]").val(sc_check).prop("selected",true);
	                            	$("select[name=sc_uni_category]").val(sc_uni_category).prop("selected",true);
	                            	$("select[name=sc_uni_sum]").val(sc_uni_sum).prop("selected",true);
	         						$("#highschool-options").css("display","none");
	                            	$("#university-options").css("display","block");
	                            	$("#highschool-options-details").css("display","none");
	                            	$("#university-options-details").css("display","table-row");
	                             }
                        	}
                       })
                    });
                    
                    

                     //학력 수정 버튼을 누르면 실행되어 수정 리스트 띄어주기
                    $(document).on("click", "#schoolUpdateOk", function () {
                    	
                    	//var shcooldata = $("#sctotal").serialize();
                    	
                    	var formData = {
					        pe_num: $('#pe_num').val(),
					        sc_num: $('#sc_num').val(),
					        sc_category: $('select[name="sc_category"]').val(),
					        sc_hi_name: $('input[name="sc_hi_name"]').val(),
					        sc_hi_transfer: $('input[name="sc_hi_transfer"]').is(':checked') ? '편입' : '',
					        sc_hi_check: $('select[name="sc_hi_check"]').val(),
					        sc_hi_iphack: $('input[name="sc_hi_iphack"]').val(),
					        sc_hi_jolup: $('input[name="sc_hi_jolup"]').val(),
					        sc_hi_major: $('select[name="sc_hi_major"]').val(),
					        sc_uni_category: $('select[name="sc_uni_category"]').val(),
					        sc_uni_name: $('input[name="sc_uni_name"]').val(),
					        sc_uni_transfer: $('input[name="sc_uni_transfer"]').is(':checked') ? '편입' : '',
					        sc_uni_major: $('input[name="sc_uni_major"]').val(),
					        sc_uni_check: $('select[name="sc_uni_check"]').val(),
					        sc_uni_iphack: $('input[name="sc_uni_iphack"]').val(),
					        sc_uni_jolup: $('input[name="sc_uni_jolup"]').val(),
					        sc_uni_grade: $('input[name="sc_uni_grade"]').val(),
					        sc_uni_sum: $('select[name="sc_uni_sum"]').val()
					    };
                    	//sc insert 작성 및 list 출력
                    	$.ajax({
                    	    type: "post",
                    	    url: "shcoolupdate",
                    	    contentType: "application/json",
                    	    data: JSON.stringify(formData),
                    	    dataType: "json", 
                    	    success: function (res) {
                    	    	
                    	    	//전체 데이터 담기
                    	    	var sc = "";
                    	    	
                    	    	 $.each(res, function(i,dto){
                    	    		//삼항연산자 사용으로 고등학교 졸업 체크 여부에 따라 분류
                         	    	var sc_category = dto.sc_category; // 카테고리
                         	    	var sc_name = sc_category == "고등학교 졸업" ? dto.sc_hi_name : dto.sc_uni_name; // 학교명
                         	    	
                         	    	var sc_transfer = sc_category == "고등학교 졸업" ? dto.sc_hi_transfer : dto.sc_uni_transfer; //편입여부
                         	    	sc_transfer = sc_transfer == "" ? "" : sc_transfer + '|';
                         	    	
                         	    	var sc_check = sc_category == "고등학교 졸업" ? dto.sc_hi_check : dto.sc_uni_check; //졸업여부
                         	    	var sc_iphack = sc_category == "고등학교 졸업" ? dto.sc_hi_iphack : dto.sc_uni_iphack; // 입학년도
                         	    	var sc_jolup = sc_category == "고등학교 졸업" ? dto.sc_hi_jolup : dto.sc_uni_jolup; // 졸업년도
                         	    	var sc_major = sc_category == "고등학교 졸업" ? dto.sc_hi_major : dto.sc_uni_major; // 전공
                         	    	var sc_uni_grade = dto.sc_uni_grade; // 학점(대학교)
                         	    	var sc_uni_sum = dto.sc_uni_sum; // 총학점(대학교)
                         	    	var sc_uni_category = dto.sc_uni_category; // 대학구분(대학교)
                         	    	var sc_num = dto.sc_num; //num값
                         	    	
                         	    	
                         	    	sc += '<table style="border-bottom: 1px solid gray; width: 100%;">';
                         	    	sc += '<tr>';
                         	    	sc += '<td class="form-group">';
                         	    	sc += '<h5><b>'+sc_name+'</b></h5>&nbsp;';
                                     
                         	    	//고등학교 졸업 선택 안할 경우
                         	    	if( sc_category != "고등학교 졸업"){
     	                                sc += '<h5><b>'+'('+sc_uni_category+')'+'</b></h5>&nbsp;&nbsp;&nbsp;&nbsp;';
                                     }
                                     sc += '<span>'+sc_iphack+' ~ '+sc_jolup+' (' + sc_transfer + sc_check+')</span><br>';
                                     sc += '<span style="cursor: pointer;"><i class="bi bi-pencil scupdate" sc_num='+sc_num+'></i></span>';
                                     sc += '<span style="cursor: pointer;"><i class="bi bi-trash3 scdelete" sc_num='+sc_num+'></i></span>';
                                     sc += '</td>';
                                     sc += '<td class="form-group">';
                                     sc += '<span>'+sc_major+'</span>';
                                     sc += '</td>';
                                     
                                   //고등학교 졸업 선택 안할 경우
                                     if( sc_category != "고등학교 졸업") {
                                     	
     	                                sc += '<td class="form-group">';
     	                                sc += '<span>학점</span>&nbsp;&nbsp;&nbsp;&nbsp;';
     	                                sc += '<span>'+sc_uni_grade+' / '+sc_uni_sum+'</span>';
     	                                sc += '</td>';
     	                           
                                     }
                                   
                                     sc += '</tr>';
                                   	sc += '</table>';
                    	    	 })
                    	    	 
                    	    	//list 나타내기
                      	    	$("#schoolList").html(sc);
                      	    	
                      	    	//form 리셋
                      	    	$("#schoolform").html("");	 	
                      	    	
                      	    	$("#schoolList").show();
                    	    }
                    	})
					})
                    
                });
            </script>

<!-- 경력 ------------------------------------------------------------------------------------------------------------------------>
            <div class="career">
                    <div class="form-caption">
                        <h5><b>경력</b></h5>&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 0.8em;">*필수정보입력</span>
                        <span style="font-size: 0.8em; color: #4876EF; margin-left: 82%;">
                            <a style="cursor: pointer;" id="careerPlus">+ 추가하기</a></span>
                    </div>
                    <hr style="width: 100%;">
                    <div id="careerList"></div>
                    <div id="careerform"></div>
            </div>
            
            <script type="text/javascript">
            
                $(function () {
                   
                    //추가하기 클릭시 입력창 추가
                    $("#careerPlus").click(function () {
                       
                        var careeclick = $("#careeclick").length;
            
                        // 창이 하나도 안열려 있는 경우 추가폼 생성됨
                        if (careeclick == 0) {
                           
                            var total = "";
                            
                            total +=  '<form id="catotal">'
                            total +=  '<table class="careerform" id="careeclick" style="width: 100%;">';
                            total +=  '<tr>';
                            total +=  '<td class="form-group">';
                            total +=  '<input type="text" class="form-control" name="ca_name" style="width: 180px;" placeholder="회사명*">';
                            total +=  '<input type="date" class="form-control" name="ca_ipsa" style="width: 180px;">';
                            total +=  '<input type="date" class="form-control" name="ca_resign" style="width: 180px;">';
                            total +=  '<input type="text" class="form-control" name="ca_work" style="width: 150px;" placeholder="근무부서">';
                            total +=  '<input type="text" class="form-control" name="ca_position" style="width: 150px;" placeholder="직급/직책">';
                            total +=  '</td>';
                            total +=  '</tr>';
                            total +=  '<tr>';
                            total +=  '<td class="form-group">';
                            total +=  '<textarea class="form-control" style="height: 200px;" name="ca_content" placeholder="담당업무를 입력해주세요"></textarea>';
                            total +=  '</td>';
                            total +=  '</tr>';
                            total +=  '<!-- 저장 취소 버튼 -->';
                            total +=  '<tr>';
                            total +=  '<td colspan="2" align="right">';
                            total +=  '<br>';
                            total +=  '<button type="button" id="careerOk" class="btn btn-outline-primary">저장</button>';
                            total +=  '&nbsp';
                            total +=  '<button type="button" id="careerCancle" class="btn btn-outline-primary">취소</button>';
                            total +=  '</td>';
                            total +=  '</tr>';
                            total +=  '</table>';
                            total +=  '<br>';
                            total +=  '<br>';
                            total +=  '</form>';
            
                            $("#careerform").append(total);
                        }
                    });
            
                    // 취소 클릭시 입력창 삭제
                    $(document).on("click", "#careerCancle", function () {
                        
                    	$("#careerList").show();
                        $("#careerform").html("");
                    });
                    
                    
                    //경력 insert 하기
                    $(document).on("click", "#careerOk", function() {
                    	
                    	//alert("성공");
                    	
                    	var careerData = {
                    			
                    			pe_num : $('#pe_num').val(),
                    			ca_name : $('input[name="ca_name"]').val(),
                    			ca_ipsa : $('input[name="ca_ipsa"]').val(),
                    			ca_resign : $('input[name="ca_resign"]').val(),
                    			ca_work : $('input[name="ca_work"]').val(),
                    			ca_position : $('input[name="ca_position"]').val(),
                    			ca_content : $('textarea[name="ca_content"]').val()
                    	}
                    	
                    	//console.log(careerData);
                    	
                    	//경력 insert 실행 및 list 동시 출력
                    	$.ajax ({
                    		
                    		type : "post",
                    		url : "/resumehome/careerinsert",
                    		contentType : "application/json",
                    		data : JSON.stringify(careerData),
                    		dataType : "json",
                    		success : function(res) {
                    			
                    			//alert ("성공");
                    			//console.log(response);
                    			
                    			//변수 설정
                    			var ca_num = res.calist[0].ca_num;
                    			var ca_name = res.calist[0].ca_name;
                    			var ca_ipsa = res.calist[0].ca_ipsa;
                    			var ca_resign = res.calist[0].ca_resign;
                    			var ca_work = res.calist[0].ca_work;
                    			var ca_position = res.calist[0].ca_position;
                    			var ca_content = res.calist[0].ca_content;
                    			
                    			//list 데이터 담기
                    			var ca = "";
                    			
	                    			ca += '<table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">';
	                    			ca += '<tr>';
	                    			ca += '<td class="form-group">';
	                    			ca += '<span style="font-size: 1.3em;"><b>'+ca_name+'</b></span>&nbsp;';
	                    			ca += '<span>'+ca_ipsa+' ~ '+ca_resign+'</span>';
	                    			ca += '<span style="cursor: pointer;"><i class="bi bi-pencil caupdate" ca_num='+ca_num+'></i></span>';
	                    			ca += '<span style="cursor: pointer;"><i class="bi bi-trash3 cadelete" ca_num='+ca_num+'></i></span>';
	                    			ca += '</td>';
	                    			ca += '<td class="form-group">';
	                    			ca += '<span>'+ca_work+'팀  '+ca_position+'</span>';
	                    			ca += '</td>';
	                    			ca += '<td class="form-group" style="margin-top:1%;">';
	                    			ca += '<span>'+ca_content+'</span>';
	                    			ca += '</td>';
	                    			ca += '</tr>';
	                    			ca += '</table>';
	                    			
                    			//list 나타내기
                    			$("#careerList").append(ca);
                    			
                    			//form 리셋
                    	    	$("#careerform").html("");
                    			
                    		}
                    	})
                    });
                    
                    
                    //경력 삭제하기
                    $(document).on("click", ".cadelete", function() {
                    	
                    	var ca_num = $(this).attr("ca_num");
                    	var caThis = $(this);
                    	var ca_confirm = confirm("해당 내역을 삭제하시겠습니까?");
                    	
                    	//console.log(caThis.parents('table'));
                    	
                    	if(ca_confirm) {
                    		
                    		$.ajax ({
                    			
                    			type : "get",
                    			dataType : "html",
                    			url : "/resumehome/careerdelete",
                    			data : {"ca_num":ca_num},
                    			success : function() {
                    				
                    				//console.log(caThis.parents('table'));
                    				caThis.parents('table').remove();
                    			}
                    		})
                    	}
                    });
                    
                    //학력 수정폼 띄우기
                    $(document).on("click", ".caupdate", function(){
                    	
                    	var ca_num = $(this).attr("ca_num");
                    	//alert(ca_num);
                    	
                    	$.ajax ({
                    		
                    		type : "get",
                    		dataType : "json",
                    		url : "careerupdateform",
                    		data : {"ca_num":ca_num},
                    		success : function(data) {
                    			
                    			$("#careerList").hide();
                    			
                    			//변수 설정
                    			var ca_num = data.ca_num;
                    			var ca_name = data.ca_name;
                    			var ca_ipsa = data.ca_ipsa;
                    			var ca_resign = data.ca_resign;
                    			var ca_work = data.ca_work;
                    			var ca_position = data.ca_position;
                    			var ca_content = data.ca_content;
                    			
                    			var total = "";
                                
                                total += '<form id="catotal">';
                                total += '<input type="hidden" name="ca_num" id="ca_num" value="' + ca_num + '">';
                                total += '<table class="careerform" id="careeclick" style="width: 100%;">';
                                total += '<tr>';
                                total += '<td class="form-group">';
                                total += '<input type="text" class="form-control" name="ca_name" style="width: 180px;" value="' + ca_name + '">';
                                total += '<input type="date" class="form-control" name="ca_ipsa" style="width: 180px;" value="' + ca_ipsa + '">';
                                total += '<input type="date" class="form-control" name="ca_resign" style="width: 180px;" value="' + ca_resign + '">';
                                total += '<input type="text" class="form-control" name="ca_work" style="width: 150px;" value="' + ca_work + '">';
                                total += '<input type="text" class="form-control" name="ca_position" style="width: 150px;" value="' + ca_position + '">';
                                total += '</td>';
                                total += '</tr>';
                                total += '<tr>';
                                total += '<td class="form-group">';
                                total += '<textarea class="form-control" style="height: 200px;" name="ca_content">' + ca_content + '</textarea>'; // 'value' 속성을 제거했습니다.
                                total += '</td>';
                                total += '</tr>';
                                total += '<!-- 저장 취소 버튼 -->';
                                total += '<tr>';
                                total += '<td colspan="2" align="right">';
                                total += '<br>';
                                total += '<button type="button" id="careerUpdateOk" class="btn btn-outline-primary">수정</button>'; // 'careerUdateOk' 오타 수정.
                                total += '&nbsp;';
                                total += '<button type="button" id="careerCancel" class="btn btn-outline-primary">취소</button>'; // 'careerCancle' 오타 수정.
                                total += '</td>';
                                total += '</tr>';
                                total += '</table>';
                                total += '<br>';
                                total += '<br>';
                                total += '</form>';
                                
                                $("#careerform").append(total);
                    			
                    		}
                    	})
                    });
                    
                    //경력 수정버튼 누르면 실행되고 수정리스트 띄어주기
                    $(document).on("click", "#careerUpdateOk", function () {
						
                    	var caData = {
                    	
                    			pe_num : $('#pe_num').val(),
                    			ca_num : $('#ca_num').val(),
                    			ca_name : $('input[name="ca_name"]').val(),
                    			ca_ipsa : $('input[name="ca_ipsa"]').val(),
                    			ca_resign : $('input[name="ca_resign"]').val(),
                    			ca_work : $('input[name="ca_work"]').val(),
                    			ca_position : $('input[name="ca_position"]').val(),
                    			ca_content : $('textarea[name="ca_content"]').val()
                    	}
                    	
                    	console.log(caData);
                    	
                    	//ca 수정 작성 및 수정list 띄우기
                    	$.ajax ({
                    		
                    		type : "post",
                    		url : "careerupdate",
                    		contentType : "application/json",
                    		data : JSON.stringify(caData),
                    		dataType : "json",
                    		success : function(res) {
                    			
                    			//전체데이터 담기
                    			var ca = "";
                    			
                    			//each문 돌리기
                    			$.each(res, function(i, dto) {
						            var ca_num = dto.ca_num;
						            var ca_name = dto.ca_name;
						            var ca_ipsa = dto.ca_ipsa;
						            var ca_resign = dto.ca_resign;
						            var ca_work = dto.ca_work;
						            var ca_position = dto.ca_position;
						            var ca_content = dto.ca_content;
						            
						            // list 폼 띄우기
						            ca += '<table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">';
						            ca += '<tr>';
						            ca += '<td class="form-group">';
						            ca += '<span style="font-size: 1.3em;"><b>' + ca_name + '</b></span>&nbsp;';
						            ca += '<span>' + ca_ipsa + ' ~ ' + ca_resign + '</span>';
						            ca += '<span style="cursor: pointer;"><i class="bi bi-pencil caupdate" ca_num="' + ca_num + '"></i></span>';
						            ca += '<span style="cursor: pointer;"><i class="bi bi-trash3 cadelete" ca_num="' + ca_num + '"></i></span>';
						            ca += '</td>';
						            ca += '<td class="form-group">';
						            ca += '<span>' + ca_work + '팀  ' + ca_position + '</span>';
						            ca += '</td>';
						            ca += '<td class="form-group" style="margin-top:1%;">';
						            ca += '<span>' + ca_content + '</span>';
						            ca += '</td>';
						            ca += '</tr>';
						            ca += '</table>';
						        });
                    			
                    			
                    			//list 나타내기
                    			$("#careerList").html(ca);
                    			
                    			//form 리셋
                    			$("#careerform").html("")
                    			
                    			//list 띄우기
                    			$("#careerList").show();
                    			
                    		}
                    	})
					});
                    
                });
                
            </script>
                
<!-- 경험, 활동, 교육 ----------------------------------------------------------------------------------------------------------->
                <div class="activity">
                        <div class="form-caption">
                            <h5><b>경험 / 활동 / 교육</b></h5>&nbsp;&nbsp;&nbsp;
                            <span style="font-size: 0.8em;">*필수정보입력</span>
                            <span style="font-size: 0.8em; color: #4876EF; margin-left: 71.4%;">
                        <a style="cursor: pointer;" id="activityPlus">+ 추가하기</a></span>
                        </div>
                        <hr style="width: 100%;">
                        <div id="activityList"></div>
                        <div id="activityform"></div>
                </div>
                
                <!-- 경험, 활동, 교육 폼 나타내기 -->
                <script type="text/javascript">
            
                $(function () {
                   
                    //추가하기 클릭시 입력창 추가
                    $("#activityPlus").click(function () {
                       
                        var activityclick = $("#activityclick").length;
            
                        // 창이 하나도 안열려 있는 경우 추가폼 생성됨
                        if (activityclick == 0) {
                           
                            var total = "";
	                                                       
			                   total += '<form id="actotal">';
			                   total += '<table id="activityclick" style="width: 100%; margin-top: 2%;">';
			                   total += '<tr>';
			                   total += '<td class="form-group">';
			                   total += '<select class="form-select" style="width: 200px;" name="ac_category">';
			                   total += '<option>활동구분 선택*</option>';
			                   total += '<option>교내활동</option>';
			                   total += '<option>인턴</option>';
			                   total += '<option>자원봉사</option>';
			                   total += '<option>동아리</option>';
			                   total += '<option>아르바이트</option>';
			                   total += '<option>사회활동</option>';
			                   total += '<option>수행과제</option>';
			                   total += '<option>해외연수</option>';
			                   total += '</select>';
			                   total += '<input type="text" class="form-control" style="width: 220px;" name="ac_name"  placeholder="기관/장소명*">';
			                   total += '<input type="date" class="form-control" style="width: 180px;" name="ac_start">';
			                   total += '<input type="date" class="form-control" style="width: 180px;" name="ac_end">';
			                   total += '</td>';
			                   total += '</tr>';
			                   total += '<tr>';
			                   total += '<td class="form-group">';
			                   total += '<textarea class="form-control" style="height: 200px;" placeholder="경험/활동 상세내용 입력" name="ac_content"></textarea>';
			                   total += '</td>';
			                   total += '</tr>';
			                   total += '<!-- 저장 취소 버튼 -->';
			                   total += '<tr>';
			                   total += '<td colspan="2" align="right">';
			                   total += '<br>';
			                   total += '<button type="button" id="activityOk" class="btn btn-outline-primary">저장</button>';
			                   total +=  '&nbsp';
			                   total += '<button type="button" id="activityCancle" class="btn btn-outline-primary">취소</button>';
			                   total += '</td>';
			                   total += '</tr>';
			                   total += '</table>';
			                   total += '</form>';
			            
			                   $("#activityform").append(total);
		               }
		              });
		            
		                    // 취소 클릭시 입력창 삭제
		                    $(document).on("click", "#activityCancle", function () {
		                       		                    	
		                        $("#activityList").show();
		                        $("#activityform").html("");
		                    });
		                    
		                    
		                    //경험활동 저장 시 insert하기
		                    $(document).on("click", "#activityOk", function(){
		                    	
		                    	var acData = {
		                    			
		                    			pe_num: $('#pe_num').val(),
		                    			ac_category: $('select[name="ac_category"]').val(),
		                    			ac_name: $('input[name="ac_name"]').val(),
		                    			ac_start: $('input[name="ac_start"]').val(),
		                    			ac_end: $('input[name="ac_end"]').val(),
		                    			ac_content: $('textarea[name="ac_content"]').val()
		                    	};
		                    	
		                    	//ac insert 장성 및 list 출력
		                    	$.ajax ({
		                    		
		                    		type: "post",
		                     	    url: "actibityinsert",
		                     	    contentType: "application/json",
		                     	    data: JSON.stringify(acData),
		                     	    dataType: "json", 
		                     	    success: function (res) {
		                     	    	
		                     	    	var ac_num = res.aclist[0].ac_num; // num
		                     	    	var ac_category = res.aclist[0].ac_category; // 카테고리
		                     	    	var ac_name = res.aclist[0].ac_name; // 이름
		                     	    	var ac_start = res.aclist[0].ac_start; // 시작일
		                     	    	var ac_end = res.aclist[0].ac_end; // 종료일
		                     	    	var ac_content = res.aclist[0].ac_content; // 내용
		                     	    	
		                     	    	//전체 데이터 담기
		                     	    	var ac = "";
		                     	    	
			                     	    	ac += '<table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">';
			                    			ac += '<tr>';
			                    			ac += '<td class="form-group">';
			                    			ac += '<span style="font-size: 1.3em;"><b>'+ac_category+' -> '+ac_name+'</b></span>&nbsp;';
			                    			ac += '<span>'+ac_start+' ~ '+ac_end+'</span>';
			                    			ac += '<span style="cursor: pointer;"><i class="bi bi-pencil acupdate" ac_num='+ac_num+'></i></span>';
			                    			ac += '<span style="cursor: pointer;"><i class="bi bi-trash3 acdelete" ac_num='+ac_num+'></i></span>';
			                    			ac += '</td>';
			                    			ac += '<td class="form-group" style="margin-top:1%;">';
			                    			ac += '<span>'+ac_content+'</span>';
			                    			ac += '</td>';
			                    			ac += '</tr>';
			                    			ac += '</table>';
			                    			
		                    			//list 나타내기
		                    			$("#activityList").append(ac);
		                    			
		                    			//form 리셋
		                    	    	$("#activityform").html("");
		                     	    }
		                    	})
		                    });
		                    
		                    //경험활동 삭제하기
		                    $(document).on("click", ".acdelete", function() {
		                    	
		                    	var ac_num = $(this).attr("ac_num");
		                    	//alert(ac_num);
		                    	var acThis = $(this);
		                    	
		                    	var ac_confirm = confirm("해당 내역을 삭제하시겠습니까?");
		                    	
		                    	if(ac_confirm) {
		                    		
		                    		$.ajax ({
		                    			
		                    			type : "get",
		                    			dataType :"html",
		                    			url : "actibitydelete",
		                    			data : {"ac_num":ac_num},
		                    			success : function () {
											
		                    				acThis.parents('table').remove();
										}
		                    		})
		                    	}
		                    });
		                    
		                    
		                    //학력 수정폼 띄우기
		                    $(document).on("click", ".acupdate", function() {
		                    	
		                    	var ac_num = $(this).attr("ac_num");
		                    	//alert(ac_num);
		                    	
		                    	$.ajax ({
		                    		
		                    		type : "get",
		                    		dataType : "json",
		                    		url : "actibityupdateform",
		                    		data : {"ac_num":ac_num},
		                    		success : function (data) {
										
		                    			//수정폼 누를 시 list 사라지게 하기
		                    			$("#activityList").hide();
		                    			
		                    			var ac_num = data.ac_num; // num
		                     	    	var ac_category = data.ac_category; // 카테고리
		                     	    	var ac_name = data.ac_name; // 이름
		                     	    	var ac_start = data.ac_start; // 시작일
		                     	    	var ac_end = data.ac_end; // 종료일
		                     	    	var ac_content = data.ac_content; // 내용
		                     	    	
		                     	    	//수정폼에 폼 담기
		                     	    	var total = "";
		                     	    	
			                     	       total += '<form id="actotal">';
			                     	       total += '<input type="hidden" name="ac_num" id="ac_num" value="'+ac_num+'">';
			 			                   total += '<table id="activityclick" style="width: 100%; margin-top: 2%;">';
			 			                   total += '<tr>';
			 			                   total += '<td class="form-group">';
			 			                   total += '<select class="form-select" style="width: 200px;" name="ac_category" value="'+ac_category+'">';
			 			                   total += '<option value="">활동구분 선택*</option>';
			 			                   total += '<option value="교내활동">교내활동</option>';
			 			                   total += '<option value="인턴">인턴</option>';
			 			                   total += '<option value="자원봉사">자원봉사</option>';
			 			                   total += '<option value="동아리">동아리</option>';
			 			                   total += '<option value="아르바이트">아르바이트</option>';
			 			                   total += '<option value="사회활동">사회활동</option>';
			 			                   total += '<option value="수행과제">수행과제</option>';
			 			                   total += '<option value="해외연수">해외연수</option>';
			 			                   total += '</select>';
			 			                   total += '<input type="text" class="form-control" style="width: 220px;" name="ac_name" value="'+ac_name+'">';
			 			                   total += '<input type="date" class="form-control" style="width: 180px;" name="ac_start" value="'+ac_start+'">';
			 			                   total += '<input type="date" class="form-control" style="width: 180px;" name="ac_end" value="'+ac_end+'">';
			 			                   total += '</td>';
			 			                   total += '</tr>';
			 			                   total += '<tr>';
			 			                   total += '<td class="form-group">';
			 			                   total += '<textarea class="form-control" style="height: 200px;"name="ac_content" value="'+ac_content+'">'+ac_content+'</textarea>';
			 			                   total += '</td>';
			 			                   total += '</tr>';
			 			                   total += '<!-- 저장 취소 버튼 -->';
			 			                   total += '<tr>';
			 			                   total += '<td colspan="2" align="right">';
			 			                   total += '<br>';
			 			                   total += '<button type="button" id="activityUpdateOk" class="btn btn-outline-primary">수정</button>';
			 			                   total +=  '&nbsp';
			 			                   total += '<button type="button" id="activityCancle" class="btn btn-outline-primary">취소</button>';
			 			                   total += '</td>';
			 			                   total += '</tr>';
			 			                   total += '</table>';
			 			                   total += '</form>';
		 			            
		 			                   $("#activityform").append(total);
		 			                   
		 			                   
		 			                   // 선택한 옵션을 설정
		 			                  $('select[name="ac_category"]').val(ac_category);
									}
		                    	})
		                    });
		                    
		                    //경험 활동 수정버튼 누르면 실행되어 수정 리스트 띄어주기
		                    $(document).on("click", "#activityUpdateOk", function(){
		                    	
										var acData = {
		                    			
			                    			pe_num: $('#pe_num').val(),
			                    			ac_num: $('#ac_num').val(),
			                    			ac_category: $('select[name="ac_category"]').val(),
			                    			ac_name: $('input[name="ac_name"]').val(),
			                    			ac_start: $('input[name="ac_start"]').val(),
			                    			ac_end: $('input[name="ac_end"]').val(),
			                    			ac_content: $('textarea[name="ac_content"]').val()
		                    	};
										
										$.ajax({
											
											type : "post",
											url: "actibityupdate",
				                    	    contentType: "application/json",
				                    	    data: JSON.stringify(acData),
				                    	    dataType: "json",
				                    	    success : function (res) {
												
				                    	    	var ac = "";
				                    	    	
				                    	    	$.each(res, function(i, dto) {
				                    	    		
				                    	    		var ac_num = dto.ac_num; // num
					                     	    	var ac_category = dto.ac_category; // 카테고리
					                     	    	var ac_name = dto.ac_name; // 이름
					                     	    	var ac_start = dto.ac_start; // 시작일
					                     	    	var ac_end = dto.ac_end; // 종료일
					                     	    	var ac_content = dto.ac_content; // 내용
					                     	    	
					                     	    	
					                     	    	//수정리스트 나타내기
					                     	    	ac += '<table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">';
					                    			ac += '<tr>';
					                    			ac += '<td class="form-group">';
					                    			ac += '<span style="font-size: 1.3em;"><b>'+ac_category+' -> '+ac_name+'</b></span>&nbsp;';
					                    			ac += '<span>'+ac_start+' ~ '+ac_end+'</span>';
					                    			ac += '<span style="cursor: pointer;"><i class="bi bi-pencil acupdate" ac_num='+ac_num+'></i></span>';
					                    			ac += '<span style="cursor: pointer;"><i class="bi bi-trash3 acdelete" ac_num='+ac_num+'></i></span>';
					                    			ac += '</td>';
					                    			ac += '<td class="form-group" style="margin-top:1%;">';
					                    			ac += '<span>'+ac_content+'</span>';
					                    			ac += '</td>';
					                    			ac += '</tr>';
					                    			ac += '</table>';
				                    	    	})
				                    	    	
				                    	    	//list 나타내기
				                      	    	$("#activityList").html(ac);
				                      	    	
				                      	    	//form 리셋
				                      	    	$("#activityform").html("");	 	
				                      	    	
				                      	    	$("#activityList").show();
											}
										})
		                    	
		                    });
                });
                
            </script>
                
<!-- 자격/어학/수상----------------------------------------------------------------------------------------------------------- -->
                <div class="qualification">
                    <div class="form-caption">
                        <h5><b>자격 / 어학 / 수상</b></h5>&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 0.8em;">*필수정보입력</span>
                        <span style="font-size: 0.8em; color: #4876EF; margin-left: 71.4%;">
                            <a style="cursor: pointer;" id="qualificationPlus">+ 추가하기</a></span>
                    </div>
                    <hr style="width: 100%;">
                    <div id="qualificationList"></div>
                    <div id="qualificationform"></div>
               </div>
            
            <script type="text/javascript">
		    //추가하기 누르면 폼 나타나게 하기
		    $(function () {
		        //추가하기 클릭시 입력창 추가
		        $("#qualificationPlus").click(function () {
		            var qualificationclick = $("#qualificationclick").length;
		
		            // 창이 하나도 안열려 있는 경우 추가폼 생성됨
		            if (qualificationclick == 0) {
		                var total = "";
		
		                total += '<form id="sptotal">';
		                total += '<table id="qualificationclick" style="width: 100%;">';
		                total += '<tr>';
		                total += '<td class="form-group">';
		                total += '<select class="form-select" style="width: 200px;" id="qualification-select" name="sp_category">';
		                total += '<option value="none">구분*</option>';
		                total += '<option value="자격증·면허증">자격증·면허증</option>';
		                total += '<option value="어학시험">어학시험</option>';
		                total += '<option value="수상내역·공모전">수상내역·공모전</option>';
		                total += '</select>';
		                total += '</td>';
		                total += '</tr>';
		                total += '<!-- 자격증 폼 -->';
		                total += '<tr id="qualify-options" style="display: none;">';
		                total += '<td class="form-group">';
		                total += '<input type="text" class="form-control" style="width: 200px;" placeholder="자격증명*" name="sp_ce_name">';
		                total += '<input type="text" class="form-control" style="width: 200px;" placeholder="발행처/기관*" name="sp_ce_organization">';
		                total += '<select class="form-select" style="width: 120px;" name="sp_ce_pass">';
		                total += '<option value="">합격구분*</option>';
		                total += '<option value="1차합격">1차합격</option>';
		                total += '<option value="2차합격">2차합격</option>';
		                total += '<option value="필기합격">필기합격</option>';
		                total += '<option value="실기합격">실기합격</option>';
		                total += '<option value="최종합격">최종합격</option>';
		                total += '</select>';
		                total += '<input type="date" class="form-control" style="width: 180px;" name="sp_ce_passday">';
		                total += '</td>';
		                total += '</tr>';
		                total += '<!-- 어학 폼 -->';
		                total += '<tr id="language-options" style="display: none;">';
		                total += '<td class="form-group">';
		                total += '<input type="text" class="form-control" style="width: 200px;" name="sp_la_name" placeholder="어학시험명*">';
		                total += '<input type="date" class="form-control" style="width: 180px;" name="sp_la_passday">';
		                total += '<input type="text" class="form-control" style="width: 200px;" name="sp_la_grade" placeholder="점수*">';
		                total += '</td>';
		                total += '</tr>';
		                total += '<!-- 어워드 폼 -->';
		                total += '<tr id="award-options" style="display: none;">';
		                total += '<td class="form-group">';
		                total += '<input type="text" class="form-control" style="width: 200px;" name="sp_aw_name" placeholder="수상·공모전명*">';
		                total += '<input type="date" class="form-control" style="width: 180px;" name="sp_aw_sangday">';
		                total += '<input type="text" class="form-control" style="width: 200px;" name="sp_aw_organization" placeholder="수여·주최기관*">';
		                total += '</td>';
		                total += '</tr>';
		                total += '<!-- 저장 취소 버튼 -->';
		                total += '<tr>';
		                total += '<td colspan="2" align="right">';
		                total += '<br>';
		                total += '<button type="button" id="specOk" class="btn btn-outline-primary">저장</button>';
		                total += '&nbsp';
		                total += '<button type="button" id="qualificationCancle" class="btn btn-outline-primary">취소</button>';
		                total += '</td>';
		                total += '</tr>';
		                total += '</table>';
		
		                $("#qualificationform").append(total);
		
		            }
		        });
		
		        // 자격 / 어학 / 수상 구분 선택하면 카테고리에 맞게 폼 나타내기
		        $(document).on("change", "#qualification-select", function () {
		            // 해당폼 구분 선택시 다르게
		            if ($(this).val() === '자격증·면허증') {
		                $("#qualify-options").css("display","block");
		                $("#language-options").css("display","none");
		                $("#award-options").css("display","none");
		            }
		            else if($(this).val() === '어학시험') {
		                $("#qualify-options").css("display","none");
		                $("#language-options").css("display","block");
		                $("#award-options").css("display","none");
		            }           
		            else {
		                $("#qualify-options").css("display","none");
		                $("#language-options").css("display","none");
		                $("#award-options").css("display","block");
		            }
		        });
		
		        // 취소 클릭시 입력창 삭제
		        $(document).on("click", "#qualificationCancle", function () {
		            $("#qualificationList").show();
		            $("#qualificationform").html("");
		        });
		
		        //스펙 저장시 insert 하기
		        $(document).on("click", "#specOk", function(){
		            // spData에 form 데이터 수집
		            var spData = {
		                pe_num: $('#pe_num').val(),
		                sp_category: $('select[name="sp_category"]').val(),
		                sp_ce_name: $('input[name="sp_ce_name"]').val(),
		                sp_ce_organization: $('input[name="sp_ce_organization"]').val(),
		                sp_ce_pass: $('select[name="sp_ce_pass"]').val(),
		                sp_ce_passday: $('input[name="sp_ce_passday"]').val(),
		                sp_la_name: $('input[name="sp_la_name"]').val(),
		                sp_la_passday: $('input[name="sp_la_passday"]').val(),
		                sp_la_grade: $('input[name="sp_la_grade"]').val(),
		                sp_aw_name: $('input[name="sp_aw_name"]').val(),
		                sp_aw_organization: $('input[name="sp_aw_organization"]').val(),
		                sp_aw_sangday: $('input[name="sp_aw_sangday"]').val()
		            }
		
		            // 콘솔에 spData 로그 출력
		            console.log(spData); // 콘솔에 출력하여 데이터 확인
		
		            //sp insert 작성 및 list 출력
		            $.ajax ({
		                type: "post",
		                url: "specinsert",
		                contentType: "application/json",
		                data: JSON.stringify(spData),
		                dataType: "json", 
		                success: function(res) {
		                    var sp_num = res.splist[0].sp_num; // 카테고리
		                    var sp_category = res.splist[0].sp_category; // 카테고리
		
		                    var sp_name = (sp_category === '자격증·면허증') ? res.splist[0].sp_ce_name
		                                 : (sp_category === '어학시험') ? res.splist[0].sp_la_name
		                                 : (sp_category === '수상내역·공모전') ? res.splist[0].sp_aw_name : '';
		
		                    var sp_passday = (sp_category === '자격증·면허증') ? res.splist[0].sp_ce_passday
		                                 : (sp_category === '어학시험') ? res.splist[0].sp_la_passday
		                                 : (sp_category === '수상내역·공모전') ? res.splist[0].sp_aw_sangday : '';
		
		                    var sp_ce_organization = res.splist[0].sp_ce_organization; // 자격 _ 발행처
		                    var sp_ce_pass = res.splist[0].sp_ce_pass; // 자격 _ 합격구분
		                    var sp_la_grade = res.splist[0].sp_la_grade; // 어학 _ 점수
		                    var sp_aw_organization = res.splist[0].sp_aw_organization; // 수상 _ 주최기관
		
		                    // 전체 데이터 담기
		                    var sp = "";
		
		                    sp += '<table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">';
		                    sp += '<tr>';
		                    sp += '<td class="form-group">';
		                    sp += '<span style="font-size: 1.2em;"><b>' + sp_name + '</b></span>&nbsp;';
		                    sp += '<span>' + sp_passday + '</span>&nbsp;&nbsp;&nbsp;&nbsp;';
		                    sp += '<span style="cursor: pointer;"><i class="bi bi-pencil spupdate" sp_num=' + sp_num + '></i></span>';
		                    sp += '<span style="cursor: pointer;"><i class="bi bi-trash3 spdelete" sp_num=' + sp_num + '></i></span>';
		                    sp += '</td>';
		
		                    // 카테고리별 정보 추가
		                    if (sp_category === "자격증·면허증") {
		                        sp += '<td class="form-group">';
		                        sp += '<span>' + sp_ce_organization + '</span>&nbsp;';
		                        sp += '<span>' + sp_ce_pass + '</span>';
		                        sp += '</td>';
		                    } 
		                    
		                    else if (sp_category === "어학시험") {
		                        sp += '<td class="form-group">';
		                        sp += '<span>점수&nbsp;&nbsp;' + sp_la_grade + '점</span>';
		                        sp += '</td>';
		                    }
		                    
		                    else if (sp_category === "수상내역·공모전") {
		                        sp += '<td class="form-group">';
		                        sp += '<span>' + sp_aw_organization + '</span>';
		                        sp += '</td>';
		                    }
		
		                    sp += '</tr>';
		                    sp += '</table>';
		
		                    //list 나타내기
		                    $("#qualificationList").append(sp);
		
		                    //form 리셋
		                    $("#qualificationform").html("");
		                }
		            });
		        });
		        
		        
		        //스펙 삭제하기
		        $(document).on("click", ".spdelete", function(){
		        	
		        	var sp_num = $(this).attr("sp_num");
		        	var spThis = $(this);
		        	
		        	var sp_confirm = confirm("해당 내역을 삭제하시겠습니까?");
		        	
		        	if(sp_confirm) {
		        		
		        		$.ajax ({
		        			
		        			type : "get",
		        			url : "specdelete",
		        			dataType : "html",
		        			data : {"sp_num":sp_num},
		        			success : function() {
		        				
		        				spThis.parents('table').remove();
		        			}
		        		})
		        	}
		        });
		        
		        //스펙 수정폼 띄우기
		        $(document).on("click", ".spupdate", function(){
		        	
		        	var sp_num = $(this).attr("sp_num");
		        	//alert(sp_num);
		        	
		        	$.ajax({
					    type: "get",
					    dataType: "json",
					    url: "specupdateform", // 수정 필요: 실제 URL로 변경
					    data: {"sp_num": sp_num},
					    success: function(data) {
					        // list 사라지게하기
					        $("#qualificationList").hide();
					        
					        var sp_num = data.sp_num; // 자격증 번호
					        var sp_category = data.sp_category; // 카테고리
					        
					        var sp_name = (sp_category === '자격증·면허증') ? data.sp_ce_name
					                     : (sp_category === '어학시험') ? data.sp_la_name
					                     : (sp_category === '수상내역·공모전') ? data.sp_aw_name : '';
					        
					        var sp_passday = (sp_category === '자격증·면허증') ? data.sp_ce_passday
					                       : (sp_category === '어학시험') ? data.sp_la_passday
					                       : (sp_category === '수상내역·공모전') ? data.sp_aw_sangday : '';
					        
					        var sp_ce_organization = data.sp_ce_organization; // 자격 _ 발행처
					        var sp_ce_pass = data.sp_ce_pass; // 자격 _ 합격구분
					        var sp_la_grade = data.sp_la_grade; // 어학 _ 점수
					        var sp_aw_organization = data.sp_aw_organization; // 수상 _ 주최기관
					        
					        
					        // 수정 버튼 클릭 시 데이터 넣어주기
					        var total = "";
					        
					        total += '<form id="sptotal">';
					        total += '<input type="hidden" name="sp_num" id="sp_num" value="'+sp_num+'">'
					        total += '<table id="qualificationclick" style="width: 100%;">';
					        total += '<tr>';
					        total += '<td class="form-group">';
					        total += '<select class="form-select" style="width: 200px;" id="qualification-select" name="sp_category">';
					        total += '<option value="none">구분*</option>';
					        total += '<option value="자격증·면허증">자격증·면허증</option>';
					        total += '<option value="어학시험">어학시험</option>';
					        total += '<option value="수상내역·공모전">수상내역·공모전</option>';
					        total += '</select>';
					        total += '</td>';
					        total += '</tr>';
					        // 자격증 폼
					        total += '<tr id="qualify-options" style="display: none;">';
					        total += '<td class="form-group">';
					        total += '<input type="text" class="form-control" style="width: 200px;" value="'+sp_name+'" name="sp_ce_name">';
					        total += '<input type="text" class="form-control" style="width: 200px;" value="'+sp_ce_organization+'" name="sp_ce_organization">';
					        total += '<select class="form-select" style="width: 120px;" name="sp_ce_pass">';
					        total += '<option value="">합격구분*</option>';
					        total += '<option value="1차합격">1차합격</option>';
					        total += '<option value="2차합격">2차합격</option>';
					        total += '<option value="필기합격">필기합격</option>';
					        total += '<option value="실기합격">실기합격</option>';
					        total += '<option value="최종합격">최종합격</option>';
					        total += '</select>';
					        total += '<input type="date" class="form-control" style="width: 180px;" name="sp_ce_passday" value="'+sp_passday+'">';
					        total += '</td>';
					        total += '</tr>';
					        // 어학 폼
					        total += '<tr id="language-options" style="display: none;">';
					        total += '<td class="form-group">';
					        total += '<input type="text" class="form-control" style="width: 200px;" name="sp_la_name" value="'+sp_name+'">';
					        total += '<input type="date" class="form-control" style="width: 180px;" name="sp_la_passday" value="'+sp_passday+'">';
					        total += '<input type="text" class="form-control" style="width: 200px;" name="sp_la_grade" value="'+sp_la_grade+'">';
					        total += '</td>';
					        total += '</tr>';
					        // 어워드 폼
					        total += '<tr id="award-options" style="display: none;">';
					        total += '<td class="form-group">';
					        total += '<input type="text" class="form-control" style="width: 200px;" name="sp_aw_name" value="'+sp_name+'">';
					        total += '<input type="date" class="form-control" style="width: 180px;" name="sp_aw_sangday" value="'+sp_passday+'">';
					        total += '<input type="text" class="form-control" style="width: 200px;" name="sp_aw_organization" value="'+sp_aw_organization+'">';
					        total += '</td>';
					        total += '</tr>';
					        // 저장 취소 버튼
					        total += '<tr>';
					        total += '<td colspan="2" align="right">';
					        total += '<br>';
					        total += '<button type="button" id="specUpdateOk" class="btn btn-outline-primary">수정</button>';
					        total += '&nbsp';
					        total += '<button type="button" id="qualificationCancle" class="btn btn-outline-primary">취소</button>';
					        total += '</td>';
					        total += '</tr>';
					        total += '</table>';
					
					        $("#qualificationform").append(total);
					        
					        
					        // 해당폼 구분 선택 시 다르게
					        $("select[name=sp_category]").val(sp_category);
					        
					        // 각 카테고리에 따라 데이터 넣기
					        if (sp_category === '자격증·면허증') {
					            $('select[name="sp_ce_pass"]').val(sp_ce_pass);
					            $("#qualify-options").css("display","block");
					            $("#language-options").css("display","none");
					            $("#award-options").css("display","none");
					        } else if (sp_category === '어학시험') {
					            $("#qualify-options").css("display","none");
					            $("#language-options").css("display","block");
					            $("#award-options").css("display","none");
					        } else {
					            $("#qualify-options").css("display","none");
					            $("#language-options").css("display","none");
					            $("#award-options").css("display","block");
					        }
                    	}
		        	})
		        });
		        
		        //스펙 수정 버튼을 누르면 실행되어 수정 리스트 띄어주기
		        $(document).on("click", "#specUpdateOk", function(){
		        	
		        	var spData = {
		        			
		        			pe_num: $('#pe_num').val(),
		        			sp_num: $('#sp_num').val(),
			                sp_category: $('select[name="sp_category"]').val(),
			                sp_ce_name: $('input[name="sp_ce_name"]').val(),
			                sp_ce_organization: $('input[name="sp_ce_organization"]').val(),
			                sp_ce_pass: $('select[name="sp_ce_pass"]').val(),
			                sp_ce_passday: $('input[name="sp_ce_passday"]').val(),
			                sp_la_name: $('input[name="sp_la_name"]').val(),
			                sp_la_passday: $('input[name="sp_la_passday"]').val(),
			                sp_la_grade: $('input[name="sp_la_grade"]').val(),
			                sp_aw_name: $('input[name="sp_aw_name"]').val(),
			                sp_aw_organization: $('input[name="sp_aw_organization"]').val(),
			                sp_aw_sangday: $('input[name="sp_aw_sangday"]').val()
		        			
		        	}
		        	
		        	//sp insert 작성 및 list 출력
		        	$.ajax ({
		        		
		        		type: "post",
                	    url: "specupdate",
                	    contentType: "application/json",
                	    data: JSON.stringify(spData),
                	    dataType: "json", 
                	    success : function(res) {
                	    	
                	    	var sp = "";
                	    	
                	    	$.each(res, function(i, dto) {
                	    		
                	    		var sp_num = dto.sp_num; // 자격증 번호
    					        var sp_category = dto.sp_category; // 카테고리
    					        
    					        var sp_name = (sp_category === '자격증·면허증') ? dto.sp_ce_name
    					                     : (sp_category === '어학시험') ? dto.sp_la_name
    					                     : (sp_category === '수상내역·공모전') ? data.sp_aw_name : '';
    					        
    					        var sp_passday = (sp_category === '자격증·면허증') ? dto.sp_ce_passday
    					                       : (sp_category === '어학시험') ? dto.sp_la_passday
    					                       : (sp_category === '수상내역·공모전') ? dto.sp_aw_sangday : '';
    					        
    					        var sp_ce_organization = dto.sp_ce_organization; // 자격 _ 발행처
    					        var sp_ce_pass = dto.sp_ce_pass; // 자격 _ 합격구분
    					        var sp_la_grade = dto.sp_la_grade; // 어학 _ 점수
    					        var sp_aw_organization = dto.sp_aw_organization; // 수상 _ 주최기관
    					        
    					        //list 폼
    					        sp += '<table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">';
    		                    sp += '<tr>';
    		                    sp += '<td class="form-group">';
    		                    sp += '<span style="font-size: 1.2em;"><b>' + sp_name + '</b></span>&nbsp;';
    		                    sp += '<span>' + sp_passday + '</span>&nbsp;&nbsp;&nbsp;&nbsp;';
    		                    sp += '<span style="cursor: pointer;"><i class="bi bi-pencil spupdate" sp_num=' + sp_num + '></i></span>';
    		                    sp += '<span style="cursor: pointer;"><i class="bi bi-trash3 spdelete" sp_num=' + sp_num + '></i></span>';
    		                    sp += '</td>';
    		
    		                    // 카테고리별 정보 추가
    		                    if (sp_category === "자격증·면허증") {
    		                        sp += '<td class="form-group">';
    		                        sp += '<span>' + sp_ce_organization + '</span>&nbsp;';
    		                        sp += '<span>' + sp_ce_pass + '</span>';
    		                        sp += '</td>';
    		                    } 
    		                    
    		                    else if (sp_category === "어학시험") {
    		                        sp += '<td class="form-group">';
    		                        sp += '<span>점수&nbsp;&nbsp;' + sp_la_grade + '점</span>';
    		                        sp += '</td>';
    		                    }
    		                    
    		                    else if (sp_category === "수상내역·공모전") {
    		                        sp += '<td class="form-group">';
    		                        sp += '<span>' + sp_aw_organization + '</span>';
    		                        sp += '</td>';
    		                    }
    		
    		                    sp += '</tr>';
    		                    sp += '</table>';
    		
                	    	})
                	    	
                	    	//list 나타내기
                  	    	$("#qualificationList").html(sp);
                  	    	
                  	    	//form 리셋
                  	    	$("#qualificationform").html("");	 	
                  	    	
                  	    	$("#qualificationList").show();
                	    }
		        	})
		        });
		    });
		</script>
                
<!-------------- 포트폴리오/기타문서---------------------------------------------------------------------------------------------- -->
                <div class="portfolio">
                    <div class="form-caption">
                        <h5><b>포트폴리오 / 기타문서</b></h5>&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 0.8em; color: #4876EF; margin-left: 75.2%;">
                    <a style="cursor: pointer;" id="portfolioPlus">+ 추가하기</a></span>
                    </div>
                    <hr style="width: 100%;">
                    <div id="portfolioList"></div>
                    <div id="portfolioform"></div>
              </div>
                
                <script type="text/javascript">
                
                  $(function () {
                  
                       //버튼 클릭 시 포트폴리오 또는 기타 자료 첨부
                       $("#portfolioform").on("click", "#portfoliofile", function () {
                          
                        $("#pe_file").trigger("click");
                    });
                                   
                       
                       
                       //추가하기 클릭시 입력창 추가
                       $("#portfolioPlus").click(function () {
                          
                           var portfolioclick = $("#portfolioclick").length;
               
                           // 창이 하나도 안열려 있는 경우 추가폼 생성됨
                           if (portfolioclick == 0) {
                              
                               var total = "";
                                                         
                                   total += '<form id="pototal">';
			                       total += '<table id="portfolioclick" style="width: 100%;">';
			                       total += '<tr>';
			                       total += '<td class="form-group">';
			                       total += '<p style="font-size: 0.8em;">내 포트폴리오 및 추가로 제출할 문서를 첨부해보세요</p>';
			                       total += '</td>';
			                       total += '</tr>';
			                       total += '<tr>';
			                       total += '<td class="form-group">';
			                       total += '<input type="file" name="pe_file" id="pe_file" style="display: none;" multiple="multiple" >';
			                       total += '<button type="button" id="portfoliofile"';
			                       total += 'class="btn btn-primary" name="po_file" style="width: 1000px;">+ 포트폴리오 및 기타문서 추가</button>';
			                       total += '</td>';
			                       total += '</tr>';
			                       total += '<!-- 저장 취소 버튼 -->';
			                       total += '<tr>';
			                       total += '<td colspan="2" align="right">';
			                       total += '<br>';
			                       total += '<button type="button" id="portfolioOk" class="btn btn-outline-primary">저장</button>';
			                       total +=  '&nbsp';
			                       total += '<button type="button" id="portfolioCancle" class="btn btn-outline-primary">취소</button>';
			                       total += '</td>';
			                       total += '</tr>';
			                       total += '</table>';
			                       total += '</form>';                               
                               
               
                               $("#portfolioform").append(total);
                           }
                       });
               
                       // 취소 클릭시 입력창 삭제
                       $(document).on("click", "#portfolioCancle", function () {
                          
                           $("#portfolioList").show();
                           $("#portfolioform").html("");
                       });
                       
                       //포트폴리오 저장시 insert
                       $(document).on("click", "#portfolioOk", function() {
						  
                    	   var formData = new FormData();
                    	   
                    	   formData.append('pe_num', $('#pe_num').val());
                    	    
                    	    var poFileInput = $("#pe_file")[0];
                    	    
                    	    console.log(poFileInput.files[0]);
                    	    
                    	    if (poFileInput.files.length > 0) {
                    	        formData.append('po_filepath', poFileInput.files[0]);
                    	    }

                    	    console.log("Form Data:", formData);

                    	    $.ajax({
                    	        type: "post",
                    	        url: "/resumehome/portfolioinsert",
                    	        data: formData,
                    	        processData: false,
                    	        contentType: false,
                    	        enctype: 'multipart/form-data',
                    	        //dataType: "json",
						        success: function(res) {
						        	 
						            var po_num = res.polist[0].po_num;
						            var po_file = res.polist[0].po_file;

						            // 리스트에 추가할 HTML 코드 생성
						            var po = '<table>' +
						                     '<tr>' +
						                     '<td class="form-group">';
						                     
						                     if (po_file !== 'no') { // 파일이 있는 경우에만 링크 추가
						                    	    var filePath = "../iruckseoportfolio/" + po_file; // 포트폴리오 파일이 저장된 경로
						                    	    po += '<a  id="download" url="'+filePath+'" fileName="'+po_file+'">' +
						                    	          '<span><b>' + po_file + '</b></span>' +
						                    	          '</a>';
						                    	}
								            po += '<span style="cursor: pointer;" id="poDelete" ><i class="bi bi-trash3 podelete" po_num=' + po_num + '></i></span>' +
								                  '</td>' +
								                  '</tr>' +
								                  '</table>';
	                     		       
	                     		       //list 나타내기
	                     		       $("#portfolioList").append(po);
	                     		       
	                     		       //form 리셋
	                     		       $("#portfolioform").html("");
	                     	   }
                    	   })
                       });
                       
                       //포트폴리오 삭제하기
                       $(document).on("click", ".podelete", function() {
                    	   var poThis = $(this);
                    	   var poData = {
                    			po_num: $(this).attr("po_num"),
       		        			pe_num: $('#pe_num').val()
  	     		        	}
                    	   $.ajax ({
                    		   type : "post",
                    		   url : "portfoliodelete",
                    		   contentType: "application/json",
                    		   data: JSON.stringify(poData),
                    		   dataType : "json",
                    		   success : function(data) {
                    			   console.log(data); 
                    			   
                    			   var code = data.CODE;
                    			   
                    			   if(code == "00"){
                    				   poThis.parents('table').remove();
                    			   }else{
                    				   alert("삭제가 되지 않았습니다");
                    			   }
                    			   
                    		   }
                    	   })
                       });
                       
					   //포트폴리오 다운로드하기                       
                       $(document).on("click", "#download", function() {
                    	   
                    	   var url = $(this).attr("url");
                    	   var fileName = $(this).attr("fileName");
                    	   
                           $.ajax({
                               url: url,
                               cache: false,
                               xhr: function () {
                                   var xhr = new XMLHttpRequest();
                                   xhr.onreadystatechange = function () {
                                       if (xhr.readyState == 2) {
                                           if (xhr.status == 200) {
                                               xhr.responseType = "blob";
                                           } else {
                                               xhr.responseType = "text";
                                           }
                                       }
                                   };
                                   return xhr;
                               },
                               success: function (data) {
                                   //Convert the Byte Data to BLOB object.
                                   var blob = new Blob([data], { type: "application/octetstream" });
                
                                   //Check the Browser type and download the File.
                                   var isIE = false || !!document.documentMode;
                                   if (isIE) {
                                       window.navigator.msSaveBlob(blob, fileName);
                                   } else {
                                       var url = window.URL || window.webkitURL;
                                       link = url.createObjectURL(blob);
                                       var a = $("<a />");
                                       a.attr("download", fileName);
                                       a.attr("href", link);
                                       $("body").append(a);
                                       a[0].click();
                                       $("body").remove(a);
                                   }
                               }
                           });
                    	   
                       });
                       
                    })   
                </script>
            
<!-- 자기소개서 ---------------------------------------------------------------------------------------------------------------->
                <div class="self">
                        <div class="form-caption">
                            <h5><b>자기소개서</b></h5>&nbsp;&nbsp;&nbsp;
                            <span style="font-size: 0.8em; color: #4876EF; margin-left: 84%;">
                         <a style="cursor: pointer;" id="selfPlus">+ 추가하기</a></span>
                        </div>
                        <hr style="width: 100%;">
                        <div id="selfList"></div>
                        <div id="selfform"></div>
                </div>
                
                
                <script type="text/javascript">
                
                  $(function () {
                  
                       
                       //추가하기 클릭시 입력창 추가
                       $("#selfPlus").click(function () {
                          
                           var selfclick = $("#selfclick").length;
               
                           // 창이 하나도 안열려 있는 경우 추가폼 생성됨
                           if (selfclick == 0) {
                              
                               var total = "";
                                                                                                                                 
		                           total += '<form id="setotal">';
		                           total += '<table id="selfclick" style="width: 100%;">';
		                           total += '<tr>';
		                           total += '<td class="form-group">';
		                           total += '<input type="text" class="form-control" style="width: 700px;" name="se_subject" placeholder="자기소개서 제목">';
		                           total += '</td>';
		                           total += '</tr>';
		                           total += '<tr>';
		                           total += '<td class="form-group">';
		                           total += '<textarea class="form-control" style="height: 200px;"';
		                           total += 'name="se_content" placeholder="코드커넥트인만의 특벽한 자소서 툴과 함께 차별화된 자기소개서를 완성해보세요"></textarea>';
		                           total += '</td>';
		                           total += '</tr>';                                      
		                           total += '<!-- 저장 취소 버튼 -->';
		                           total += '<tr>';
		                           total += '<td colspan="2" align="right">';
		                           total += '<br>';
		                           total += '<button type="button" id="selfOk" class="btn btn-outline-primary">저장</button>';
		                           total +=  '&nbsp';
		                           total += '<button type="button" id="selfCancle" class="btn btn-outline-primary">취소</button>';
		                           total += '</td>';
		                           total += '</tr>';
		                           total += '</table>';
		                           total += '</form>';
                                                   
                               $("#selfform").append(total);
                           }
                       });
                       
               
                       // 자기소개서 취소 클릭시 입력창 삭제
                       $(document).on("click", "#selfCancle", function () {
                          
                    	   $("#selfList").show();
                           $("#selfform").html("");
                       });
                       
                       //자기소개서 저장 시 insert
                       $(document).on("click", "#selfOk", function() {
                    	 
                    	   var seData = {
                    			   
                    			   pe_num: $('#pe_num').val(),
                    			   se_subject: $('input[name="se_subject"]').val(),
                    			   se_content: $('textarea[name="se_content"]').val()
                    	   }
                    	   
                    	   //se insert 작성 및 list 출력
                    	   $.ajax ({
                    		 
                    		   type: "post",
	                     	   url: "selfinsert",
	                     	   contentType: "application/json",
	                     	   data: JSON.stringify(seData),
	                     	   dataType: "json", 
	                     	   success : function (res) {
	                     		   
	                     		  var se_num = res.selist[0].se_num; // num
	                     	      var se_subject = res.selist[0].se_subject; // 제목
	                     	      var se_content = res.selist[0].se_content; // 내용
	                     	      
	                     	      //전체 데이터 담기
	                     	      var se = "";
	                     	      
	                     	      
	                     	            se += '<table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">';
		                    			se += '<tr>';
		                    			se += '<td class="form-group">';
		                    			se += '<span style="font-size: 1.3em;"><b>'+se_subject+'</b></span>&nbsp;';
		                    			se += '<span style="cursor: pointer;"><i class="bi bi-pencil seupdate" se_num='+se_num+'></i></span>';
		                    			se += '<span style="cursor: pointer;"><i class="bi bi-trash3 sedelete" se_num='+se_num+'></i></span>';
		                    			se += '</td>';
		                    			se += '<td class="form-group" style="margin-top:1%;">';
		                    			se += '<span>'+se_content+'</span>';
		                    			se += '</td>';
		                    			se += '</tr>';
		                    			se += '</table>';
			                    			
		                 			//list 나타내기
		                 			$("#selfList").append(se);
		                 			
		                 			//form 리셋
		                 	    	$("#selfform").html("");
	                     	   }
                    	   })
                       });
                       
                       //자기소개서 삭제하기
                       $(document).on("click", ".sedelete", function(){
                    	 
                    	   var se_num = $(this).attr("se_num");
                    	   var seThis = $(this);
                    	   
                    	   var se_confirm = confirm("해당 내역을 삭제하시겠습니까?");
                    	   
                    	   if(se_confirm) {
                    		   
                    		   $.ajax ({
                    			 
                    			   type : "get",
                    			   dataType : "html",
                    			   url : "selfdelete",
                    			   data : {"se_num":se_num},
                    			   success : function() {
                    				   
                    				   seThis.parents('table').remove();
                    			   }
                    		   })
                    	   }
                       });
                       
                       //자기소개서 수정폼 띄우기
                       $(document).on("click", ".seupdate", function(){
                    	 
                    	   var se_num = $(this).attr("se_num");
                    	   
                    	   $.ajax({
                    		 
                    		   type : "get",
                    		   dataType : "json",
                    		   url : "selfupdateform",
                    		   data : {"se_num":se_num},
                    		   success : function(data) {
                    			   
                    			   //수정폼 누를 시 list 사라지게 하기
                    			   $("#selfList").hide();
                    			   
                    			   var se_num = data.se_num; // num
 	                     	       var se_subject = data.se_subject; // 제목
 	                     	       var se_content = data.se_content; // 내용
 	                     	       
 	                     	       var total = "";
                                 
			                           total += '<form id="setotal">';
			                           total += '<input type="hidden" name="se_num" id="se_num" value="'+se_num+'">';
			                           total += '<table id="selfclick" style="width: 100%;">';
			                           total += '<tr>';
			                           total += '<td class="form-group">';
			                           total += '<input type="text" class="form-control" style="width: 700px;" name="se_subject" value="'+se_subject+'">';
			                           total += '</td>';
			                           total += '</tr>';
			                           total += '<tr>';
			                           total += '<td class="form-group">';
			                           total += '<textarea class="form-control" style="height: 200px;"';
			                           total += 'name="se_content" value="'+se_content+'">'+se_content+'</textarea>';
			                           total += '</td>';
			                           total += '</tr>';                                      
			                           total += '<!-- 저장 취소 버튼 -->';
			                           total += '<tr>';
			                           total += '<td colspan="2" align="right">';
			                           total += '<br>';
			                           total += '<button type="button" id="selfUpdateOk" class="btn btn-outline-primary">수정</button>';
			                           total +=  '&nbsp';
			                           total += '<button type="button" id="selfCancle" class="btn btn-outline-primary">취소</button>';
			                           total += '</td>';
			                           total += '</tr>';
			                           total += '</table>';
	                                                 
	                             $("#selfform").append(total);
                    		   }
                    	   })
                       });
                       
                       //자기소개서 수정버튼 누르면 실행되어 수정 리스트 띄어주기
                       $(document).on("click", "#selfUpdateOk", function(){
                    	 
                          var seData = {
                    			   
                    			   pe_num: $('#pe_num').val(),
                    			   se_num: $('#se_num').val(),
                    			   se_subject: $('input[name="se_subject"]').val(),
                    			   se_content: $('textarea[name="se_content"]').val()
                    	   }
                          
                          $.ajax ({
                        	
                        	  type : "post",
							  url: "selfupdate",
	                    	  contentType: "application/json",
	                          data: JSON.stringify(seData),
	                          dataType: "json",
	                          success : function(res) {
	                        	  
	                        	  var se = "";
	                        	  
	                        	  $.each(res, function(i, dto){
	                        		
	                        		  var se_num = dto.se_num; // num
	 	                     	      var se_subject = dto.se_subject; // 제목
	 	                     	      var se_content = dto.se_content; // 내용
	 	                     	      
	 	                     	      //수정리스트 나타내기
		 	                     	    se += '<table style="border-bottom: 0.5px solid #D9D9D9; width: 100%; margin-top: 1%;">';
		                    			se += '<tr>';
		                    			se += '<td class="form-group">';
		                    			se += '<span style="font-size: 1.3em;"><b>'+se_subject+'</b></span>&nbsp;';
		                    			se += '<span style="cursor: pointer;"><i class="bi bi-pencil seupdate" se_num='+se_num+'></i></span>';
		                    			se += '<span style="cursor: pointer;"><i class="bi bi-trash3 sedelete" se_num='+se_num+'></i></span>';
		                    			se += '</td>';
		                    			se += '<td class="form-group" style="margin-top:1%;">';
		                    			se += '<span>'+se_content+'</span>';
		                    			se += '</td>';
		                    			se += '</tr>';
		                    			se += '</table>';
	                        	  })
	                        	  

	                    	    	//list 나타내기
	                      	    	$("#selfList").html(se);
	                      	    	
	                      	    	//form 리셋
	                      	    	$("#selfform").html("");	 	
	                      	    	
	                      	    	$("#selfList").show();
	                          }
                          })
                    	   
                       })
                       
                    });  
                </script>
                
 <!-- 희망근무조건 ---------------------------------------------------------------------------------------------------------------->
            <div class="hope">
            <input type="hidden" name="ho_num" id="ho_num" value="">
                    <div class="form-caption">
                        <h5><b>희망근무조건</b></h5>
                    </div>
                    <hr style="width: 100%;">
                    <div id="hopeList"></div>
                    <div id="hopeform"></div>
                    
                    <table id="hopeclick" style="width: 100%;">
                     <tr>
                       <td class="form-group">
                         <select class="form-select" style="width: 300px;" name="ho_category">
                          <option value="">고용형태</option>
                          <option value="정규직">정규직</option>
                          <option value="계약직">계약직</option>
                          <option value="프리랜서">프리랜서</option>
                          <option value="인턴직">인턴직</option>
                      </select>
                         <input type="text" class="form-control" style="width: 200px;" placeholder="희망연봉" name="ho_money" id="ho_money">만원이상 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                         <input type="checkbox" name="ho_check" id="ho_check">면접 후 결정
                       </td>
                     </tr>
                     
                     <!-- 희망근무지------------------------------------------------------------------------------------------------------------------ -->
                      <tr>
                        <td class="form-group" style="margin-top: 2%;">
                            &nbsp;<span style="font-size: 0.8em; display: inline-block;">희망 근무지</span>&nbsp;&nbsp;&nbsp;
                            <span style="font-size: 0.8em; display: inline-block;">*최대 3개 시도 안에서 자유롭게 선택 가능합니다</span>&nbsp;&nbsp;&nbsp;
                            <span style="font-size: 0.8em; color: #4876EF; display: inline-block;">
                            <a style="cursor: pointer;" id="areaPlus">+ 추가하기</a></span>
                        </td>
                      </tr>
                      
                      <tr>
                           <td class="form-group" style="margin-top: 1%;">
                             <div id="areaform" ></div>
                           </td>
                      </tr>   
                      
                      <tr>
                           <td class="form-group" style="margin-top: 1%;">
                               <div id="areaClick" style="display: none;">
                                 <div class="areaSelect">
                                    <ul style="text-align: center;">
                                       <li value="서울특별시 전지역">서울특별시 전지역</li>
                                       <li value="부산광역시 전지역">부산광역시 전지역</li>
                                       <li value="대구광역시 전지역">대구광역시 전지역</li>
                                       <li value="인천광역시 전지역">인천광역시 전지역</li>
                                       <li value="광주광역시 전지역">광주광역시 전지역</li>
                                       <li value="대전광역시 전지역">대전광역시 전지역</li>
                                       <li value="울산광역시 전지역">울산광역시 전지역</li>
                                       <li value="세종특별자치시 전지역">세종특별자치시 전지역</li>
                                       <li value="경기도 전지역">경기도 전지역</li>
                                       <li value="강원특별자치시 전지역">강원특별자치시 전지역</li>
                                       <li value="충청북도 전지역">충청북도 전지역</li>
                                       <li value="충청남도 전지역">충청남도 전지역</li>
                                       <li value="전라북도 전지역">전라북도 전지역</li>
                                       <li value="전라남도 전지역">전라남도 전지역</li>
                                       <li value="경상북도 전지역">경상북도 전지역</li>
                                       <li value="경상남도 전지역">경상남도 전지역</li>
                                       <li value="제주특별자치도 전지역">제주특별자치도 전지역</li>
                                    </ul>
                                 </div>
                                 <button type="button" id="areaCancle" style="float: right; margin-top:1%;" class="btn btn-outline-primary">닫기</button>
                              </div>
                           </td>
                      </tr>      
                             


                        <!-- 직무 --------------------------------------------------------------------------------------------------------->
                        <tr>
                           <td class="form-group" style="margin-top: 2%;">
                            &nbsp;<span style="font-size: 0.8em; display: inline-block;">직무 키워드</span>&nbsp;&nbsp;&nbsp;
                            <span style="font-size: 0.8em; color: #4876EF; display: inline-block;">
                            <a style="cursor: pointer;" id="jobPlus">+ 추가하기</a></span>
                           </td>
                         </tr>
                         
                       <tr>
                           <td class="form-group" style="margin-top: 1%;">
                             <div id="jobform"></div>
                           </td>
                        </tr>   
                      
                      <tr>
                          <td class="form-group" style="margin-top: 1%;">
                             <div id="jobClick" style="display: none;">
                              <div class="jobSelect">
                                 <ul style="text-align: center;">
                                       <li value="서버/백엔드 개발자">서버/백엔드 개발자</li>
                                       <li value="프론트엔드 개발자">프론트엔드 개발자</li>
                                       <li value="웹 풀스택 개발자">웹 풀스택 개발자</li>
                                       <li value="안드로이드 개발자">안드로이드 개발자</li>
                                       <li value="IOS 개발자">IOS 개발자</li>
                                       <li value="크로스플랫폼 앱개발자">크로스플랫폼 앱개발자</li>
                                       <li value="게임 클라이언트 개발자">게임 클라이언트 개발자</li>
                                       <li value="게임 서버 개발자">게임 서버 개발자</li>
                                       <li value="DBA">DBA</li>
                                       <li value="빅데이터 엔지니어">빅데이터 엔지니어</li>
                                       <li value="인공지능/머신러닝">인공지능/머신러닝</li>
                                       <li value="devops/시스템 엔지니어">devops/시스템 엔지니어</li>
                                       <li value="정보보안 담당자">정보보안 담당자</li>
                                       <li value="QA 엔지니어">QA 엔지니어</li>
                                       <li value="개발 PM">개발 PM</li>
                                       <li value="HW/임베디드">HW/임베디드</li>
                                       <li value="SW/솔루션">SW/솔루션</li>
                                       <li value="웹퍼블리셔">웹퍼블리셔</li>
                                       <li value="VR/AR/3D">VR/AR/3D</li>
                                       <li value="블록체인">블록체인</li>
                                       <li value="기술지원">기술지원</li>
                                 </ul>
                              </div>
                              
                              <button type="button" id="jobCancle" style="float: right; margin-top:1%;" class="btn btn-outline-primary">닫기</button>
                            </div>
                          </td>
                      </tr> 

                        <!-- 저장 취소 버튼 -->
                        <tr>
                           <td colspan="2" align="right">
                              <br>
                              <button type="button" id="hopeOK"  class="btn btn-outline-primary">저장</button>
                           </td>
                        </tr>
                    </table>        
                </div>
                
                

                <script type="text/javascript">

                $(function () {
                	
                	//희망조건 중 연봉 면접 후 결정 선택시 이벤트
                	$("#ho_check").change(function(){
			            if ($(this).is(":checked")) {
			                // 체크박스가 체크된 경우
			                $("#ho_money").prop("disabled", true); // 입력 필드를 비활성화
			                $("#ho_money").val(''); // 입력 필드 비우기
			            } else {
			                // 체크박스가 체크 해제된 경우
			                $("#ho_money").prop("disabled", false); // 입력 필드를 활성화
			            }
			        });
                	
                	// 희망조건 insert 후 list 출력하기
                    $(document).on("click", "#hopeOK", function () {
                       
                    	//console.log($("#areaform div"));
                    	//console.log($("#areaform div").eq(0));
                    	
                    	//희망지역 담기
                    	var selectedAreas = $("#areaform div").length;
                    	var areasave = "";
                    	for( var i = 0 ; i < selectedAreas ; i++){
                    		if( i == (selectedAreas-1) ){
                    			areasave +=  $("#areaform div").eq(i).attr("value");
                    		}else{
                    			areasave +=  $("#areaform div").eq(i).attr("value") + ",";
                    		}
                    	}
                    	
                    	//console.log($("#jobform div").eq(0));
                    	//희망직무 담기
                    	var selectedJob = $("#jobform div").length;
                    	var jobsave = "";
                    	for( var j = 0 ; j < selectedJob ; j++){
                    		if( j == (selectedJob-1) ){
                    			jobsave +=  $("#jobform div").eq(j).attr("value");
                    		}else{
                    			jobsave +=  $("#jobform div").eq(j).attr("value") + ",";
                    		}
                    	}

                    	//희망조건 데이터 생성
                    	
                    	var hoCheck = $('input[name="ho_check"]').is(':checked');
                        var hoMoney = hoCheck ? '' : $('input[name="ho_money"]').val();
                    	
                        var hoData = {
                 			   
                        		pe_num: $('#pe_num').val(), 
                        		ho_num: $('#ho_num').val(), 
                                ho_category: $('select[name="ho_category"]').val(),
                                ho_money: hoMoney, // ho_check 값에 따라 설정된 ho_money
                                ho_check: hoCheck ? '면접 후 결정' : '', // 체크 여부에 따라 값 설정
                                ho_addr: areasave,  // 희망지역 저장
                                ho_keyword: jobsave // 희망직무 저장
                 	   }
                       
                       $.ajax ({
                     	
                     	      type : "post",
							  url: "hopeinsert",
	                    	  contentType: "application/json",
	                          data: JSON.stringify(hoData),
	                          dataType: "json",
	                          success : function(res) {
	                        	 $("#ho_num").val(res.hodto.ho_num); 
	                        	 $("#hopeOK").html("수정"); 
	                        	 $("#areaPlus").html("+수정하기");
	                        	 $("#jobPlus").html("+수정하기");
	                        	 $('#areaClick').css('display', 'none');
	                        	 $('#jobClick').css('display', 'none');
	                          }
                 	   
                       })	
                        
                    });
                   
                   
                   ////지역/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                   //추가하기 클릭시 입력창 추가
                    $("#areaPlus").click(function () {
                       
                       $('#areaClick').css('display', 'block');

                    });
                   
                    // 취소 클릭시 입력창 삭제
                    $(document).on("click", "#areaCancle", function () {
                       
                       $('#areaClick').css('display', 'none');
                        
                    });
                   
                   
                    //희망근무지역 지역 추가 및 삭제하기
                    $(document).on("click", ".areaSelect ul li", function () {
                       
                        var area = $(this).text();

                        // 선택된 항목이 이미 추가되었는지 확인
                        var areaChoice = $("#areaform div.areaStyle").filter(function () {
                           
                            return $(this).text().trim().startsWith(area);
                        });

                        // 이미 선택된 지역 수
                        var selectedAreas = $("#areaform div").length;

                        // 이미 선택된 항목이 3개 이상인 경우 알림창 표시 후 선택 중단
                        if (selectedAreas >= 3 && !areaChoice.length) {
                           
                            alert("지역은 최대 3개까지만 선택할 수 있습니다");
                            
                            return;
                            
                        }

                        // 이미 존재하는 항목이 있을 경우 제거
                        if (areaChoice.length) {
                           
                            areaChoice.remove();
                            
                            // 지역이 다시 클릭되었을 때 아웃라인 초기화
                            $(this).css({
                               
                                "outline": "",
                                "border-radius": "",
                                "padding": ""
                            });
                        } 
                        // 존재하지 않는 경우 추가
                        else {
                           
                           //li index 번호
                           var a = $(this).index();  
                            var total = '<div class="areaStyle" style="border: 1px solid #4876EF; border-radius: 12px; padding: 8px;" value="'+area+'">' + area + '&nbsp;&nbsp;&nbsp;&nbsp;<i class="bi bi-x-lg areaDelete" value='+a+'></i></div>';
                            
                            $("#areaform").append(total);
                            
                            // 지역이 클릭되었을 때 아웃라인컬러 변경
                            $(this).css({
                               
                                "outline": "1px solid #4876EF",
                                "border-radius": "12px",
                                "padding": "8px"
                            });
                        }
                    });

                    // 동적으로 추가된 삭제 버튼 클릭 이벤트 처리
                    $(document).on("click", ".areaDelete", function () {
                       //console.log($(this).attr('value'));
                       var index = $(this).attr('value');
                       $(".areaSelect ul li:eq("+index+")").css({
                           
                            "outline": "",
                            "border-radius": "",
                            "padding": ""
                        });
                       
                        $(this).parent().remove();
                       
                    });
                    
                    
                    ////직무///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                   //추가하기 클릭시 입력창 추가
                    $("#jobPlus").click(function () {
                       
                       $('#jobClick').css('display', 'block');

                    });
                   
                    // 취소 클릭시 입력창 삭제
                    $(document).on("click", "#jobCancle", function () {
                       
                       $('#jobClick').css('display', 'none');
                       
                    });
                   
                   
                    //희망근무지역 지역 추가 및 삭제하기
                    $(document).on("click", ".jobSelect ul li", function () {
                       
                        var job = $(this).text();

                        // 선택된 항목이 이미 추가되었는지 확인
                        var jobChoice = $("#jobform div.jobStyle").filter(function () {
                           
                            return $(this).text().trim().startsWith(job);
                        });


                        // 이미 존재하는 항목이 있을 경우 제거
                        if (jobChoice.length) {
                           
                           jobChoice.remove();
                            
                            // 지역이 다시 클릭되었을 때 아웃라인 초기화
                            $(this).css({
                               
                                "outline": "",
                                "border-radius": "",
                                "padding": ""
                            });
                        } 
                        // 존재하지 않는 경우 추가
                        else {
                           
                           //li index 번호
                           var j = $(this).index(); 
                            var total = '<div class="jobStyle" style="border: 1px solid #4876EF; border-radius: 12px; padding: 8px;" value="'+job+'">' + job + '&nbsp;&nbsp;&nbsp;&nbsp;<i class="bi bi-x-lg jobDelete"  value='+j+'></i></div>';
                            
                            $("#jobform").append(total);
                            
                            // 지역이 클릭되었을 때 아웃라인컬러 변경
                            $(this).css({
                               
                                "outline": "1px solid #4876EF",
                                "border-radius": "12px",
                                "padding": "8px"
                            });
                        }
                    });

                    // 동적으로 추가된 삭제 버튼 클릭 이벤트 처리
                    $(document).on("click", ".jobDelete", function () {
                       
                       var index = $(this).attr('value');
                       $(".jobSelect ul li:eq("+index+")").css({
                           
                            "outline": "",
                            "border-radius": "",
                            "padding": ""
                        });
                       
                        $(this).parent().remove();
                    });
                    
                });
                </script>
                
<!-- 동의내역 --------------------------------------------------------------------------------------------------------------------->
                <div class="consent">
                        <hr style="width: 100%;">
                        <table class="" style="width: 100%;">
                          <tr>
                      <td class="form-group">
                          <input type="checkbox" style="font-size: 1.2em;" id="consentAllCheck">모두 동의합니다.&nbsp;&nbsp;&nbsp;&nbsp;
                          <span style="font-size: 0.8em;">이력서 작성을 위한 개인정보 수집 및 이용 동의(필수/선택)</span>
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                        <hr style="width: 100%;">
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                          <span style="font-size: 0.8em;"><input type="checkbox" id="consentCheck1">  필수 항목에 대한 개인정보 수집 및 이용 동의</span>&nbsp;&nbsp;&nbsp;&nbsp;
                          <span style="font-size: 0.8em;"><a id="requireClick" style="text-decoration: none; color: gray; cursor: pointer;"
                          data-bs-toggle="modal" data-bs-target="#requireModal">상세보기 ></a></span>
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                          <span style="font-size: 0.8em;"><input type="checkbox" id="consentCheck2">  선택 항목에 대한 개인정보 수집 및 이용 동의</span>&nbsp;&nbsp;&nbsp;&nbsp;
                          <span style="font-size: 0.8em; "><a style="text-decoration: none; color: gray; cursor: pointer;" id="choiceClick"
                          data-bs-toggle="modal" data-bs-target="#choiceModal">상세보기 ></a></span>
                      </td>
                    </tr>

                        </table>
                  <br>
                  <br>
                  <br>
                  <br>  
                </div>
                
                <script type="text/javascript">
               
                	//체크박스 전체선택 체크 및 해제
                	$(function() {
                		
                		$("#consentAllCheck").click(function() {
                			
                			var allcheck = $(this).is(":checked");

                				$("#consentCheck1").prop('checked', allcheck);
                				$("#consentCheck2").prop('checked', allcheck);
                		
                		});
                	})
                	

               </script>
               

                <!-- 필수항목 자세히 보기 누르면 나오는 The Modal -->
               <div class="modal" id="requireModal">
                 <div class="modal-dialog modal-dialog-centered modal-fullsize">
                   <div class="modal-content">
               
                     <!-- Modal Header -->
                     <div class="modal-header">
                       <h5 class="modal-title">이력서 작성을 위한 개인정보 수집 및 이용 동의</h5>
                       <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                     </div>
               
                     <!-- Modal body -->
                     <div class="modal-body">
                      <hr style="margin-top: -3%;">
                       <span><b>수집항목(필수)</b></span><br>
                       <span style="font-size: 0.8em;">기본정보(이름, 생년월일, 이메일, 휴대폰, 주소), 학력(학교명, 졸업 여부, 전공), 
                       경력(경력 구분, 회사명, 재직 여부, 재직기간, 총 경력)</span><br><br>
                     
                       <span><b>수집 및 이용 목적</b></span><br>
                       <span style="font-size: 0.8em;">이력서 등록을 통한 입사 지원 등 취업 활동 서비스 제공, 
                       각종 맞춤형 취업 서비스 제공</span><br><br>
                       
                       <span><b>이용 및 보유기간</b></span><br> 
                       <span style="font-size: 0.8em;">이력서 삭제 또는 회원 탈퇴 시 파기
                      위 동의를 거부할 권리가 있으며 동의 거부 시 이력서 등록이 불가합니다.</span>
                     </div>
               
                   </div>
                 </div>
               </div>
               
            <!-- 선택항목 자세히 보기 누르면 나오는 The Modal -->
               <div class="modal" id="choiceModal">
                 <div class="modal-dialog modal-dialog-centered modal-fullsize">
                   <div class="modal-content">
               
                     <!-- Modal Header -->
                     <div class="modal-header">
                       <h5 class="modal-title">이력서 작성을 위한 개인정보 수집 및 이용 동의</h5>
                       <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                     </div>
               
                     <!-- Modal body -->
                     <div class="modal-body">
                      <hr style="margin-top: -3%;">
                       <span><b>수집항목(필수)</b></span><br>
                       <span style="font-size: 0.8em;">기본정보(이름, 생년월일, 이메일, 휴대폰, 주소), 학력(학교명, 졸업 여부, 전공), 
                       경력(경력 구분, 회사명, 재직 여부, 재직기간, 총 경력)</span><br><br>
                     
                       <span><b>수집 및 이용 목적</b></span><br>
                       <span style="font-size: 0.8em;">이력서 등록을 통한 입사 지원 등 취업 활동 서비스 제공, 
                       각종 맞춤형 취업 서비스 제공</span><br><br>
                       
                       <span><b>이용 및 보유기간</b></span><br> 
                       <span style="font-size: 0.8em;">이력서 삭제 또는 회원 탈퇴 시 파기
                      위 동의를 거부할 권리가 있으며 동의 거부 시 이력서 등록이 불가합니다.</span>
                       </div>
                   </div>
                 </div>
               </div>   
                
                
<!-- 최종 저장 및 미리보기 --------------------------------------------------------------------------------------------------------->
                  
                  <div class="fixed_final">
                      <input type="text" class="form-control"   id="pe_title_temp" style="height: 40px; 
                      width: 43%;" placeholder="이력서 제목을 입력해주세요" required="required">&nbsp;&nbsp;&nbsp;&nbsp;
                      <button type="button" id="allDataSelect" class="btn btn-outline-primary" 
                      data-bs-target="#ListSelect" data-bs-toggle="modal">미리보기</button>&nbsp;
                      <button type="button" id="allDataUpdate" class="btn btn-primary">작성완료</button>
                  </div>
                  
                  
                 
                <script type="text/javascript">
                $(function () {
                
                  //이력서 최종 저장하기 (update)	
                  $(document).on("click", "#allDataUpdate", function() {
                	  
                	  //추가버튼 추가폼이 저장이 안된채로 있을경우 
                	  var schoolclick = $("#schoolclick").length;
                	  var schoolclick = $("#careeclick").length;
                	  var schoolclick = $("#activityclick").length;
                	  var schoolclick = $("#qualificationclick").length;
                	  var schoolclick = $("#portfolioclick").length;
                	  var schoolclick = $("#selfclick").length;
                      
                      if (schoolclick != 0) {
                    	  alert("학력 작성을 저장해주세요");
                    	  return;
                      }
                      if (careeclick != 0) {
                    	  alert("경력 작성을 저장해주세요");
                    	  return;
                      }
                      if (activityclick != 0) {
                    	  alert("경험, 활동, 교육 작성을 저장해주세요");
                    	  return;
                      }
                      if (qualificationclick != 0) {
                    	  alert("자격, 어학, 수상 작성을 저장해주세요");
                    	  return; 
                      }
                      if (portfolioclick != 0) {
                    	  alert("포트폴리오 작성을 저장해주세요");
                    	  return; 
                      }
                      if (selfclick == 0) {
                    	  alert("자기소개서 작성을 저장해주세요");
                    	  return;
                      }
                      
                	  
                      //이력서 제목 저장
                	  $("#pe_title").val($("#pe_title_temp").val());
					  $("#pe_form").submit();
                  });
                  
                  
                  //이력서 미리보기 띄우기
                  $(document).on("click", "#allDataSelect", function() {
                	  $("#modal_pe_category").html($("select[name=pe_category]").val()); // 인적사항 - 신입경력
                	  $("#modal_showImg").attr("src",$("#photo_img > img").attr("src")); // 인적사항 - 사진
                	  $("#modal_schoolList").html($("#schoolList").html()); // 학력정보
                	  $("#modal_schoolList").find('i').remove(); // 학력정보 수정/삭제 제거
                	  $("#modal_careerList").html($("#careerList").html()); // 경력 정보
                	  $("#modal_careerList").find('i').remove(); // 경력정보 수정/삭제 제거
                	  $("#modal_activityList").html($("#activityList").html()); // 경험,활동,교육 정보
                	  $("#modal_activityList").find('i').remove(); // 경험,활동,교육 수정/삭제 제거
                	  $("#modal_qualificationList").html($("#qualificationList").html()); // 자격,어학,수상 정보
                	  $("#modal_qualificationList").find('i').remove(); // 자격,어학,수상 수정/삭제 제거
                	  $("#modal_portfolioList").html($("#portfolioList").html()); // 포트폴리오 정보
                	  $("#modal_portfolioList").find('i').remove(); // 포트폴리오 수정/삭제 제거
                	  $("#modal_selfList").html($("#selfList").html()); // 자기소개서 정보
                	  $("#modal_selfList").find('i').remove(); // 자기소개서 수정/삭제 제거
                	  
                	  $("#modal_ho_category").html($("select[name=ho_category]").val()); // 자기소개서 수정/삭제 제거
                	  
                	  
                	  
                	  var hoCheck = $('input[name="ho_check"]').is(':checked');
                	  if(hoCheck){
	                	  $("#modal_ho_money").html("면접 후 결정");
                	  }else{
	                	  $("#modal_ho_money").html($("#ho_money").val());
                	  } 
                	  
                	  $("#modal_areaform").html($("#areaform").html());
                	  $("#modal_areaform").find('i').remove(); // 자기소개서 수정/삭제 제거
                	  $("#modal_jobform").html($("#jobform").html());
                	  $("#modal_jobform").find('i').remove(); // 자기소개서 수정/삭제 제거

                	  
                  });
                });
                  
                  </script>
               
            </div>
        </div>
    </div>
    
     <!--미리보기  The Modal -->
	<div class="modal" id="ListSelect">
		<div class="modal-dialog modal-dialog-scrollable modal-fullsize1">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
				    <h4 class="modal-title"><b>미리보기</b></h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				<!-- 이력서 출력문 -->
				<div class="modal-body">
				    <!-- 인적사항 출력문 -->
					<div class="">
						<div class="form-caption">
							<h5><b>인적사항</b></h5>
						</div>
						<hr style="width: 100%;">
						<table class="" style="width: 100%;">
							<tr>
								<td class="form-group"><span>${rdto.r_name }</span>&nbsp;&nbsp;
								    <span id="modal_pe_category"></span></td>
								<td rowspan="4"> 
									<div style="position: relative; display: inline-block;" id = "modal_photo_img">
										<img id="modal_showImg">
									</div></td>
							</tr>

							<tr>
								<td class="form-group"><span>성별 (${rdto.r_gender })</span>&nbsp;&nbsp;&nbsp;
									<span>${rdto.r_birthday}</span></td>
							</tr>

							<tr>
								<td class="form-group"><span>
								<i class="bi bi-envelope"></i>${rdto.r_email}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span><i class="bi bi-telephone"></i>${rdto.r_hp}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span><i class="bi bi-phone"></i>${rdto.r_hp}</span></td>
							</tr>

							<tr>
								<td class="form-group"><span><i class="bi bi-house"></i>${rdto.r_addr}${rdto.r_addr_detail}</span>
								</td>
							</tr>
						</table>
					</div>

					<!-- 학력 -->
					<div class="school">
						<div class="form-caption">
							<h5>
								<b>학력</b>
							</h5>
						</div>
						<hr style="width: 100%;">
						<div id="modal_schoolList"></div>
					</div>
					
					<!-- 경력 -->
					<div class="career">
						<div class="form-caption">
							<h5><b>경력</b></h5>
						</div>
						<hr style="width: 100%;">
						<div id="modal_careerList"></div>
					</div>
					
					<!-- 경험 활동 교육 -->
					<div class="activity">
						<div class="form-caption">
							<h5>
								<b>경험 / 활동 / 교육</b>
							</h5>
						</div>
						<hr style="width: 100%;">
						<div id="modal_activityList"></div>
					</div>
					
					<!-- 자격 / 어학 / 수상 -->
					<div class="qualification">
						<div class="form-caption">
							<h5>
								<b>자격 / 어학 / 수상</b>
							</h5>
						</div>
						<hr style="width: 100%;">
						<div id="modal_qualificationList"></div>
					</div>
					
					<!-- 포트폴리오 -->
					<div class="portfolio">
						<div class="form-caption">
							<h5>
								<b>포트폴리오 / 기타문서</b>
							</h5>
						</div>
						<hr style="width: 100%;">
						<div id="modal_portfolioList"></div>
					</div>
					
					<!-- 자기소개서 -->
					<div class="self">
						<div class="form-caption">
							<h5>
								<b>자기소개서</b>
							</h5>
						</div>
						<hr style="width: 100%;">
						<div id="modal_selfList"></div>
					</div>
					
					<!-- 희망근무조건 -->
					<div class="hope">
						<div class="form-caption">
	                        <h5><b>희망근무조건</b></h5>
	                    </div>
	                    <hr style="width: 100%;">
	                    <div id="hopeList"></div>
	                    <div id="hopeform"></div>
	                    
	                    <table id="hopeclick" style="width: 100%;">
	                     <tr>
	                       <td class="form-group">
	                         <span id="modal_ho_category"> </span>
	                         <span id="modal_ho_money"> </span>
	                       </td>
	                     </tr>
	                     
	                     <!-- 희망근무지------------------------------------------------------------------------------------------------------------------ -->
	                      <tr>
	                        <td class="form-group" style="margin-top: 2%;">
	                            &nbsp;<span style="font-size: 0.8em; display: inline-block;">희망 근무지</span>&nbsp;&nbsp;&nbsp;
	                            <span style="font-size: 0.8em; color: #4876EF; display: inline-block;">
	                        </td>
	                      </tr>
	                      
	                      <tr>
	                           <td class="form-group" style="margin-top: 1%;">
	                             <div id="modal_areaform" ></div>
	                           </td>
	                      </tr>   
	
	                        <!-- 직무 --------------------------------------------------------------------------------------------------------->
	                        <tr>
	                           <td class="form-group" style="margin-top: 2%;">
	                            &nbsp;<span style="font-size: 0.8em; display: inline-block;">직무 키워드</span>&nbsp;&nbsp;&nbsp;
	                            <span style="font-size: 0.8em; color: #4876EF; display: inline-block;">
	                           </td>
	                         </tr>
	                         
	                       <tr>
	                           <td class="form-group" style="margin-top: 1%;">
	                             <div id="modal_jobform"></div>
	                           </td>
	                        </tr>   
	                      
	                       </table>
					</div>
					
					

				</div>
			</div>
		</div>
	</div>


</body>
</html>
