<%@ page contentType="text/html; charset=UTF-8"%>

<div class = "mypage_remodeling_popup_wrap">
<button id="mypage_remodeling_popup_close" class="m-2">
	<img src="${pageContext.request.contextPath}/resources/images/mypage/popup_delete_icon.png"/>
	</button>
	 <div class = "personal_info">
	     <div id = "mypage_remodeling_popup_infomations">
	         <div class = "popup_info_name">
	             <div class = "popup_info_name_title">이름</div>
	             <div class = "popup_info_name_content">한보현</div>
	         </div>
	         <div class = "popup_info_phone_num">
	         	<div class = "popup_info_phone_num_title">연락처</div>
	            <div class = "popup_info_phone_num_content">01064724876</div>
	         </div>
	         <div class = "popup_info_space_type">
	         	<div class = "popup_info_space_type_title">리모델링 공간</div>
	            <div class = "popup_info_space_type_content">북유럽 스타일 치과</div>
	         </div>
	         <div  class = "popup_info_worker">
	         	<div class = "popup_info_worker_title">담당자</div>
	            <div class = "popup_info_worker_content">홍수빈</div>
	         </div>
	         <div  class = "popup_info_visit_date">
	         	<div class = "popup_info_visit_date_title">방문예정일</div>
	            <div class = "popup_info_visit_date_content">2022-05-27</div>
	         </div>
	     </div>
	 </div>
	 
</div>
<div id="mypage_counseling_mask" style="width:100%; height:100%; position:fixed; background:rgba(0,0,0,0.7) repeat; top:0; left:0;display:none;"></div>

<style>
	 /*팝업 선택시 회색 레이어 */
    #mypage_counseling_mask{
    	 z-index: 3;
    }
    
    .mypage_remodeling_popup_wrap {
    	z-index: 4; 
    }
    


 	.mypage_remodeling_popup_wrap {
 		background:#faf9f6;
 		height : 500px;
 		width : 350px;
 		position:fixed;
 		display : none;
 		align-item : center;
 		border : 1px solid #ca5c0d;
 		top: 300px; 
 		right: 200px;
 		
 	}
 	
 	.mypage_remodeling_popup_wrap .personal_info {
 		height : 100%;
 		width : 100%;
 		background-color : #faf9f6;
 		padding : 5%;
 		
 	
 	}
 	
 	#mypage_remodeling_popup_close {
	 	border: none;
	 	outline: none; 
	 	background-color: #faf9f6; 
	 	position:absolute; 
	 	top:0; 
	 	right:0;
 	}
 	
 	#mypage_remodeling_popup_infomations {
 		 margin-top : 40px;
 		 padding : 5px;
 		 list-style:none;
 	}
 	
 	.mypage_remodeling_popup_wrap .personal_info #mypage_remodeling_popup_infomations li{
 		font-size = 2.4em;
 	}
 	
 
 /*각 영역 분할*/	
 .personal_info #mypage_remodeling_popup_infomations .popup_info_name{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_name .popup_info_name_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_name .popup_info_name_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 
  .personal_info #mypage_remodeling_popup_infomations .popup_info_phone_num{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_phone_num .popup_info_phone_num_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_phone_num .popup_info_phone_num_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 
 
 
  .personal_info #mypage_remodeling_popup_infomations .popup_info_space_type{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_space_type .popup_info_space_type_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_space_type .popup_info_space_type_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
   .personal_info #mypage_remodeling_popup_infomations .popup_info_worker{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_worker .popup_info_worker_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_worker .popup_info_worker_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
    .personal_info #mypage_remodeling_popup_infomations .popup_info_visit_date{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_visit_date .popup_info_visit_date_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_visit_date .popup_info_visit_date_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 </style>