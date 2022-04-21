<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<style>
 input:focus {
            outline: none;
        }
  
  
        h3 {
            margin: 19px 0 8px;
            font-size: 14px;
            font-weight: 700;
        }
  
  
        .box {
            display: block;
            width: 100%;
            height: 51px;
            border: solid 1px #dadada;
            padding: 10px 14px 10px 14px;
            background: #fff;
            position: relative;
        }
  
        .int {
            display: block;
            position: relative;
            width: 100%;
            height: 29px;
            border: none;
            background: #fff;
            font-size: 15px;
        }
  
        input {
          font-family: 'MinSans-Regular';     
        }
  
        .box.int_pass {
            padding-right: 40px;
        }
  
        .box.int_pass_check {
            padding-right: 40px;
        }
  
        .step_url {
            /*@naver.com*/
            position: absolute;
            top: 16px;
            right: 13px;
            font-size: 15px;
            color: #8e8e8e;
        }
  
        .pswdImg {
            width: 18px;
            height: 20px;
            display: inline-block;
            position: absolute;
            top: 50%;
            right: 16px;
            margin-top: -10px;
            cursor: pointer;
        }
  
        select {
            width: 100%;
            height: 29px;
            font-size: 15px;
            background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
            background-size: 20px 8px;
            -webkit-appearance: none;
            display: inline-block;
            text-align: start;
            border: none;
            cursor: default;
            font-family: 'MinSans-Regular'; 
        }
  
        /* 에러메세지 */
  
        .error_next_box {
            margin-top: 9px;
            font-size: 12px;
            color: red;    
            display: none;
        }
  
        #alertTxt {
            position: absolute;
            top: 19px;
            right: 38px;
            font-size: 12px;
            color: red;
            display: none;
        }
  
        /* 버튼 */
  
        .btn_area {
            margin: 50px 0 91px;
        }
  
        #btnJoin {
            width: 100%;
            padding: 21px 0 17px;
            border: 0;
            cursor: pointer;
            color: #fff;
            background-color: #ca5c0d;
            font-size: 20px;
            font-weight: 400;
            font-family: 'MinSans-Regular'; 
            border-radius: 10px;
        }
