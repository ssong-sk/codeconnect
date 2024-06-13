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
      max-width: 1100px;
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
  <form action="totalinsert" id="" method="post" enctype="multipart/form-data">
    <input type="hidden" name="pe_num" id="pe_num" value="${irdto.pe_num }">
    <div class="all">
        <div id="wrap">
            <div class="center">

                
<!-- 인정사항 폼 -------------------------------------------------------------------------------------------------------------------------->
                <div class="personal">
                        <div class="form-caption">
                            <h4><b>인적사항</b></h4>&nbsp;&nbsp;&nbsp;
                            <span style="font-size: 0.8em;">자동입력(사진 및 경력 제외)</span>
                        </div>
                        <hr style="width: 100%;">
                        <table class="" style="width: 100%;">
                          <tr>
                      <td class="form-group">
                          <input type="text" class="form-control" style="width: 150px;" placeholder="이름">
                          <select class="form-select" style="width: 120px;">
                              <option>신입/경력</option>
                              <option>신입</option>
                              <option>경력</option>
                          </select>
                      </td>
                      
                      <td rowspan="4">
                        <input type="file" name="myphoto" id="myphoto" style="display: none;">
                              <div style="position: relative; display: inline-block;">
                                <img id="showimg">
                               <span id="plusphoto" style="position: absolute; top: 80%; left: 50%; 
                               transform: translate(-50%, -50%); cursor: pointer; ">사진추가</span>
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
                        <input type="text" class="form-control" style="width: 150px;" placeholder="남/여">
                        <input type="date" class="form-control" style="width: 250px;">
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                        <input type="text" class="form-control" style="width: 200px;" placeholder="메일">
                        <input type="text" class="form-control" style="width: 180px;" placeholder="전화번호">
                        <input type="text" class="form-control" style="width: 180px;" placeholder="핸드폰">
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                        <input type="text" class="form-control" style="width: 350px;" placeholder="주소">
                      </td>
                    </tr>
                    
                        </table>
                   
                </div>
  </form>              
                
                
                
                
                
