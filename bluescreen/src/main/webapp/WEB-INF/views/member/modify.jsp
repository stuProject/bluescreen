<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
		<link rel="stylesheet" type="text/css" href="../css/info/member.css">
		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/top_navi.js"></script>
		<script type="text/javascript" src="../js/left_navi.js"></script>
		<script type="text/javascript" src="../js/main.js"></script>
		<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
		<script type="text/javascript" src="../js/jquery.anchor.js"></script>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<title>마이페이지 | 회원정보 | 회원정보수정</title>
	</head>
	<body id="body">
		<header>
			<%@ include file="../header.jsp" %>
		</header>
		<div id="" style="margin-top:150px; margin-bottom:80px;">
			<!-- <h2><strong>마이페이지</strong><span>내 정보</span></h2> -->
			<div id="left" style="float:left; width:250px; height: 250px; margin: 100px 0 0 100px;">
				<div id="title2" style="font-size: 35px;">마이페이지<span style="font-size: 13px;">내 정보</span></div>
				<ul >	
					<li style="height:40px;"><a href="myPage" id="leftNavi1" style="height:40px; font-size: 15px; line-height: 270%; text-decoration: none;">내 정보</a></li>
					<li style="height:40px;"><a href="myPageFind" id="leftNavi2" style="height:40px; font-size: 15px; line-height: 270%; text-decoration: none;">즐겨찾기</a></li>
					<li style="height:40px;"><a href="myPageMedi" id="leftNavi4" style="height:40px; font-size: 15px; line-height: 270%; text-decoration: none;">복용 중인 약</span></a></li>
					<li class="last" style="height:40px;"><a id="leftNavi3" style="height:40px; font-size: 15px; line-height: 270%; text-decoration: none;">회원정보</a></li>
				</ul>				
			</div><script type="text/javascript">initSubmenu(3,0);</script>
		<div id="mmypage" style="width:1000px;  margin:150px auto 200px auto;">
			<!-- <h2><strong>마이페이지</strong><span>내 정보</span></h2> -->
			<div class="myTab">
				<ul>
					<li><a href="myPage" >내 정보</a></li>
					<li class="dep"><a href="myPageFind" >즐겨찾기</a></li>
					<li><a href="myPageMedi">복용 중인 약</a></li>
					<li class="last"><a class="on">회원정보</a></li>
				</ul>						
			</div>	
		
			<form name="agree" method="post" action="/board/myPageFix" style="margin-top:70px;">
			<input type="hidden" id="uno" name="uno" value="${mem.uno }"/>
			
			
				<div id="subBanner"></div>
				<div style="width:1000px; margin:0 auto;  margin-bottom: 20px;font-size:17px; padding:0 0 0 30px; color:#0a47ff; ">회원 정보 수정&nbsp;
					<span>(&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;는 필수 입력사항입니다.&nbsp;&nbsp;&nbsp;&nbsp;)</span>
				</div>
				<div id="fieldset_class" style="overflow:hidden; border: 1px solid #8497d3;border-radius: 20px; margin:0 auto; width:1000px;">
				<style type="text/css">	
					th {vertical-align:middle; }
					td {vertical-align:middle; text-align:left; padding:15px;}
				</style>
				<table>
					<colgroup>
						<col width="25%">
						<col width="75%">
					</colgroup>
					<tr id="join_name_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px; "><label>이름</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8;"><input type="text" id="name" name="name" value="${mem.name }"/></td>
					</tr>
					<tr id="join_name_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;"><label>아이디</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8;">${mem.id }</td>
					</tr>
					<tr id="join_nickname_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;"><label>*닉네임</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8; padding-bottom: 12px;">
							<input type="text" id="nickname" name="nickname" onchange = "nicknamechange()" value="${mem.nickname }"/>
							<input type="button" onclick="nicknameOk()" value="중복확인" id="nicBtn" style="line-height: 28px;"disabled/>
							<span style="color:#0a47ff; font-size: 13px;">3~16자리의 한글, 영문, 숫자만 사용하실 수 있습니다.</span>
						</td>
					</tr>
					<tr id="join_pw1_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;"><label>*비밀번호</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8; padding-bottom: 12px;">
							<input type="password" id="pw1" name="pw1" class="pw1" onchange="pwChg()" disabled/>
							<input type="hidden" id="pw" name="pw" value="${mem.pw }"/>
							<input type="button" class="buttons" onclick="pwBtn()" style="line-height: 28px; " value="비밀번호 변경"/>
							<span id="pwCon" style="color:#0a47ff; font-size: 13px;"></span>
						</td>
					</tr>
					<tr id="join_pw2_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;"><label>*비밀번호 확인</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8;">
							<input type="password" id="pwOk" name="pwOk" onkeyup="pwkey()" class="pw" disabled/>
							<span id="pwCheck"></span>
						</td>
					</tr>
					<tr id="join_mail_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;"><label>*이메일</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8; padding-bottom: 10px;">
							<div>
							<input type="text" id="emailId" name="emailId" onchange="emailCk()" value="${mem.emailId}"/>
							<span>@</span>
							<input type="text" id="emailTail" name="emailTail"  value="${mem.emailTail }"/>
							<select id="emailList" onchange="emailCk()" style="height:26px; font-size: 13px;">
								<option value="txt" selected="selected">직접입력</option>
								<option value="gmail.com">구글</option>
								<option value="naver.com">네이버</option>
								<option value="nate.com">네이트</option>
								<option value="daum.net">다음</option>
							</select>
							<input type="button" id="email_send" class="buttons" onclick="emailSend()" style="line-height: 28px;" value="인증번호 발송"/>
							</div>
							<div id="emailCk"></div>
						</td>
					</tr>
					<tr id="join_address_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;"><label>주소</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8;">
							<input type="text" id="addr1" name="addr1" value="${mem.addr1 }" style="margin-bottom: 10px;"/>
							<input type="button" onclick="addressBtn()" style="line-height: 28px;" value="우편번호"/><br>
							<input type="text" id="addr2" name="addr2" style="width:50%;" value="${mem.addr2 }"/>
							<input type="text" id="addr3" name="addr3" value="${mem.addr3 }"/>
						</td>
					</tr>
					<tr id="join_tell_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;"><label>전화번호</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8;">
							<input type="text" id="phone1" name="phone1" maxlength="3" value="010"/>
							<span> - </span>
							<input type="text" id="phone2" name="phone2" maxlength="4"  value="${mem.phone2 }"/>
							<span> - </span>
							<input type="text" id="phone3" name="phone3" maxlength="4"  value="${mem.phone3 }"/>
						</td>
					</tr>
					<tr id="join_name_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;"><label>생년월일</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8;">
							<select id="year" name="year">
								<c:forEach var="y" begin="1920" end="2024" step="1">
									<c:if test="${y == mem.year}">
										<option value="${y }" selected>${y }</option>
									</c:if>
									<c:if test="${y != mem.year}">
										<option value="${y }">${y }</option>
									</c:if>
								</c:forEach>
							</select>
							<span>년</span>
							<select id="month" name="month" onchange="bmonth()" >
								<c:forEach var="m" begin="1" end="12" step="1">
									<c:if test="${m == mem.month}">
										<c:if test="${m < 10}">
											<option value="${m }" selected>0${m }</option>
										</c:if>
										<c:if test="${m >= 10 }">
											<option value="${m }" selected>${m }</option>
										</c:if>
									</c:if>
									<c:if test="${m != mem.month}">
										<c:if test="${m < 10}">
											<option value="${m }">0${m }</option>
										</c:if>
										<c:if test="${m >= 10 }">
											<option value="${m }">${m }</option>
										</c:if>
									</c:if>
								</c:forEach>
							</select>
							<span>월</span>
							<select id="day" name="day" >
								<c:forEach var="d" begin="1" end="31" step="1">
									<c:if test="${d == mem.day }">
										<c:if test="${d<10 }">
											<option value="${d }"selected>0${d }</option>
										</c:if>
										<c:if test="${d>=10 }">
											<option value="${d }"selected>${d }</option>
										</c:if>
									</c:if>
									<c:if test="${d != mem.day }">
										<c:if test="${d<10 }">
											<option value="${d }">0${d }</option>
										</c:if>
										<c:if test="${d>=10 }">
											<option value="${d }">${d }</option>
										</c:if>
									</c:if>
								</c:forEach>
								
								<script>
								
								function bmonth(){
									var dmonth = $("#month").val();
									var str = "";
									if(dmonth =="2"){
										for(var i=1;i<=29;i++){
											if(i<10){
												str += "<option value='"+i+"'>0" + i + "</option>";
											}else{
												str += "<option value='"+i+"'>" + i + "</option>";
											}
										}
									}else if(dmonth=="1" || dmonth=="3" || dmonth=="5" || dmonth=="7" || dmonth=="8" || dmonth=="10" || dmonth=="12"){
										for(var i=1;i<=31;i++){
											if(i<10){
												str += "<option value='"+i+"'>0" + i + "</option>";
											}else{
												str += "<option value='"+i+"'>" + i + "</option>";
											}
										}
									}else if(dmonth=="4" || dmonth=="6" || dmonth=="9" || dmonth=="11"){
										for(var i=1;i<=30;i++){
											if(i<10){
												str += "<option value='"+i+"'>0" + i + "</option>";
											}else{
												str += "<option value='"+i+"'>" + i + "</option>";
											}
										}
									}
									$("#day").html(str);
								}
								</script>
								
							</select>
							<span>일</span>
						</td>
					</tr>
					<tr id="join_gender_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;"><label>성별</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8;">
							<input type="radio" name="gender" id="male" value="남성"<c:if test="${mem.gender == '남성'}">checked</c:if>  />
							<label for="male">남성</label>
							<input type="radio" name="gender" id="female" value="여성" <c:if test="${mem.gender == '여성'}">checked</c:if>/>
							<label for="female">여성</label>
						</td>
					</tr>
					<tr id="join_job_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;"><label>직업</label></th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8;">
							<select id="job" name="job">
								<option value="" <c:if test="${mem.job == ''}" >selected</c:if>>선택</option>
								<option value="회사원"<c:if test="${mem.job == '회사원'}" >selected</c:if>>회사원</option>
								<option value="자영업"<c:if test="${mem.job == '자영업'}" >selected</c:if>>자영업</option>
								<option value="프리랜서"<c:if test="${mem.job == '프리랜서'}" >selected</c:if>>프리랜서</option>
								<option value="전업주부"<c:if test="${mem.job == '전업주부'}" >selected</c:if>>전업주부</option>
								<option value="학생"<c:if test="${mem.job == '학생'}" >selected</c:if>>학생</option>
								<option value="기타"<c:if test="${mem.job == '기타'}" >selected</c:if>>기타</option>						
							</select>
						</td>
					</tr>
					<tr id="join_job_dl">
						<th style="border-right: 1px solid #b9c4e8; border-bottom: 1px solid #b9c4e8; background-color: #F5F5F5; height:56px; font-weight: bold; font-size: 14px;">이메일 발송 동의</th>
						<td style="font-size: 14px;  border-bottom: 1px solid #b9c4e8;">
							<div class="agreeRadio">
								<input type="radio" name="ck" id="p_agree" class="p_agree" value="agree" <c:if test="${mem.ck == 'agree'}" >checked</c:if>/>
								<label for="p_agree">개인정보 취급위탁에 동의합니다.</label>
								<input type="radio" name="ck" id="p_disagree" class="p_disagree" value="disagree" <c:if test="${mem.ck == 'disagree'}" >checked</c:if>/>
								<label for="p_disagree">동의하지 않습니다.</label>
							</div>
						</td>
					</tr>
					<tr style="">
						<td colspan='2' style="font-size:14px; padding:30px; line-height: 22px;">
							<p style="font-weight: bold;">[개인정보 수집, 이용 동의 안내]</p>
							<ul>
								<li>이 약관은 주식회사 WDH(이하"회사"라 표기합니다)가 제공하는 사이버 회원에 대한 서비스 제공 및 이용조건, 회원가입에 관련된 사항 및 절차 그리고 기타 필요한 사항의 규정을 목적으로 합니다.</li>
							</ul>
							<ul>
								<li><strong style="color:#0a47ff;">1) &nbsp;&nbsp;&nbsp;WDH 웹사이트는 다음과 같은 목적을 위하여 개인정보를 수집하고 있습니다.</strong></li>
								<li>가. &nbsp;&nbsp;성명, 생년월일, ID, 비밀번호, 이동전화번호, 건강상태 : 회원제 서비스 이용에 따른 본인 식별 절차에 이용</li>
								<li>나. &nbsp;&nbsp;주소, e-mail 주소, 의료정보 : 고지사항 전달, 본인 의사 확인, 불만 처리 등 원활한 의사소통 경로의 확보, 복용약 소비기한 임박 알림, 지도 검색, 새로운 서비스 안내</li>
								<li>다. &nbsp;&nbsp;생년월일, 주소, 성별 : 인구통계학적 분석 자료(회원의 연령별, 성별, 지역별 통계분석)</li>
							</ul>
						</td>
					</tr>
				</table>
			</div>
			</form>
		<div id="info_input_button" style="margin-bottom: 350px;">
			<a href = "/"><input type="reset" style="position:absolute; color: rgb(255, 255, 255); background: #0a47ff; border-radius:15px; margin-left:210px;;" value="취소" /></a>
			<a onclick="saveBtn()"><input type="button" style="position:absolute; color: rgb(255, 255, 255); background: #0a47ff; border-radius:15px; margin-left:360px;" value="저장" /></a>
		</div>
		</div>
		</div>
		
