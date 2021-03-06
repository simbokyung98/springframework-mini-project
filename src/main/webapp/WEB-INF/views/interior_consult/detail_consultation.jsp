<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quik.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quick_consultation.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quipment_buy_request_consult.css" rel="stylesheet" type="text/css" /> 
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/remodeling_price.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/detail_consultation.css" rel="stylesheet" type="text/css"/> 
<!-- 상담신청 완료 팝업창 -->
<style>
/*상담신청 팝업창*/
.consult_finish_pop_layer .consult_finish_pop-container {
    padding: 50px 50px 30px 50px;
  }

  .consult_finish_pop_layer .btn-r {
    width: 100%;
    margin: 10px 0 20px;
    padding-top: 10px;
    border-top: 1px solid #DDD;
    text-align: center;
  }
  .consult_finish_title{
    height: 300px;
  }
  .consult_finish_pop_layer {
    display: none;
    position: absolute;
    top: 50%;
    left: 50%;
    width: 440px;
    height: auto;
    background-color: #fff;
    z-index: 10;
    border-radius: 5px;
  }
  
  .consult_finish_dim-layer {
    display: none;
    position: fixed;
    _position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 100;
  }
  
  .consult_finish_dim-layer .dimBg {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: #000;
    opacity: .5;
    filter: alpha(opacity=50);
  }
  
  .consult_finish_dim-layer .consult_finish_pop_layer {
    display: block;
  }
  
  a.btn-layerClose {
    width: 100px;
    display: inline-block;
    background-color: #272723;
    font-size: 15px;
    color: #fff;
  }
  
  a.btn-layerClose:hover {
    background-color: #ca5c0d;
    color: #fff;
  }

/*미입력값 span css 처리*/
.detail_null_span{
    color: red; 
    font-family: 'MinSans-Regular';
}

/*로딩창*/
#detailoading {
    width: 100%;    
    height: 100%;    
    top: 0;    
    left: 0;    
    position: fixed;   
    display: none;   
    opacity: 0.7;   
    background: white;   
    z-index: 99;   
    text-align: center; 
  }
  
  #detailoading > img{
    position: absolute;
    top: 35%;
    left: 40%;
    z-index: 100;
  }   
</style>
<div id="detailoading">
	<img  src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/load.gif" alt="loading">  