<!-- 학력 폼 ---------------------------------------------------------------------------------------------------------------------->
                <div class="school">
                    <div class="form-caption">
                        <h4><b>학력</b></h4>&nbsp;&nbsp;&nbsp;
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
                            total += '<table id="schoolclick" style="width: 100%;">';
                            total += '<tr>';
                            total += '<td class="form-group">';
                            total += '<select class="form-select" style="width: 250px;" id="education-select" name="sc_category">';
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
            
                            
                            // 해당폼 구분 선택시 다르게
                            var educationSelect = document.getElementById('education-select');
            				
                            var highschoolOptions = document.getElementById('highschool-options');
            
                            var universityOptions = document.getElementById('university-options');
            
                            var highschoolOptionsDetails = document.getElementById('highschool-options-details');
            
                            var universityOptionsDetails = document.getElementById('university-options-details');
            
                            educationSelect.addEventListener('change', function () {
                                if (educationSelect.value === '고등학교 졸업') {
            
                                    highschoolOptions.style.display = 'block';
                                    universityOptions.style.display = 'none';
                                    highschoolOptionsDetails.style.display = 'table-row'; // 추가
                                    universityOptionsDetails.style.display = 'none';
                                }
            
                                else if (educationSelect.value === '대학·대학원 이상 졸업') {
            
                                    highschoolOptions.style.display = 'none';
                                    universityOptions.style.display = 'block';
                                    highschoolOptionsDetails.style.display = 'none';
                                    universityOptionsDetails.style.display = 'table-row'; // 추가
                                }
            
                                else {
            
                                    highschoolOptions.style.display = 'none';
                                    universityOptions.style.display = 'none';
                                    highschoolOptionsDetails.style.display = 'none';
                                    universityOptionsDetails.style.display = 'none';
                                }
                            });
                        }
                    });
            
                    // 취소 클릭시 입력창 삭제
                    $(document).on("click", "#schoolCancle", function () {
                        $("#schoolform").html("");
                    });
                    
                    
                    
                    
                    //저장시 shcool insert 하기
                    $(document).on("click", "#schoolOk", function () {
                    	
                    	//var shcooldata = $("#sctotal").serialize();
                    	
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
					    };
                    	
                    	
                    	//sc insert 작성 및 list 출력
                    	$.ajax({
                    		
                    	    type: "post",
                    	    url: "schoolinsert",
                    	    contentType: "application/json",
                    	    data: JSON.stringify(formData),
                    	    dataType: "json", 
                    	    success: function (res) {
                    	    	
                    	    	//console.log(res.sclist[0]);
                    	    	//console.log(res.sclist[0].sc_category);
                    	    	
                    	    	
                    	    	
                    	    	//삼항연산자 사용으로 고등학교 졸업 체크 여부에 따라 분류
                    	    	var sc_category = res.sclist[0].sc_category; // 카테고리
                    	    	var sc_name = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_name : res.sclist[0].sc_uni_name; // 학교명
                    	    	var sc_transfer = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_transfer : res.sclist[0].sc_uni_transfer; //편입여부
                    	    	sc_transfer = sc_transfer == "" ? "" : sc_transfer + '|';
                    	    	var sc_check = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_check : res.sclist[0].sc_uni_check; //졸업여부
                    	    	var sc_iphack = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_iphack : res.sclist[0].sc_uni_iphack; // 입학년도
                    	    	var sc_jolup = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_jolup : res.sclist[0].sc_uni_jolup; // 졸업년도
                    	    	var sc_major = sc_category == "고등학교 졸업" ? res.sclist[0].sc_hi_major : res.sclist[0].sc_uni_major; // 전공
                    	    	var sc_uni_grade = res.sclist[0].sc_uni_grade; // 학점(대학교)
                    	    	var sc_uni_sum = res.sclist[0].sc_uni_sum; // 총학점(대학교)
                    	    	var sc_uni_category = res.sclist[0].sc_uni_category; // 대학구분(대학교)
                    	    	
                    	    	 
                    	    	//전체 데이터 담기
                    	    	var sc = "";
                    	    	
                    	    	sc += '<table>                                                              ';
                                sc += '<tr>                                                                 ';
                                sc += '<td class="form-group">                                            ';
                                sc += '<h5><b>'+sc_name+'</b></h5>&nbsp;                                     ';
                                
                                //고등학교 졸업 선택 안할 경우
                                if( sc_category != "고등학교 졸업"){
                                	
	                                sc += '<h5><b>'+'('+sc_uni_category+')'+'</b></h5>&nbsp;&nbsp;&nbsp;&nbsp;                    ';
                               
                                }
                                
                                sc += '<span>'+sc_iphack+' ~ '+sc_jolup+' (' + sc_transfer + sc_check+')</span><br>                    ';
                                sc += '<span style="float: right; cursor: pointer;"><i class="bi bi-pencil scupdate" sc_num="${scdto.sc_num}"></i></span>  ';
                                sc += '<span style="float: right; cursor: pointer;"><i class="bi bi-trash3 scdelete" sc_num="${scdto.sc_num}"></i></span>  ';
                                sc += '</td>                                                              ';
                                sc += '<td class="form-group">                                            ';
                                sc += '<span>'+sc_major+'</span>                                            ';
                                sc += '</td>                                                              ';
                                
                              //고등학교 졸업 선택 안할 경우
                                if( sc_category != "고등학교 졸업"){
                                	
	                                sc += '<td class="form-group">                                         ';
	                                sc += '<span>학점</span>&nbsp;&nbsp;&nbsp;&nbsp;                       ';
	                                sc += '<span>'+sc_uni_grade+' / '+sc_uni_sum+'</span>                                          ';
	                                sc += '</td>                                                             ';
	                           
                                }
                              
                                sc += '</tr>                                                                ';
                              	sc += '</table>                                                             ';
                              	sc += '<hr>                                                                 ';
                    	    	
                    	    	
                    	    	
                    	    	//list 나타내기
                    	    	$("#schoolList").append(sc);
                    	    	
                    	    	//form 리셋
                    	    	$("#schoolform").html("");
                    	    }
                    	});
                    	
					});
                    
                    
                    //학력 삭제하기
                    $(document).on("click", ".scdelete", function() {
                    	
                    	var sc_num = $(this).attr("sc_num");
                    	alert(sc_num);
                    	
                    	var sc_confirm = confirm("해당 내역을 삭제하시겠습니까?");
                    	
                    	if(sc_confirm) {
                    		
                    		$.ajax({
                    			
                    			type : "get",
                    			dataType : "html",
                    			url : "schooldelete",
                    			data : {"sc_num":sc_num},
                    			success : function() {
                    				
                    				location.reload();
                    			}
                    		})
                    	}
                    })
                });
                
          
            </script>

                
                
                
                
                
                
                