<script type="text/javascript">
let idCheck = false;
let pwCheck = true;
let nicknameCheck = true;
let email_check = false;
let nameCk = /^[가-힣]+$/;
let idCk = /^[a-zA-Z]{1}[a-zA-Z0-9_]{3,15}$/;
let nicknameCk = /^[가-힣a-zA-Z0-9]{3,16}$/;
let pwCk = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*?_]).{8,20}$/;
let interval; //

function nicknamechange(){
	if("${mem.nickname}"==$("#nickname").val()){
		$("#nicBtn").attr("disabled",true);
	}else{
		$("#nicBtn").attr("disabled",false);
	}
	nicknameCheck=false;
}
function idchange(){
	idCheck=false;
}
function pwBtn(){
	 	$("#pwCon").html("영문, 숫자, 특수문자 모두 조합 8~20까지 입력할 수 있습니다.");
		$("#pw1").attr("disabled",false);
		$("#pwOk").attr("disabled",false); 
}
function pwChg(){
	if(!pwCk.test($("#pw1").val())){
		alert("비밀번호가 조건에 부합하지 않습니다.\n(하나 이상의 영문, 숫자, 특수문자(!@#$%^&*?_)포함 8~20자리까지 가능)");
		$("#pw1").val("");
		$("#pwOk").val("");
		$("#pw1").focus();
	}//pwCk 
	else if(pwCheck==false){
		alert("비밀번호가 일치하지 않습니다.\n비밀번호와 비밀번호 확인이 일치하게 해주세요.");
	}
}
	