</style>
 <div id="sign_up_wrap">
          
          <!--content wrapper -->
          <div id="sign_up_wrapper" style="background-color: #faf9f6; height: 90rem;  font-family: 'MinSans-Regular';" novalidate>
              <div class="text-center pt-5"><span style="font-size: 30px; font-family: 'MinSans-Regular';">회원가입</span></div>
              <!-- content-->
              <form method="post" action="join" id="content" style="position: absolute; left: 50%; transform: translate(-50%); width: 700px;">
  
                   <!-- EMAIL -->
                   <div>
                      <h3 class="join_title"><label for="email">이메일<span class="ml-1" style="color: red;">*</span></label></h3>
                      <span class="box int_email">
                          <input type="email" id="email" class="int" maxlength="100" required>
                      </span>
                      <span class="error_next_box"></span>    
                  </div>
  
                  
  
                  <!-- PW1 -->
                  <div>
                      <h3 class="join_title"><label for="pswd1">비밀번호<span class="ml-1" style="color: red;">*</span></label></h3>
                      <span class="box int_pass">
                          <input type="password" id="pswd1" class="int" maxlength="20" required>
                          <span id="alertTxt">사용불가</span>
                          <img src="${pageContext.request.contextPath}/resources/pngs/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                      </span>
                      <span class="error_next_box"></span>
                  </div>
  
                  <!-- PW2 -->
                  <div>
                      <h3 class="join_title"><label for="pswd2">비밀번호 재확인<span class="ml-1" style="color: red;">*</span></label></h3>
                      <span class="box int_pass_check">
                          <input type="password" id="pswd2" class="int" maxlength="20" required>
                          <img src="${pageContext.request.contextPath}/resources/pngs/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                      </span>
                      <span class="error_next_box"></span>
                  </div>
  
                  <!-- NAME -->
                  <div>
                      <h3 class="join_title"><label for="name">이름<span class="ml-1" style="color: red;">*</span></label></h3>
                      <span class="box int_name">
                          <input type="text" id="name" class="int" maxlength="20" required>
                      </span>
                      <span class="error_next_box"></span>
                  </div>
  
                  <!-- MOBILE -->
                  <div>
                      <h3 class="join_title"><label for="phoneNo">휴대전화<span class="ml-1" style="color: red;">*</span></label></h3>
                      <span class="box int_mobile">
                          <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력" required>
                      </span>
                      <span class="error_next_box"></span>    
                  </div>
                  
                  <!-- 주소 입력 -->
                   <div class="userInput">
                        <h3 class="join_title"><label for="phoneNo">주소</label></h3>
                        <input style="width: 49.07%; height: 51px; border: solid 1px #dadada; margin-right: 1%; padding: 10px 14px 10px 14px;" id="member_post"  type="text" placeholder="우편번호" readonly onclick="findAddr()"/>
                        <input style="width: 49.3%; height: 51px; border: solid 1px #dadada;  padding: 10px 14px 10px 14px;" id="member_addr" type="text" placeholder="도로명 주소" readonly/> <br>
                        <input style="width: 100%; height: 51px; border: solid 1px #dadada; margin-top: 1%;  padding: 10px 14px 10px 14px;" type="text" placeholder="상세 주소"/>
                   </div>

                   <!-- 사업자 번호 입력 -->
                   <div class="userInput">
                        <h3 class="join_title"><label for="phoneNo">사업자번호</label></h3>
                        <span class="box int_crn">
                            <input type="text" id="crn" class="int" maxlength="10" placeholder="사업자번호 입력(-는 빼고 입력해주세요)"/>
                        </span>
                        <span class="error_next_box"></span>   
                    </div>

                    <!-- 필수 입력 항목 -->
                    <div class="mt-2"><small style="color: #616161;">*은 필수 입력 항목입니다.</small></div>

                    <div class="mt-5 p-4" style="background-color: #d4d4d4;">
                        <label for="agree_all" class="d-block">
                            <input type="checkbox" name="agree_all" id="agree_all"  style='zoom:1.5;'>
                            <span style="font-size: 20px;">모두 동의합니다</span>
                        </label>
                        <diV class="p-4" style="background-color: #f5f5f5;">
                            <label for="agree" class="d-block">
                                <input type="checkbox" name="agree" value="1">
                                <span style="font-size: 16px;">이용약관 동의<strong>(필수)</strong></span>
                            </label>
                            <label for="agree" class="d-block">
                                <input type="checkbox" name="agree" value="2">
                                <span style="font-size: 16px;">개인정보 수집, 이용 동의<strong>(필수)</strong></span>
                            </label>
                            <label for="agree" class="d-block">
                                <input type="checkbox" name="agree" value="3">
                                <span style="font-size: 16px;">개인정보 이용 동의<strong>(필수)</strong></span>
                            </label>
                            <label for="agree" class="d-block">
                                <input type="checkbox" name="agree" value="4">
                                <span style="font-size: 16px;">이벤트, 혜택정보 수신동의<strong class="select_disable">(선택)</strong></span>
                            </label>
                        </diV>
                    </div>
                  <input class="btn btn_area" type="submit" id="btnJoin" value="가입하기"/>
                  
              </form> 
          </div> 
      </div>