<!-- 경력 ------------------------------------------------------------------------------------------------------------------------>
            <div class="career">
                <form action="careerinsert" method="post">
                    <div class="form-caption">
                        <h4><b>경력</b></h4>&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 0.8em;">*필수정보입력</span>
                        <span style="font-size: 0.8em; color: #4876EF; margin-left: 82%;">
                            <a style="cursor: pointer;" id="careerPlus">+ 추가하기</a></span>
                    </div>
                    <hr style="width: 100%;">
                    <div id="careerform"></div>
                </form>
            </div>
            
            <script type="text/javascript">
            
                $(function () {
                   
                    //추가하기 클릭시 입력창 추가
                    $("#careerPlus").click(function () {
                       
                        var careeclick = $("#careeclick").length;
            
                        // 창이 하나도 안열려 있는 경우 추가폼 생성됨
                        if (careeclick == 0) {
                           
                            var total = "";
                            
                            total +=  '<table class="careerform" id="careeclick" style="width: 100%;">';
                            total +=  '<tr>';
                            total +=  '<td class="form-group">';
                            total +=  '<input type="text" class="form-control" style="width: 160px;" placeholder="회사명*">';
                            total +=  '<input type="date" class="form-control" style="width: 145px;">';
                            total +=  '<input type="date" class="form-control" style="width: 145px;">';
                            total +=  '<select class="form-select" style="width: 200px;">';
                            total +=  '<option>직무*</option>';
                            total +=  '<option>신입</option>';
                            total +=  '<option>경력</option>';
                            total +=  '</select>';
                            total +=  '<input type="text" class="form-control" style="width: 150px;" placeholder="근무부서">';
                            total +=  '<input type="text" class="form-control" style="width: 150px;" placeholder="직급/직책">';
                            total +=  '</td>';
                            total +=  '</tr>';
                            total +=  '<tr>';
                            total +=  '<td class="form-group">';
                            total +=  '<textarea class="form-control" style="height: 200px;" placeholder="담당업무를 입력해주세요"></textarea>';
                            total +=  '</td>';
                            total +=  '</tr>';
                            total +=  '<!-- 저장 취소 버튼 -->';
                            total +=  '<tr>';
                            total +=  '<td colspan="2" align="right">';
                            total +=  '<br>';
                            total +=  '<button type="submit" class="btn btn-outline-primary">저장</button>';
                            total +=  '&nbsp';
                            total +=  '<button type="button" id="careerCancle" class="btn btn-outline-primary">취소</button>';
                            total +=  '</td>';
                            total +=  '</tr>';
                            total +=  '</table>';
                            total +=  '<br>';
                            total +=  '<br>';
            
                            $("#careerform").append(total);
                        }
                    });
            
                    // 취소 클릭시 입력창 삭제
                    $(document).on("click", "#careerCancle", function () {
                       
                        $("#careerform").html("");
                    });
                });
                
            </script>
                
                
                
                