function saveBtn(){
	if(!nameCk.test($("#name").val())){
		alert("이름은 한글만 입력 가능합니다.");
		$("#name").val("");
		$("#name").focus();
	}//nameCk
	else if(nicknameCheck==false){
		alert("닉네임 중복체크를 완료해주세요.");
		$("#nickname").focus();
	}//nicknameCk
	else{
		agree.submit();
	}
}
function pwkey(){
	if($("#pw1").val()==$("#pwOk").val()){
		$("#pwCheck").text("*비밀번호가 일치합니다.").css('color','blue');
		pwCheck = true;
	}else{
		$("#pwCheck").text("*비밀번호가 일치하지 않습니다.").css('color','red');
		pwCheck = false;
	}
}
function nicknameOk(){
	if(!nicknameCk.test($("#nickname").val())){
		alert("조건에 부합하지 않는 닉네임입니다.\n다시 입력해주세요.");
		nicknameCheck = false;
	}else{
		$.ajax({
			url:"/member/nicknameOk",
			method:"post",
			data:{"nickname":$("#nickname").val()},
			success:function(data){
				//alert();
				//console.log(data);
				if(data==""){
					alert("사용할 수 있는 닉네임입니다.");
					nicknameCheck = true;
				}else{
					alert("이미 사용중인 닉네임입니다.");
					$("#nickname").val("");
					$("#nickname").focus();
					nicknameCheck = false;
				}
			},
			error:function(){
				alert("다시 시도해주세요");
			}
		});//ajax
	}
}
function emailCk(){
	if($("#emailList").val() != "txt"){
		$("#emailTail").val($("#emailList").val());
	}else{
		$("#emailTail").val("");
	}
	if($("#emailId").val()==""||$("#emailTail").val()==""){
		alert("이메일을 입력해주세요.");
		return false;
	}else if(email_check==false){
		alert("이메일 인증 받아주세요.");	
	}
}
function addressBtn(){
	new daum.Postcode({
    	oncomplete: function(data) {
            console.log(data);
            $("#addr1").val(data.zonecode);
			$("#addr2").val(data.address);
			$("#addr3").val("");
        }
    }).open();
}
function emailSend(){ //이메일 인증번호 보내기 후 활성화
	var name = $("#name").val();
	var email = $("#emailId").val()+"@"+$("#emailTail").val();
	$.ajax({
		url:"/member/emailSend",
		type:"post",
		data:{"name":name, "email":email},
		success:function(data){
			alert("인증번호가 발송되었습니다.");
			console.log(data);
			startTimer();
			$("#emailCk").html('<input type="text" id="emailCheck" />&nbsp;&nbsp;');
			$("#emailCk").append('<input type="button" id="emailOk" onclick="emailk(\''+data+'\')" value="인증번호 확인"/>');
			$("#emailCk").append('<span id="timer"></span>'); 
			//console.log(name); console.log(email);
		},
		error:function(error, status){
			alert("다시 시도해주세요");
		}
	});//ajax
}
function startTimer(){ //타이머
	var timeLeft = 300; //5분
	const timerElement = $("#timer");
	interval = setInterval(function(){
		if(timeLeft <= 0){
			clearInterval(interval);
			$("#timer").html("시간 초과!\n새로운 인증번호를 발송하세요").css('color','red');
			$("#emailOk").attr("disabled", true); // 버튼 비활성화
			$("#email_send").attr("disabled", false); //버튼 활성화
			
		}else{
			const minutes = Math.floor(timeLeft/60);
			const seconds = timeLeft%60;
			//console.log(minutes);	console.log(seconds);
			$("#timer").html("남은 시간 ("+minutes+" : "+seconds+")");
			timeLeft--;
			$("#email_send").attr("disabled", true); // 버튼 비활성화
		}
	}, 1000);
}
function emailk(data){
	//console.log(data);
	 if(data==$("#emailCheck").val()){
		clearInterval(interval);
		$("#timer").html("인증 완료되었습니다.").css("color","blue");
		email_check = true; //이메일 인증 완료
		$("#emailOk").attr("disabled", true); // 버튼 비활성화
		$("#emailId").attr("readonly", true); // 인증 후 수정 불가
		$("#emailTail").attr("readonly", true); //인증 후 수정 불가
		$("#emailList").attr("disabled", true); //인증 후 수정 불가
	}else{
		alert("인증 번호가 다릅니다.\n다시 입력해주세요.");
	} 
}

</script>	
		<footer>
			<%@ include file="../footer.jsp" %>
		</footer>
	</body>
</html>