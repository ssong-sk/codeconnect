<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gowun+Dodum&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
<title>Insert title here</title>
<style type="text/css">
	.footerall {
	    width: 100%;
	    background-color: #fff;
	    height: 70px;
	    border-top: 1px solid blue;
	    display: flex;
	    align-items: center;
	    justify-content: space-between;
	    padding: 0 10px;
	    font-family: IBM Plex Sans KR;
	    position: fixed;
	    bottom: 0;
	    left: 0;
	    z-index: 1000;
	}
	
	.footerall div {
	    display: flex;
	    align-items: center;
	    width: 100%;
	    justify-content: end;
	}
	
	.savebtn {
	    font-weight: bold;
	    font-size: 11pt;
	    padding: 9px 20px;
	    color: blue;
	    border-color: blue;
	    background-color: #fff;
	    border-radius: 25px;
	}
	
	.error {
	    position: fixed;
	    top: 83%;
	    left: 50%;
	    transform: translateX(-50%);
	    max-width: 980px;
	    display: none;
	    color: white;
	    font-size: 10pt;
	    background-color: rgba(0, 0, 0, 0.75); /* 투명한 블랙 배경 */
	    border: 1px solid #fff;
	    padding: 10px 20px;
	    border-radius: 10px;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    font-family: IBM Plex Sans KR; 
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="footerall">
        <div>
            <input type="checkbox" id="agreeCheckbox">&nbsp;&nbsp;
            <span style="font-size: 10pt; color: gray;">
            	(필수) 코드커넥트 채용사이트를 통한 채용 성공 시 합격자 연봉의 7% 수수료가 발생함을 인지하고 이에 동의 합니다.
            </span>&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="submit" class="btn btn-primary savebtn" >
                공고 등록하기
            </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </div>
    <div class="error" id="errorMessage">
        <i class="bi bi-exclamation-circle" style="color: red;"></i>&nbsp;&nbsp;&nbsp;필수 동의 사항에 체크해 주세요
    </div>
    

    <script type="text/javascript">
    $(".savebtn").click(function() {
    	
		var isChecked = $("#agreeCheckbox").is(":checked");
		if (!isChecked) {
			event.preventDefault();
			$("#errorMessage").fadeIn().delay(3000).fadeOut();
		} else {
	    	/* h_job(직무) 값 구하기 */
	        var job1 = $(".toggle-btn span.selected").text().replace(/\s+/g, ' ').trim();
	        var job2 = $(".toggle-btn2 span.selected").text().replace(/\s+/g, ' ').trim();
	        var job3 = $(".toggle-btn3 span.selected").text().replace(/\s+/g, ' ').trim();
	
	        var job = [job1, job2, job3].filter(Boolean).join('|');
	
	        $('input.job').val(job);
	        
	        /* h_career(경력) 값 구하기 */
	        if($("#newcomer-checkbox").is(":checked")){
	        	 $('input.career').val("신입");
	        }else{
	        	var career1 = $(".careertoggle-btn span.selected").text();
	            var career2 = $(".careertoggle-btn2 span.selected").text();
	            
	            var career = career1 +"~"+ career2;
	            
	            $('input.career').val(career);       	
	        }
	        
	        /* h_location(근무지) 값 구하기 */
	        var location1 = $("#address1").val();
	        var location2 = $("#address2").val();
	        
	        var location = location1 +" "+ location2;
	        
	        $('input.location').val(location);
	        
	        /* h_tech(기술스택) 값 구하기 */
	        var selectedTechs = [];
	        $("#selected-tech .selected-tech span").each(function() {
	            selectedTechs.push($(this).text().trim());
	        });
	
	        if (selectedTechs.length === 0) {
	            $('input.tech').val(null);
	        } else {
	            var selectedTechString = selectedTechs.join("|");
	            $('input.tech').val(selectedTechString);
	        }
	        
	        /* h_salary(채용시 예상 연봉) 값 구하기 */
	       	var salary1 = $(".salary #salary1").val();
	       	var salary2 = $(".salary #salary2").val();
	           
	        var salary = salary1 +"~"+ salary2;
	           
	        $('input.salary').val(salary);       	
	        
	        /* h_category(카테고리) 값 구하기 */
	        var selectedCates = [];
	        $("#selected-cate .selected-cate span").each(function() {
	        	selectedCates.push($(this).text().trim());
	        });
	
	        if (selectedCates.length === 0) {
	            $('input.cate').val(null);
	        } else {
	            var selectedCateString = selectedCates.join("|");
	            $('input.cate').val(selectedCateString);
	        }
	        
	        /* h_deadline(게시 마감일) 값 구하기 */
	        if($("#flexRadioDefault1").is(":checked")){
	        	 $('input.deadline').val("상시 모집");
	        }else{
	       		var deadline = $("input.deadline-date").val();
	           	$('input.deadline').val(deadline);    	
	        }
	        
	        $("#errorMessage").hide();
	        alert("작성 완료");
        }
    });
    </script>    
</body>
</html>