<!-- 경험, 활동, 교육 ----------------------------------------------------------------------------------------------------------->
                <div class="activity">
                    <form action="activityinsert" method="post">
                        <div class="form-caption">
                            <h4><b>경험 / 활동 / 교육</b></h4>&nbsp;&nbsp;&nbsp;
                            <span style="font-size: 0.8em;">*필수정보입력</span>
                            <span style="font-size: 0.8em; color: #4876EF; margin-left: 73.4%;">
                        <a style="cursor: pointer;" id="activityPlus">+ 추가하기</a></span>
                        </div>
                        <hr style="width: 100%;">
                        <div id="activityform"></div>
                    </form>
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
                            
                   total += '<table id="activityclick" style="width: 100%;">';
                   total += '<tr>';
                   total += '<td class="form-group">';
                   total += '<select class="form-select" style="width: 200px;">';
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
                   total += '<input type="text" class="form-control" style="width: 220px;" placeholder="기관/장소명*">';
                   total += '<input type="date" class="form-control" style="width: 120px;">';
                   total += '<input type="date" class="form-control" style="width: 120px;">';
                   total += '</td>';
                   total += '</tr>';
                   total += '<b>활동 설명</b><br>';
                   total += '<tr>';
                   total += '<td class="form-group">';
                   total += '<textarea class="form-control" style="height: 200px;" placeholder="경험/활동 상세내용 입력"></textarea>';
                   total += '</td>';
                   total += '</tr>';
                   total += '<!-- 저장 취소 버튼 -->';
                   total += '<tr>';
                   total += '<td colspan="2" align="right">';
                   total += '<br>';
                   total += '<button type="submit" class="btn btn-outline-primary">저장</button>';
                   total +=  '&nbsp';
                   total += '<button type="button" id="activityCancle" class="btn btn-outline-primary">취소</button>';
                   total += '</td>';
                   total += '</tr>';
                   total += '</table>';
            
                            $("#activityform").append(total);
                        }
                    });
            
                    // 취소 클릭시 입력창 삭제
                    $(document).on("click", "#activityCancle", function () {
                       
                        $("#activityform").html("");
                    });
                });
                
            </script>
            
            
            
                
<!-- 자격/어학/수상----------------------------------------------------------------------------------------------------------- -->
                <div class="qualification">
                <form action="qualificationinsert" method="post">
                    <div class="form-caption">
                        <h4><b>자격 / 어학 / 수상</b></h4>&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 0.8em;">*필수정보입력</span>
                        <span style="font-size: 0.8em; color: #4876EF; margin-left: 73.4%;">
                            <a style="cursor: pointer;" id="qualificationPlus">+ 추가하기</a></span>
                    </div>
                    <hr style="width: 100%;">
                    <div id="qualificationform"></div>
                </form>
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
            
                            total += '<table id="qualificationclick" style="width: 100%;">';
                            total += '<tr>';
                            total += '<td class="form-group">';
                            total += '<select class="form-select" style="width: 200px;" id="qualification-select">';
                            total += '<option value="none">구분*</option>';
                            total += '<option value="qualify">자격증·면허증</option>';
                            total += '<option value="language">어학시험</option>';
                            total += '<option value="award">수상내역·공모전</option>';
                            total += '</select>';
                            total += '</td>';
                            total += '</tr>';
                            total += '<!-- 자격증 폼 -->';
                            total += '<tr id="qualify-options" style="display: none;">';
                            total += '<td class="form-group">';
                            total += '<input type="text" class="form-control" style="width: 200px;" placeholder="자격증명*">';
                            total += '<input type="text" class="form-control" style="width: 200px;" placeholder="발행처/기관*">';
                            total += '<select class="form-select" style="width: 120px;">';
                            total += '<option>합격구분*</option>';
                            total += '<option>1차합격</option>';
                            total += '<option>2차합격</option>';
                            total += '<option>필기합격</option>';
                            total += '<option>실기합격</option>';
                            total += '<option>최종합격</option>';
                            total += '</select>';
                            total += '<input type="date" class="form-control" style="width: 120px;">';
                            total += '</td>';
                            total += '</tr>';
                            total += '<!-- 어학 폼 -->';
                            total += '<tr id="language-options" style="display: none;">';
                            total += '<td class="form-group">';
                            total += '<input type="text" class="form-control" style="width: 200px;" placeholder="어학시험명*">';
                            total += '<input type="date" class="form-control" style="width: 120px;">';
                            total += '<input type="text" class="form-control" style="width: 200px;" placeholder="점수*">';
                            total += '</td>';
                            total += '</tr>';
                            total += '<!-- 어워드 폼 -->';
                            total += '<tr id="award-options" style="display: none;">';
                            total += '<td class="form-group">';
                            total += '<input type="text" class="form-control" style="width: 200px;" placeholder="수상·공모전명*">';
                            total += '<input type="date" class="form-control" style="width: 120px;">';
                            total += '<input type="text" class="form-control" style="width: 200px;" placeholder="수여·주최기관*">';
                            total += '</td>';
                            total += '</tr>';
                            total += '<!-- 저장 취소 버튼 -->';
                            total += '<tr>';
                            total += '<td colspan="2" align="right">';
                            total += '<br>';
                            total += '<button type="submit" class="btn btn-outline-primary">저장</button>';
                            total += '&nbsp';
                            total += '<button type="button" id="qualificationCancle" class="btn btn-outline-primary">취소</button>';
                            total += '</td>';
                            total += '</tr>';
                            total += '</table>';
            
                            $("#qualificationform").append(total);
            
                            // 자격 / 어학 / 수상 구분 선택하면 카테고리에 맞게 폼 나타내기
                            var qualificationSelect = document.getElementById('qualification-select');
                            var qualifyOptions = document.getElementById('qualify-options');
                            var languageOptions = document.getElementById('language-options');
                            var awardOptions = document.getElementById('award-options');
            
                            qualificationSelect.addEventListener('change', function() {
                                if (qualificationSelect.value === 'qualify') {
                                    qualifyOptions.style.display = 'block';
                                    languageOptions.style.display = 'none';
                                    awardOptions.style.display = 'none';
                                } 
                                else if (qualificationSelect.value === 'language') {
                                    qualifyOptions.style.display = 'none';
                                    languageOptions.style.display = 'block';
                                    awardOptions.style.display = 'none';
                                } 
                                else if (qualificationSelect.value === 'award') {
                                    qualifyOptions.style.display = 'none';
                                    languageOptions.style.display = 'none';
                                    awardOptions.style.display = 'block';
                                } 
                                else {
                                    qualifyOptions.style.display = 'none';
                                    languageOptions.style.display = 'none';
                                    awardOptions.style.display = 'none';
                                }
                            });
                        }
                    });
            
                    // 취소 클릭시 입력창 삭제
                    $(document).on("click", "#qualificationCancle", function () {
                        $("#qualificationform").html("");
                    });
                });
            </script>
                

            
                
                
                