<script>
      function findAddr(){
          new daum.Postcode({
              oncomplete: function(data) {
                  
                  console.log(data);
                  
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                  // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var roadAddr = data.roadAddress; // 도로명 주소 변수
                  var jibunAddr = data.jibunAddress; // 지번 주소 변수
                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('member_post').value = data.zonecode;
                  if(roadAddr !== ''){
                      document.getElementById("member_addr").value = roadAddr;
                  } 
                  else if(jibunAddr !== ''){
                      document.getElementById("member_addr").value = jibunAddr;
                  }
              }
          }).open();
      }

      /*변수 선언*/

      var email = document.querySelector('#email');
    
      var pw1 = document.querySelector('#pswd1');
      var pwMsg = document.querySelector('#alertTxt');
      var pwImg1 = document.querySelector('#pswd1_img1');
    
      var pw2 = document.querySelector('#pswd2');
      var pwImg2 = document.querySelector('#pswd2_img1');
      var pwMsgArea = document.querySelector('.int_pass');
    
      var userName = document.querySelector('#name');
    
      var mobile = document.querySelector('#mobile');
    
      var error = document.querySelectorAll('.error_next_box');

      var crn = document.querySelector('#crn');
    
    
    
      /*이벤트 핸들러 연결*/
    
      email.addEventListener("focusout", isEmailCorrect);
      pw1.addEventListener("focusout", checkPw);
      pw2.addEventListener("focusout", comparePw);
      userName.addEventListener("focusout", checkName);
      mobile.addEventListener("focusout", checkPhoneNum);
      crn.addEventListener("focusout", checkCRN);
    
      /*콜백 함수*/
    
      function isEmailCorrect() {
    	  console.log("email");
          var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;
          if(email.value === ""){ 
              error[0].innerHTML = "필수 정보입니다.";
              error[0].style.display = "block";
          } else if(!emailPattern.test(email.value)) {
              error[0].innerHTML = "이메일을 다시 확인해주세요.";
              error[0].style.display = "block";
          } else {
              error[0].style.display = "none"; 
          }
    
      }
      function checkPw() {
    	  console.log("pw");
          var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
          if(pw1.value === "") {
              error[1].innerHTML = "필수 정보입니다.";
              error[1].style.display = "block";
          } else if(!pwPattern.test(pw1.value)) {
              error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
              pwMsg.innerHTML = "사용불가";
              pwMsgArea.style.paddingRight = "93px";
              error[1].style.display = "block";
              
              pwMsg.style.display = "block";
              pwImg1.src = "${pageContext.request.contextPath}/resources/pngs/m_icon_not_use.png";
          } else {
              error[1].style.display = "none";
              pwMsg.innerHTML = "안전";
              pwMsg.style.display = "block";
              pwMsg.style.color = "#03c75a";
              pwImg1.src = "${pageContext.request.contextPath}/resources/pngs/m_icon_safe.png";
          }
      }
    
      function comparePw() {
          if(pw2.value === pw1.value && pw2.value != "") {
              pwImg2.src = "${pageContext.request.contextPath}/resources/pngs/m_icon_check_enable.png";
              error[2].style.display = "none";
          } else if(pw2.value !== pw1.value) {
              pwImg2.src = "${pageContext.request.contextPath}/resources/pngs/m_icon_check_disable.png";
              error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
              error[2].style.display = "block";
          } 
    
          if(pw2.value === "") {
              error[2].innerHTML = "필수 정보입니다.";
              error[2].style.display = "block";
          }
      }
    
      function checkName() {
          var namePattern = /[a-zA-Z가-힣]/;
          if(userName.value === "") {
              error[3].innerHTML = "필수 정보입니다.";
              error[3].style.display = "block";
          } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
              error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
              error[3].style.display = "block";
          } else {
              error[3].style.display = "none";
          }
      }
    
      function checkPhoneNum() {
          var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;
    
          if(mobile.value === "") {
              error[4].innerHTML = "필수 정보입니다.";
              error[4].style.display = "block";
          } else if(!isPhoneNum.test(mobile.value)) {
              error[4].innerHTML = "형식에 맞지 않는 번호입니다.";
              error[4].style.display = "block";
          } else {
              error[4].style.display = "none";
          }
      }

      function checkCRN() {
          //3078105564
          var crnValue = document.getElementById("crn").value;
          console.log(crnValue);

          var valueMap = crnValue.replace(/-/gi,'').split('').map(function(item){
              return parseInt(item, 10);
          });

          console.log(valueMap);
          
          if(valueMap.length===10){
              console.log("10");
              var multiply = new Array(1,3,7,1,3,7,1,3,5);
              var checkSum = 0;

              for(var i = 0; i <multiply.length; ++i){
                  checkSum += multiply[i]*valueMap[i];
              }

              checkSum += parseInt((multiply[8]*valueMap[8])/10,10);
              console.log(checkSum);
              if(Math.floor(valueMap[9]) === ((10-(checkSum%10))%10)){
                  error[5].style.display = "none";
              } else {
                  error[5].innerHTML = "형식에 맞지 않는 번호입니다.";
                  error[5].style.display = "block";
              }
          } else {
              console.log("10no");
              error[5].innerHTML = "형식에 맞지 않는 번호입니다.";
              error[5].style.display = "block";
          }

      }
      
      /*개인정보 동의*/
      const agreeChkAll = document.querySelector('input[name=agree_all]');
  	    agreeChkAll.addEventListener('change', (e) => {
  	    let agreeChk = document.querySelectorAll('input[name=agree]');
  	    for(let i = 0; i < agreeChk.length; i++){
  	    agreeChk[i].checked = e.target.checked;
  	    }
  	});
      </script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>