</div>
<main style="background-color: #faf9f6">

    <div class="consult_finish_dim-layer">
        <div class="dimBg">x</div>
        <div id="consult_finish_btnss" class="consult_finish_pop_layer">
            <div class="consult_finish_pop-container">
                <!--content //-->
                <div class="text-center consult_finish_title">
                    <h5 style="color: black; font-family: 'MinSans-Bold'; font-size: 26px;">견적 계산 기준이 뭔가요?</h5>
                    <br>
                    <p style="font-family: 'MinSans-Regular';">
                        치과 인테리어 특성상 <b>평수 당 가격</b>으로 기본값이 측정됩니다. <b>자재와 장비, 추가 공간</b>에 따라 금액을 산정하였습니다. 
                        <b>시공 현장의 상황, 자재 및 인건비 차이, 시장 상황 변동 등으로 인해 실제 견적과 차이</b>가 날 수 있습니다.
                    </p>
                    <P style="font-family: 'MinSans-Regular';">
                        보다 정확한 견적을 <b>상담신청</b>을 통해 문의하실 수 있습니다.
                    </P>
                    <p style="font-family: 'MinSans-Regular';">
                        오몰레어를 이용해 주셔서 감사합니다.
                    </p>
                </div>
                <div class="btn-r">
                    <a href="#" class="btn-layerClose btn">Close</a>
                </div>
                <!--// content-->
            </div>
        </div>
    </div>
  
	
        <div class="container-fulid">
            <article  class="mx-auto" style="width: 75%; background-color: #faf9f6; padding: 80px 0 200px 0;">
                <form action="detailConsultRequest"  method="post" id="detailSubmit">
                <div class="bg-white rounded" style="width: 100%;">
                    <div style="display: flex;">
                        <!-- 어사이드바와 상세 선택 묶음 부분 -->
                        <section style="display: inline-block; width: 65%; box-sizing:content-box;">
                            <div style="display: flex;">
                                <!-- 어사이드바 부분 -->
                                <div style="display: inline-block; width: 12%;">
                                    <div style="width: 100%;" class="text-right">
                                        <ul class="detail_consult_aside_ul">
                                            <li class="mb-2">
                                                <div style="display: flex; justify-content: right;">
                                                    <div style="display: inline-block;" class="mt-1 mr-1" >
                                                        <div >
                                                            <i id="all_i" class="fas fa-exclamation-circle" style="color: white;"></i>
                                                        </div>
                                                    </div>
                                                    <div style="display: inline-block;">
                                                        <button type="button" class="btn detail_consult_aside_jsonci_class" value="all" onclick="js:detail_consult_aside_btn('all')" >종합</button>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="mb-2">
                                                <div style="display: flex; justify-content: right;">
                                                    <div style="display: inline-block;" class="mt-1 mr-1" >
                                                        <div>
                                                            <i  id="waiting_i" class="fas fa-exclamation-circle" style="color: white;"></i>
                                                        </div>
                                                        
                                                    </div>
                                                    <div style="display: inline-block;">
                                                        <button type="button" class="btn detail_consult_aside_jsonci_class" value="waiting" onclick="js:detail_consult_aside_btn('waiting')">대기실</button>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="mb-2">
                                                <div style="display: flex; justify-content: right;">
                                                    <div style="display: inline-block;" class="mt-1 mr-1" >
                                                        <div >
                                                            <i id="treatment_i" class="fas fa-exclamation-circle" style="color: white;"></i>
                                                        </div>
                                                    </div>
                                                    <div style="display: inline-block;">
                                                        <button type="button" class="btn detail_consult_aside_jsonci_class"  value="treatment" onclick="js:detail_consult_aside_btn('treatment')">진료실</button>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="mb-2">
                                                <div style="display: flex; justify-content: right;">
                                                    <div style="display: inline-block;" class="mt-1 mr-1" >
                                                        <div >
                                                            <i id="disinfection_i" class="fas fa-exclamation-circle" style="color: white;"></i>
                                                        </div>
                                                    </div>
                                                    <div style="display: inline-block;">
                                                        <button type="button" class="btn detail_consult_aside_jsonci_class" value="disinfection" onclick="js:detail_consult_aside_btn('disinfection')">소독실</button>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="mb-2">
                                                <div style="display: flex; justify-content: right;">
                                                    <div style="display: inline-block;" class="mt-1 mr-1" >
                                                        <div>
                                                            <i id="machine_i" class="fas fa-exclamation-circle" style="color: white;"></i>
                                                        </div>
                                                    </div>
                                                    <div style="display: inline-block;">
                                                        <button type="button" class="btn detail_consult_aside_jsonci_class" value="machine" onclick="js:detail_consult_aside_btn('machine')">기계실</button>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- 상세 선택 부분 -->
                                <div style="display: inline-block; width: 85%;">
                                    <!-- 내부 사항 어사이드 바에 따라 변경됨 -->
                                    <!-- 종합  -->
                                    <div class="mx-auto mt-5 mb-5" style="width: 90%;" id="dcajcall">
                                        <div class="mb-4">
                                            <div style=" font-family: 'MinSans-Bold'; font-size: 25px; padding-bottom: 20px; line-height: 120%;">
                                                원하는 추가 시공을 모두 골라주세요.<br/>
                                                <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">시공분야는 전문가와 조율 가능합니다.</span> 
                                            </div>
                                            <div>
                                                <div>
                                                    <div style="display: flex;">
                                                        <label class="detail_consult_Rooms">
                                                            <input type="checkbox" name="allSideRoom" value="수술실">
                                                            <span style="border-top-left-radius: 10px;" class="allSideRoom_span">
                                                                <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/treatmentRoom.png" width="100px">
                                                                </div>
                                                                수술실
                                                            </span>
                                                        </label>
                                                        <label class="detail_consult_Rooms">
                                                            <input type="checkbox" name="allSideRoom" value="X-ray실">
                                                            <span class="allSideRoom_span">
                                                                <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/xrayRoom.png" width="100px">
                                                                </div>
                                                                X-ray실
                                                            </span>
                                                        </label>
                                                        <label class="detail_consult_Rooms">
                                                            <input type="checkbox" name="allSideRoom" value="원장실">
                                                            <span style="border-top-right-radius: 10px;" class="allSideRoom_span">
                                                                <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/direcotorRoom.png" width="100px">
                                                                </div>
                                                                원장실
                                                            </span>
                                                        </label>
                                                    </div>
                                
                                                    <div style="display: flex;">
                                                        <label class="detail_consult_Rooms">
                                                            <input type="checkbox" name="allSideRoom" value="상담실">
                                                            <span style="border-bottom-left-radius: 10px;" class="allSideRoom_span">
                                                                <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/consultinfRoom.png" width="100px">
                                                                </div>
                                                                상담실
                                                            </span>
                                                        </label>
                                                        <label class="detail_consult_Rooms">
                                                            <input type="checkbox" name="allSideRoom" value="메이크업실">
                                                            <span  class="allSideRoom_span">
                                                                <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/makeup.png" width="100px">
                                                                </div>
                                                                메이크업실
                                                            </span>
                                                        </label>
                                                        <label class="detail_consult_Rooms">
                                                            <input type="checkbox" name="allSideRoom" value="화장실">
                                                            <span style="border-bottom-right-radius: 10px;" class="allSideRoom_span">
                                                                <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/restRoom.png" width="100px">
                                                                </div>
                                                                화장실
                                                            </span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- 평수 정하기 -->
                                            <div class="my-4">
                                                <div style=" font-family: 'MinSans-Bold'; font-size: 20px; padding-bottom: 20px; line-height: 120%; display: flex; justify-content: space-between; width: 95%;">
                                                    <div style="display: inline-block;">
                                                        평수-공급면적<br/>
                                                        <span style="font-size: 15px; color:#272723; font-family: 'MinSans-Regular';">대략적인 평수를 알려주세요</span> 
                                                    </div>
                                                    <div style="display: inline-block;">
                                                        <span style="color: #80807a; font-size: 18px;" id="acreageResult"></span>
                                                    </div>
                                                   
                                                </div>
                                                <div style="width: 100%;" class="px-auto">
                                                    <div style="width: 90%;" class="mx-auto">
                                                        <input type="range" class="form-control-range" style="width: 640px;" min="${mainConsult.consultAcreage}" id="acreageRange" name="acreage">
                                                    </div>
                                                    <div style="justify-content: space-between; width: 90%; display:flex;" class="mx-auto">
                                                        <div style="display: inline-block;">${mainConsult.consultAcreage}평</div>
                                                        <div style="display: inline-block;" id="rangeMax"></div>
                                                    </div>
                                                </div>
                                                <script>
                                                    //빠른 상담에서 선택한 평수를 반영
                                                    var min = $("#acreageRange").attr("min");
                                                    console.log(min);
                                                    var minInt = parseInt(min);
                                                    var max = minInt+19;
                                                    $("#acreageRange").attr("max",max);
                                                    $("#rangeMax").html(max + "평");
                                                </script>
                                            </div>
                                        </div>
                                        <div>
                                            <div>
                                                <p style="font-family: 'MinSans-Medium';">전체톤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <i style="color: white;" class="fas fa-pen" id="all_allRoomTone_i"></i>&nbsp;<span class="detail_null_span" id="all_allRoomTone_span"></span>
                                                </p>
                                                <div>
                                                    <div style="display: flex;">
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="black">
                                                            <span class="mr-3" style="background-color: black;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="white">
                                                            <span class="mr-3"  style="background-color: white;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="beige">
                                                            <span class="mr-3" style="background-color: beige">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="wheat">
                                                            <span class="mr-3" style="background-color: wheat;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="brown">
                                                            <span class="mr-3" style="background-color: brown;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="red">
                                                            <span class="mr-3" style="background-color: red;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="pink">
                                                            <span class="mr-3" style="background-color: pink;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="yellow">
                                                            <span class="mr-3" style="background-color: yellow;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="lightGreen">
                                                            <span class="mr-3" style="background-color: darkseagreen;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="lightblue">
                                                            <span class="mr-3" style="background-color: lightblue;">
                                                            </span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <p style="font-family: 'MinSans-Medium';">벽 바닥 컬러</p>
                                                <div style="font-family: 'MinSans-Regular';">
                                                    <p>벽&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <i style="color: white;" class="fas fa-pen" id="all_wallpaperTone_i"></i>&nbsp;<span class="detail_null_span" id="all_wallpaperTone_span"></span>
                                                    </p>
                                                    <div>
                                                        <div style="display: flex;">
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="black">
                                                                <span class="mr-3" style="background-color: black;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie ">
                                                                <input type="radio" name="wallpaperTone" value="white">
                                                                <span class="mr-3"  style="background-color: white;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie ">
                                                                <input type="radio" name="wallpaperTone" value="beige">
                                                                <span class="mr-3" style="background-color: beige">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie ">
                                                                <input type="radio" name="wallpaperTone" value="wheat">
                                                                <span class="mr-3" style="background-color: wheat;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="brown">
                                                                <span class="mr-3" style="background-color: brown;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="red">
                                                                <span class="mr-3" style="background-color: red;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie ">
                                                                <input type="radio" name="wallpaperTone" value="pink">
                                                                <span class="mr-3" style="background-color: pink;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="yellow">
                                                                <span class="mr-3" style="background-color: yellow;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="lightGreen">
                                                                <span class="mr-3" style="background-color: darkseagreen;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="lightblue">
                                                                <span class="mr-3" style="background-color: lightblue;">
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <p>바닥&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <i style="color: white;" class="fas fa-pen" id="all_floorTone_i"></i>&nbsp;<span class="detail_null_span" id="all_floorTone_span"></span></p>
                                                    </p>
                                                    <div>
                                                        <div style="display: flex;">
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="black">
                                                                <span class="mr-3" style="background-color: black;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="white">
                                                                <span class="mr-3"  style="background-color: white;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="beige">
                                                                <span class="mr-3" style="background-color: beige">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="wheat">
                                                                <span class="mr-3" style="background-color: wheat;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="brown">
                                                                <span class="mr-3" style="background-color: brown;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="red">
                                                                <span class="mr-3" style="background-color: red;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="pink">
                                                                <span class="mr-3" style="background-color: pink;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="yellow">
                                                                <span class="mr-3" style="background-color: yellow;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="lightGreen">
                                                                <span class="mr-3" style="background-color: darkseagreen;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="lightblue">
                                                                <span class="mr-3" style="background-color: lightblue;">
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 대기실 -->
                                    <div class="mx-auto mt-5 mb-5" style="width: 90%;" id="dcajcwaiting">
                                        <div class="mb-5">
                                            <p class="wating_choice_title">도배&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="waiting_papering_i"></i>&nbsp;<span class="detail_null_span" id="waiting_papering_span"></span></p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_papering" value="실크">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                                                        실크
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_papering" value="합지">
                                                    <span class="waiting_papering">
                                                        합지
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_papering" value="실크&합지">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                                                        실크&합지
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">바닥&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="waiting_flooring_i"></i>&nbsp;<span class="detail_null_span" id="waiting_flooring_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="장판">
                                                    <span style="border-radius: 10px 0 0 0;" class="waiting_flooring ">
                                                        장판
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="강화마루">
                                                    <span class="waiting_flooring ">
                                                        강화마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="강마루">
                                                    <span style="border-radius: 0 10px 0 0;" class="waiting_flooring">
                                                        강마루
                                                    </span>
                                                </label>   
                                            </div>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="원목마루">
                                                    <span style="border-radius: 0 0 0 10px;" class="waiting_flooring">
                                                        원목마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="포세린타일">
                                                    <span class="waiting_flooring">
                                                        포세린타일
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="천연대리석">
                                                    <span style="border-radius: 0 0 10px 0;" class="waiting_flooring ">
                                                        천연대리석
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="waiting_choice_title">조명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen"id="waiting_light_i"></i>&nbsp;<span class="detail_null_span" id="waiting_light_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="remodeling_light">
                                                    <input type="radio" name="waiting_light" value="실링라이트">
                                                    <span style="border-radius: 10px 0 0 10px;">
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 250px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/sling.jpg" width="250px" height="120px">
                                                        </div>
                                                        실링라이트
                                                    </span>
                                                </label>
                                                <label class="remodeling_light">
                                                    <input type="radio" name="waiting_light" value="다운라이트">
                                                    <span style="border-radius: 0 10px 10px 0;">
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 250px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/down.jpg" width="250px" height="120px">
                                                        </div>
                                                        다운라이트
                                                    </span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">가구&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="waiting_furniture_i"></i>&nbsp;<span class="detail_null_span" id="waiting_furniture_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_furniture" value="쇼파">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                                                        쇼파
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="waiting_furniture" value="의자">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                                                        의자
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 진료실 -->
                                    <div class="mx-auto mt-5 mb-5" style="width: 90%;" id="dcajctreatment">
                                        <div class="mb-5">
                                            <p class="wating_choice_title">도배&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="treatment_papering_i"></i>&nbsp;<span class="detail_null_span" id="treatment_papering_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_papering" value="실크">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_papering ">
                                                        실크
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_papering" value="합지">
                                                    <span class="waiting_papering">
                                                        합지
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_papering" value="실크&합지">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_papering " >
                                                        실크&합지
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">바닥&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="treatment_flooring_i"></i>&nbsp;<span class="detail_null_span" id="treatment_flooring_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="장판">
                                                    <span style="border-radius: 10px 0 0 0;" class="waiting_flooring">
                                                        장판
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="강화마루">
                                                    <span class="waiting_flooring">
                                                        강화마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="강마루">
                                                    <span style="border-radius: 0 10px 0 0;" class="waiting_flooring ">
                                                        강마루
                                                    </span>
                                                </label>   
                                            </div>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="원목마루">
                                                    <span style="border-radius: 0 0 0 10px;" class="waiting_flooring">
                                                        원목마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="포세린타일">
                                                    <span class="waiting_flooring">
                                                        포세린타일
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="천연대리석">
                                                    <span style="border-radius: 0 0 10px 0;" class="waiting_flooring">
                                                        천연대리석
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">조명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="treatment_lighte_i"></i>&nbsp;<span class="detail_null_span" id="treatment_light_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="remodeling_light">
                                                    <input type="radio" name="treatment_light" value="실링라이트">
                                                    <span style="border-radius: 10px 0 0 10px;" >
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 250px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/sling.jpg" width="250px" height="120px">
                                                        </div>
                                                        실링라이트
                                                    </span>
                                                </label>
                                                <label class="remodeling_light">
                                                    <input type="radio" name="treatment_light" value="다운라이트">
                                                    <span style="border-radius: 0 10px 10px 0;" >
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 250px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/down.jpg" width="250px" height="120px">
                                                        </div>
                                                        다운라이트
                                                    </span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">구조&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="treatment_structure_i"></i>&nbsp;<span class="detail_null_span" id="treatment_structure_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_structure" value="개방형">
                                                    <span style="border-radius: 10px 0 0 0;" class="waiting_furniture">
                                                        개방형
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="treatment_structure" value="반개실형">
                                                    <span style="border-radius: 0 10px 0 0;" class="waiting_furniture">
                                                        반개실형
                                                    </span>
                                                </label>   
                                            </div>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_structure" value="개실형">
                                                    <span style="border-radius: 0 0 0 10px;" class="waiting_furniture">
                                                        개실형
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="treatment_structure" value="혼용형">
                                                    <span style="border-radius: 0 0 10px 0;" class="waiting_furniture">
                                                        혼용형
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">유니트 체어 개수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="treatment_unite_i"></i>&nbsp;<span class="detail_null_span" id="treatment_unite_span"></span>
                                            </p>
                                            <div>
                                                <input type="number" style="border: none; border-bottom: 2px solid #272723; outline:none; width: 100px;" placeholder="입력" name="treatment_unite" min="0" max="10">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 소독실 -->
                                    <div class="mx-auto mt-5 mb-5" style="width: 90%;" id="dcajcdisinfection">
                                        <div class="mb-5">
                                            <p class="wating_choice_title">창고 분리 여부도배&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="disinfection_warehouse_sq_i"></i>&nbsp;<span class="detail_null_span" id="disinfection_warehouse_sq_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="disinfection_warehouse_sq" value="분리형">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                                                        분리형
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="disinfection_warehouse_sq" value="통합형">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                                                        통합형
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">수도 설치 유무도배&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="disinfection_capital_i"></i>&nbsp;<span class="detail_null_span" id="disinfection_capital_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="disinfection_capital" value="설치">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                                                        설치
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="disinfection_capital" value="미설치">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                                                        미설치
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div>
                                            <p class="wating_choice_title">멸균기, 세척기 개수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="disinfection_machin_i"></i>&nbsp;<span class="detail_null_span" id="disinfection_machin_span"></span>
                                            </p>
                                            <div>
                                                <input type="number" style="border: none; border-bottom: 2px solid #272723; outline:none; width: 100px;" placeholder="입력" name="disinfection_machin" min="0" max="10">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 기계실 -->
                                    <div class="mx-auto mt-5 mb-5" style="width: 90%;" id="dcajcmachine">
                                        <div class="mb-5">
                                            <p class="wating_choice_title">도배&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="machine_papering_i"></i>&nbsp;<span class="detail_null_span" id="machine_papering_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_papering" value="실크">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                                                        실크
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_papering" value="합지">
                                                    <span class="waiting_papering">
                                                        합지
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_papering" value="실크&합지">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                                                        실크&합지
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">바닥&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="machine_flooring_i"></i>&nbsp;<span class="detail_null_span" id="machine_flooring_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="장판">
                                                    <span style="border-radius: 10px 0 0 0;" class="waiting_flooring">
                                                        장판
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="강화마루">
                                                    <span class="waiting_flooring">
                                                        강화마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="강마루">
                                                    <span style="border-radius: 0 10px 0 0;" class="waiting_flooring">
                                                        강마루
                                                    </span>
                                                </label>   
                                            </div>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="원목마루">
                                                    <span style="border-radius: 0 0 0 10px;" class="waiting_flooring">
                                                        원목마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="포세린타일">
                                                    <span class="waiting_flooring">
                                                        포세린타일
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="천연대리석">
                                                    <span style="border-radius: 0 0 10px 0;" class="waiting_flooring">
                                                        천연대리석
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">조명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="machine_light_i"></i>&nbsp;<span class="detail_null_span" id="machine_light_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="remodeling_light">
                                                    <input type="radio" name="machine_light" value="실링라이트">
                                                    <span style="border-radius: 10px 0 0 10px;">
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 250px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/sling.jpg" width="250px" height="120px"/>
                                                        </div>
                                                        실링라이트
                                                    </span>
                                                </label>
                                                <label class="remodeling_light">
                                                    <input type="radio" name="machine_light" value="다운라이트">
                                                    <span style="border-radius: 0 10px 10px 0;">
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 250px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/down.jpg" width="250px" height="120px"/>
                                                        </div>
                                                        다운라이트
                                                    </span>
                                                </label>
                                            </div>
                                        </div>
                                        <div>
                                            <p>기계실 필요 장비[선택]</p>
                                            <div>
                                                <textarea cols="90" rows="5" class="p-2" placeholder="필요한 장비를 입력하면 상담 가격에 참고하겠습니다[가격 반영 x]" id="addRequestchoice"></textarea>
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">수도 설치 유무&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i style="color: white;" class="fas fa-pen" id="machine_capital_i"></i>&nbsp;<span class="detail_null_span" id="machine_capital_span"></span>
                                            </p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_capital" value="설치">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                                                        설치
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="machine_capital" value="미설치">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                                                        미설치
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- 견적 확인 부분 -->
                        <section style="display: inline-block; width:30%;">
                            <div style="width: 100%;" class="mx-auto mt-5">
                                <div style="width: 100%; text-align: right;" class="mb-3">
                                    <button class="btn btn-light" type="button" onclick="js:resetAll()"><i class="fa-solid fa-rotate-left"></i>초기화</button>
                                </div>
                                <div style="width: 100%;">
                                    <div class="bg-dark mb-4 rounded text-white" style="width: 100%; height: 150px; float: right;">
                                        <div style="width: 100%; height: 50%;" class="p-4">
                                            견적 계산 기준이 뭔가요 <button type="button" class="btn pt-0"  onclick="js:info_btn('#consult_finish_btnss')"><i class="fa-solid fa-circle-info text-white"></i></button>  
                                        </div>
                                        <div style="width: 100%; height: 50%; font-size: 25px; font-size: 20px;font-family: 'MinSans-Bold';" class="text-right p-3">
                                           <span id="priceResultmin"></span>
                                           <span id="priceResultSpan">모든 값을 입력해주세요.</span>
                                           <span id="priceResultmax"></span>
                                           <span id="priceResultwon"></span>
                                        </div>
                                    </div>
                                </div>
                                
                                <div style="width: 100%; float: right;" class="text-right" >
                                    <button type="button" class="btn quick_consult_finish_btn" onclick="js:detail_consult_finish_btn()" style="width: 70%; height: 60px;">해당 견적으로 상담신청</button>
                                </div>    
                            </div>
                           
                        </section>
                    </div>
                    <input type="hidden" id="watting_hidden" name="waitingRoom">
                    <input type="hidden" id="treatment_hidden" name="treatmentRoom">
                    <input type="hidden" id="disinfection_hidden" name="disinfectionRoom">
                    <input type="hidden" id="machine_hidden" name="machineRoom">
                    <input type="hidden" id="estimation_hidden" name="consultEstimation">
                    
                </form>
                </div>
            </article>
        </div>
         <script src="${pageContext.request.contextPath}/resources/js/interior_consult_js/detail_consultation.js"></script>
    </main>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
    
   