<!-------------- 포트폴리오/기타문서---------------------------------------------------------------------------------------------- -->
                <div class="portfolio">
                <form action="portfolioinsert" method="post" enctype="multipart/form-data">
                    <div class="form-caption">
                        <h4><b>포트폴리오 / 기타문서</b></h4>&nbsp;&nbsp;&nbsp;
                        <span style="font-size: 0.8em; color: #4876EF; margin-left: 78%;">
                    <a style="cursor: pointer;" id="portfolioPlus">+ 추가하기</a></span>
                    </div>
                    <hr style="width: 100%;">
                    <div id="portfolioform"></div>
                </form>
              </div>
                
                <script type="text/javascript">
                
                  $(function () {
                  
                       //버튼 클릭 시 포트폴리오 또는 기타 자료 첨부
                       $("#portfolioform").on("click", "#portfoliofile", function () {
                          
                        $("#portfolioname").trigger("click");
                    });
                                   
                       
                       
                       //추가하기 클릭시 입력창 추가
                       $("#portfolioPlus").click(function () {
                          
                           var portfolioclick = $("#portfolioclick").length;
               
                           // 창이 하나도 안열려 있는 경우 추가폼 생성됨
                           if (portfolioclick == 0) {
                              
                               var total = "";
                                                                                                                                              
                       total += '<table id="portfolioclick" style="width: 100%;">';
                       total += '<tr>';
                       total += '<td class="form-group">';
                       total += '<p style="font-size: 0.8em;">내 포트폴리오 및 추가로 제출할 문서를 첨부해보세요</p>';
                       total += '</td>';
                       total += '</tr>';
                       total += '<tr>';
                       total += '<td class="form-group">';
                       total += '<input type="file" name="portfolioname" id="portfolioname" style="display: none;">';
                       total += '<button type="button" id="portfoliofile"';
                       total += 'class="btn btn-primary" style="width: 980px;">+ 포트폴리오 및 기타문서 추가</button>';
                       total += '</td>';
                       total += '</tr>';
                       total += '<!-- 저장 취소 버튼 -->';
                       total += '<tr>';
                       total += '<td colspan="2" align="right">';
                       total += '<br>';
                       total += '<button type="submit" class="btn btn-outline-primary">저장</button>';
                       total +=  '&nbsp';
                       total += '<button type="button" id="portfolioCancle" class="btn btn-outline-primary">취소</button>';
                       total += '</td>';
                       total += '</tr>';
                       total += '</table>';
                               
                               
               
                               $("#portfolioform").append(total);
                           }
                       });
               
                       // 취소 클릭시 입력창 삭제
                       $(document).on("click", "#portfolioCancle", function () {
                          
                           $("#portfolioform").html("");
                       });
                       
                    })   
                    

                </script>
            
            
            
            
            
<!-- 자기소개서 ---------------------------------------------------------------------------------------------------------------->
                <div class="self">
                    <form action="selfinsert" method="post">
                        <div class="form-caption">
                            <h4><b>자기소개서</b></h4>&nbsp;&nbsp;&nbsp;
                            <span style="font-size: 0.8em; color: #4876EF; margin-left: 85.2%;">
                         <a style="cursor: pointer;" id="selfPlus">+ 추가하기</a></span>
                        </div>
                        <hr style="width: 100%;">
                        <div id="selfform"></div>
                    </form>
                </div>
                
                
                <script type="text/javascript">
                
                  $(function () {
                  
                       
                       //추가하기 클릭시 입력창 추가
                       $("#selfPlus").click(function () {
                          
                           var selfclick = $("#selfclick").length;
               
                           // 창이 하나도 안열려 있는 경우 추가폼 생성됨
                           if (selfclick == 0) {
                              
                               var total = "";
                                                                                                                                 
                           total += '<table id="selfclick" style="width: 100%;">';
                           total += '<tr>';
                           total += '<td class="form-group">';
                           total += '<input type="text" class="form-control" style="width: 700px;" placeholder="자기소개서 제목">';
                           total += '</td>';
                           total += '</tr>';
                           total += '<tr>';
                           total += '<td class="form-group">';
                           total += '<textarea class="form-control" style="height: 200px;"';
                           total += 'placeholder="코드커넥트인만의 특벽한 자소서 툴과 함께 차별화된 자기소개서를 완성해보세요"></textarea>';
                           total += '</td>';
                           total += '</tr>';                                      
                           total += '<!-- 저장 취소 버튼 -->';
                           total += '<tr>';
                           total += '<td colspan="2" align="right">';
                           total += '<br>';
                           total += '<button type="submit" class="btn btn-outline-primary">저장</button>';
                           total +=  '&nbsp';
                           total += '<button type="button" id="selfCancle" class="btn btn-outline-primary">취소</button>';
                           total += '</td>';
                           total += '</tr>';
                           total += '</table>';
                                                   
                      

                               $("#selfform").append(total);
                           }
                       });
                       
               
                       // 취소 클릭시 입력창 삭제
                       $(document).on("click", "#selfCancle", function () {
                          
                           $("#selfform").html("");
                       });
                       
                    })   
                    

                </script>
                
                
                
                
                
                
                
 <!-- 희망근무조건 ---------------------------------------------------------------------------------------------------------------->
            <div class="hope">
                <form action="hopeinsert" method="post">
                    <div class="form-caption">
                        <h4><b>희망근무조건</b></h4>
                    </div>
                    <hr style="width: 100%;">
                    <div id="hopeform"></div>
                    
                    <table id="hopeclick" style="width: 100%;">
                     <tr>
                       <td class="form-group">
                         <select class="form-select" style="width: 300px;">
                          <option>고용형태</option>
                          <option>정규직</option>
                          <option>계약직</option>
                          <option>프리랜서</option>
                          <option>인턴직</option>
                      </select>
                         <input type="text" class="form-control" style="width: 200px;" placeholder="희망연봉">만원이상 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                         <input type="checkbox">면접 후 결정
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
                             <div id="areaform"></div>
                           </td>
                      </tr>   
                      
                      <tr>
                           <td class="form-group" style="margin-top: 1%;">
                               <div id="areaClick" style="display: none;">
                                 <div class="areaSelect">
                                    <ul style="text-align: center;">
                                       <li>서울특별시 전지역</li>
                                       <li>부산광역시 전지역</li>
                                       <li>대구광역시 전지역</li>
                                       <li>인천광역시 전지역</li>
                                       <li>광주광역시 전지역</li>
                                       <li>대전광역시 전지역</li>
                                       <li>울산광역시 전지역</li>
                                       <li>세종특별자치시 전지역</li>
                                       <li>경기도 전지역</li>
                                       <li>강원특별자치시 전지역</li>
                                       <li>충청북도 전지역</li>
                                       <li>충청남도 전지역</li>
                                       <li>전라북도 전지역</li>
                                       <li>전라남도 전지역</li>
                                       <li>경상북도 전지역</li>
                                       <li>제주특별자치도 전지역</li>
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
                                       <li>서버/백엔드 개발자</li>
                                       <li>프론트엔드 개발자</li>
                                       <li>웹 풀스택 개발자</li>
                                       <li>안드로이드 개발자</li>
                                       <li>IOS 개발자</li>
                                       <li>크로스플랫폼 앱개발자</li>
                                       <li>세종특별자치시 전지역</li>
                                       <li>게임 클라이언트 개발자</li>
                                       <li>게임 서버 개발자</li>
                                       <li>DBA</li>
                                       <li>빅데이터 엔지니어</li>
                                       <li>인공지능/머신러닝</li>
                                       <li>devops/시스템 엔지니어</li>
                                       <li>정보보안 담당자</li>
                                       <li>QA 엔지니어</li>
                                      <li>개발 PM</li>
                                       <li>HW/임베디드</li>
                                       <li>SW/솔루션</li>
                                       <li>웹퍼블리셔</li>
                                       <li>VR/AR/3D</li>
                                       <li>블록체인</li>
                                       <li>기술지원</li>
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
                              <button type="submit" class="btn btn-outline-primary">저장</button>
                              <button type="button" id="hopeCancel" class="btn btn-outline-primary">취소</button>
                           </td>
                        </tr>
                    </table>        
                    </form>
                </div>
                
                

                <script type="text/javascript">

                $(function () {
                   
                   
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
                            var total = '<div class="areaStyle" style="border: 1px solid #4876EF; border-radius: 12px; padding: 8px;">' + area + '&nbsp;&nbsp;&nbsp;&nbsp;<i class="bi bi-x-lg areaDelete" value='+a+'></i></div>';
                            
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
                            var total = '<div class="jobStyle" style="border: 1px solid #4876EF; border-radius: 12px; padding: 8px;">' + job + '&nbsp;&nbsp;&nbsp;&nbsp;<i class="bi bi-x-lg jobDelete"  value='+j+'></i></div>';
                            
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
                    <form action="consentinsert" method="post">
                        <hr style="width: 100%;">
                        <table class="" style="width: 100%;">
                          <tr>
                      <td class="form-group">
                          <input type="checkbox" style="font-size: 1.2em;">모두 동의합니다.&nbsp;&nbsp;&nbsp;&nbsp;
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
                          <span style="font-size: 0.8em;"><input type="checkbox">  필수 항목에 대한 개인정보 수집 및 이용 동의</span>&nbsp;&nbsp;&nbsp;&nbsp;
                          <span style="font-size: 0.8em;"><a id="requireClick" style="text-decoration: none; color: gray; cursor: pointer;"
                          data-bs-toggle="modal" data-bs-target="#requireModal">상세보기 ></a></span>
                      </td>
                    </tr>
                    
                    <tr>
                      <td class="form-group">
                          <span style="font-size: 0.8em;"><input type="checkbox" >  선택 항목에 대한 개인정보 수집 및 이용 동의</span>&nbsp;&nbsp;&nbsp;&nbsp;
                          <span style="font-size: 0.8em; "><a style="text-decoration: none; color: gray; cursor: pointer;" id="choiceClick"
                          data-bs-toggle="modal" data-bs-target="#choiceModal">상세보기 ></a></span>
                      </td>
                    </tr>

                        </table>
                    </form>
                  <br>
                  <br>
                  <br>
                  <br>  
                </div>
                

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
                      <input type="text" class="form-control" style="height: 40px; width: 42.5%;" placeholder="이력서 제목을 입력해주세요">&nbsp;&nbsp;&nbsp;&nbsp;
                      <button type="button" class="btn btn-outline-primary">미리보기</button>&nbsp;
                      <button type="button"  class="btn btn-primary">작성완료</button>
                  </div>
               
            </div>
        </div>
    </div>
  
</body>
</html>
