<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href='https://fonts.googleapis.com/css?family=Cabin+Condensed:700' rel='stylesheet' type='text/css'>
<style>
/* 메인홈 */
.main-nav-list a {
 text-decoration: none; color: black;
 padding-left: 0;
}
.main_nav_list_icon{
display: inline-block; width: 30px; height: 30px; border-radius: 15px;
}
#main_nav_list_icon_home {
background-color: #272723;
}
#main_nav_list_icon_interior{
background-color: #6a6a6a;
}
#main_nav_list_icon_product{
background-color: #6a6a6a;
}
#main_nav_list_icon_news{
background-color: #6a6a6a;
}
.main_nav_list_icon i {
color: white;
padding-top: 7px;
}
.main_nav_list hr {
 margin-left: 0; padding-left: 0;
 margin-right: 0; padding-right: 0;
}
.main_home_ads{
background-color: white; width: 600px; height: 300px; position: relative; box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.2);
 z-index: 2;
}
.main_home_ads_a{
position: absolute; 
padding-left:20px; padding-right: 20px; padding-top:10px; padding-bottom:10px;
bottom:0; background-color: rgba(0,0,0,.2); text-decoration: none; color: black; border-top-right-radius: 10px;
}
.main_home_ads_a:hover{
text-decoration: none; color: black;
}

/* 인테리어 */
#portfolio_model_wrap{margin: 0 auto; font-family: 'MinSans-Regular';}
.portfolio_dental_content_cnt{font-size:14px; color:#7c7c7c;}
.portfolio_dental_content_cnt_p{line-height: 0; margin:0; padding:0;}
.portfolio_dental_content_b{line-height: 3;}
.portfolio_dental_content_sm{line-height: 1;}
.portfolio_dental_content_sm span{background-color: rgba(0,0,0,.2); border-radius: 10px; padding: 0 5px;}
.portfolio_dental_content_img{width: 350px; height: 200px;}
.portfolio_dental_content{
	width: 350px;
	background-color:white;
}
.portfolio_dental_content_a{
	text-decoration: none; color: black;
}
.portfolio_dental_content_a:hover{
	text-decoration: none; color: black;
}
.ocean { 
	height: 5%;
	width:100%;
	position:absolute;
	bottom:0;
	left:0;
	background: #015871;
	}
	
	.wave {
	background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/85486/wave.svg) repeat-x; 
	position: absolute;
	top: -198px;
	width: 6400px;
	height: 198px;
	animation: wave 7s cubic-bezier( 0.36, 0.45, 0.63, 0.53) infinite;
	transform: translate3d(0, 0, 0);
	}
	
	.wave:nth-of-type(2) {
	top: -175px;
	animation: wave 7s cubic-bezier( 0.36, 0.45, 0.63, 0.53) -.125s infinite, swell 7s ease -1.25s infinite;
	opacity: 1;
	}
	
	@keyframes wave {
	0% {
	    margin-left: 0;
	}
	100% {
	    margin-left: -1600px;
	}
	}
	
	@keyframes swell {
	0%, 100% {
	    transform: translate3d(0,-25px,0);
	}
	50% {
	    transform: translate3d(0,5px,0);
	}
	}
</style>
<main class="pt-5 pb-5 d-flex" id="main_content_wrap" style="background-color: #faf9f6; font-family: 'MinSans-Regular'; height: 837px; position: relative;">
	<div class="ocean" style="margin: 0; padding: 0; position: absolute; bottom: 0; display: none; z-index: 50;">
        <div class="wave"></div>
        <div class="wave"></div>
    </div>
	<aside id="mainNav" class="text-center" style="flex-grow: 1; margin: auto 0;">
		<ul class="main_nav_list" style="list-style:none; text-decoration: none; color: black; margin-left: 0; padding-left: 0; position: relative; z-index: 60;">
			<li class="d-flex" id="main_nav_home">
				<hr style="border: thin solid black; width: 50px"/>
				<div class="main_nav_list_icon" id="main_nav_list_icon_home"><i class="fa-solid fa-house"></i></div>
				<a id="main_nav_list_home" class="btn">
					<span style="color: #272723">HOME</span>
				</a>
			</li>
			
			<li class="d-flex" id="main_nav_interior">
				<hr style="border: thin solid black; width: 50px; visibility: hidden;"/>
				<div class="main_nav_list_icon" id="main_nav_list_icon_interior"><i class="fa-solid fa-paint-roller"></i></div>
				<a id="main_nav_list_interior" class="btn">
					<span style="color: #6a6a6a;">INTERIOR</span>
				</a>
			</li>
			
			<li class="d-flex" id="main_nav_product">
				<hr style="border: thin solid black; width: 50px; visibility: hidden;"/>
				<div class="main_nav_list_icon" id="main_nav_list_icon_product"><i class="fa-solid fa-tooth"></i></div>
				<a id="main_nav_list_product" class="btn">
					<span style="color: #6a6a6a">PRODUCT</span>
				</a>
			</li>
			<li class="d-flex" id="main_nav_news">
				<hr style="border: thin solid black; width: 50px; visibility: hidden;"/>
				<div class="main_nav_list_icon" id="main_nav_list_icon_news"><i class="fa-solid fa-newspaper"></i></div>
				<a id="main_nav_list_news" class="btn">
					<span style="color: #6a6a6a">NEWS</span>
				</a>
			</li>
		</ul>
	</aside>
	<div style="margin: auto auto; flex-grow: 5">
		<div id="main_home_content" style="display: none;">
			<div class="d-flex">
				<div class="d-flex flex-column">
			 	    <div class="mr-5" style="width: 600px; height: 500px;">
			 	    	<div style="background: url(https://unsplash.it/); color: black">
			 	    		<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					         width="600px" xml:space="preserve"> <!-- height="240px" -->
						      <defs>
						        <pattern id="water" width=".25" height="1.1" patternContentUnits="objectBoundingBox">
						          <path fill="#000" d="M0.25,1H0c0,0,0-0.659,0-0.916c0.083-0.303,0.158,0.334,0.25,0C0.25,0.327,0.25,1,0.25,1z"/>
						        </pattern>
						        
						        <text id="text" transform="translate(2,116)" font-family="'Cabin Condensed'" font-size="80">O'Molaire Osstem</text>
						        
						        <mask id="text-mask">
						          <use x="0" y="0" xlink:href="#text" opacity="1" fill="#b6baba"/>
						        </mask>
						        
						        <g id="eff">
						          <use x="0" y="0" xlink:href="#text" fill="#b6baba"/>
						      
						      <rect class="water-fill" mask="url(#text-mask)" fill="url(#water)" x="-300" y="70" width="1200" height="120" opacity="0.3">
						        <animate attributeType="xml" attributeName="x" from="-300" to="0" repeatCount="indefinite" dur="2s"/>
						      </rect>
						       <rect class="water-fill" mask="url(#text-mask)" fill="url(#water)" y="65" width="1600" height="120" opacity="0.3">
						        <animate attributeType="xml" attributeName="x" from="-400" to="0" repeatCount="indefinite" dur="3s"/>
						      </rect>
						          
						      <rect class="water-fill" mask="url(#text-mask)" fill="url(#water)" y="75" width="800" height="120" opacity="0.3">
						        <animate attributeType="xml" attributeName="x" from="-200" to="0" repeatCount="indefinite" dur="1.4s"/>
						      </rect>
						          <rect class="water-fill" mask="url(#text-mask)" fill="url(#water)" y="75" width="2000" height="120" opacity="0.3">
						        <animate attributeType="xml" attributeName="x" from="-500" to="0" repeatCount="indefinite" dur="2.8s"/>
						      </rect>
						        </g>
						      </defs>
						     
						          <use xlink:href="#eff" opacity="0.9"/>
						    
						    </svg>
			 	    	</div>
			     	    <!-- <b style="font-size: 60px;">O'Molaire Osstem</b> -->
			      	    <p style="font-size: 20px;">치과 종합 인테리어, 국내 최초 다이렉트 인테리어</p>
			      	    <div id="main_content_1">
				      	    <p class="mt-2" style="font-size: 30px; color: #404040;">장비부터 인테리어까지 온라인으로 한번에!<span></span></p>
				      	    <p style="color: #606060;">장비 따로 상담 따로가 아닌 설계, 시공, 장비 A/S 모두를 책임지니까!</p>
				      	    <p style="color: #606060;">전문가가 구성한 트렌디하고 모던한 다양한 스타일로 실패없는 인테리어!</p>
				      	    <p style="color: #606060;">치과장비 A-Z까지 구매와 상담 설치를 동시에!</p>
			      	    </div>
			      	    <div id="main_content_2" style="display: none;">
			      	    	<p class="mt-2" style="font-size: 30px; color: #404040;"><span>개원의 필수 요소</span>인 치과 인테리어</p>
				      	    <p style="color: #606060;">치과 인테리어는 디자인과 기능적 요소가 유기적으로 결합되어야 합니다. 이제는 선택이 아닌 필수 요소인 인테리어를 오몰레어와 시작하십시오.</p>
			      	    </div>
			   	    </div>
			   	    <div class="d-flex">
			   	    	<div><button id="main_before_btn" type="button" style="border: none; background: none; width: 30px;"><i class="fa-solid fa-arrow-left-long"></i></button></div>
				   	    <div class="ml-1" style="width: 50px;">
							<p><span id="main_content_btn_1">01</span>·<span id="main_content_btn_2">02</span></p>
						</div>
						<div><button id="main_next_btn" type="button" style="border: none; background: none; width: 30px;"><i class="fa-solid fa-arrow-right-long"></i></button></div>
			   	    </div>
				</div>
				
		   	    <div class="d-flex flex-column" style="position: relative;">
			   	    <div class="d-flex mb-3 main_home_ads">
			   	    	<div class="d-flex flex-column" style="width: 240px;">
				   	    	<b class="ml-3 mt-5 mb-3" style="font-size: 24px;">오몰레어 인테리어</b>
				   	    	<div class="ml-3 mb-3" style="white-space: pre-line;">치과 종합 인테리어,
				   	    	 인테리어에 영혼을 불어넣다.</div>
				   	    	<p class="ml-3">국내 최초 2년 a/s 보장</p>
			   	    	</div> 
			   	    	<img style="height: 270px; width: 350px; position: absolute; right: 0; bottom: 0; border-top-left-radius: 15px;" src="${pageContext.request.contextPath}/resources/illustration/art_164915725959_5bbc07.jpg">
			   	    	<a class="main_home_ads_a" href="${pageContext.request.contextPath}/goPortfolioDental">바로가기<span style="margin-left: 100px;"><i class="fa-solid fa-arrow-right-to-bracket"></i></span></a>
			   	    </div>
			   	    <div class="d-flex main_home_ads" style="margin-left: 300px;">
			   	    	<div class="d-flex flex-column" style="width: 240px;">
				   	    	<b class="ml-3 mt-5 mb-3" style="font-size: 24px;">오몰레어 치과장비</b>
				   	    	<p class="ml-3">장비 설치부터 a/s까지</p>
				   	    	<div class="ml-3" style="white-space: pre-line;">오몰레어에서 장비 설치부터
				   	    	 관리까지 한번에 하세요!</div>
			   	    	</div>
			   	    	<img style="height: 270px; width: 350px; position: absolute; right: 0; bottom: 0; border-top-left-radius: 15px;" src="${pageContext.request.contextPath}/resources/illustration/k2chair.png">
						<a class="main_home_ads_a" href="${pageContext.request.contextPath}/equipment/dental_equipment_main">바로가기<span style="margin-left: 100px;"><i class="fa-solid fa-arrow-right-to-bracket"></i></span></a>			   	    	
			   	    </div>
			   	    <div style="position: absolute;top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: #ca5c0d; width: 700px; height: 500px; z-index: 0;"></div>        
		   	    </div>
	   	    </div>
		</div>
   	    <div id="main_interior_content" style="display: none;">
	   	    <div class="d-flex">
				<div class="d-flex flex-column">
			 	    <div class="mr-5" style="width: 600px; height: 500px; z-index: 60;">
			     	    <b style="font-size: 60px;">O'Molaire Osstem Interior</b>
			      	    <p style="font-size: 20px;">오스템 인테리어</p>
			      	    <div style="white-space: pre-line; width: 506px; letter-spacing: 1.3px;">
			      	    	오몰레어 인테리어 연구소는 치과 인테리어 회사 중 최대 규모인 35명 전문가로 구성되어 있으며 건축, 실내디자인, 조명, 그래픽등 각 분야의 전문가로 구성되어 고객과의 높은 신뢰를 구축하고 있습니다.
			      	    	
			      	    	또한 고객에게 토탈 솔루션을 제공하기 위해 치과 환경 변화에 따른 디자인 트랜드와 치과만의 디테일 디자인을 지속적으로 연구 개발하고 있습니다.
			      	    </div>
				    </div>
				</div>
		   	    <div class="d-flex">
			   		<ul id="portfolio_dental_content_wrap" class="d-flex text-center" style="padding-left:0px; flex-wrap: wrap; width:800px; z-index: 60;">
			            <c:forEach items="${homeInteriorList}" var="list" begin="0" end="3">
			            	<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px; box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.2);"> 
			                    <a href="${pageContext.request.contextPath}/portfolio_dental/portfolio_dental_detail?ino=${list.ino}" class="portfolio_dental_content_a">
			                        <img class="portfolio_dental_content_img" src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName=${list.imImgPath}"/>
			                        <b class="mt-3 ml-5 mr-5 portfolio_dental_content_b">${list.isummary}</b>
			                        <small class="d-block portfolio_dental_content_sm"><span># ${list.istyle}</span> <span># ${list.allColor}</span></small>
			                    </a>
			                </li>
			            </c:forEach>
		            </ul>
		   	    </div>
		   	 </div>
   	    </div>
   	    <div id="main_product_content" style="display: none;">
   	    	<div class="d-flex">
				<div class="d-flex flex-column">
			 	    <div class="mr-5" style="width: 600px; height: 500px; z-index: 60;">
			     	    <b style="font-size: 60px;">O'Molaire Osstem Medical Equipment</b>
			      	    <p style="font-size: 20px;">오스템 치과장비</p>
			      	    <div style="white-space: pre-line; width: 506px; letter-spacing: 1.3px;">
			      	    	오몰레어는 K5의 전신인 K3는 출시 후 1년만에 국내 최고 판매량을 기록했고, 현재 7년 연속 국내 유니트체어 판매량 1위 자리를 놓치지 않고 있습니다.
			      	    	
			      	    	오스템임플란트의 유니트체어 품질과 기술, 상품성은 이미 시장에서 입증됐으며, 올해 K5의 대대적인 해외 인허가 획득을 통해 글로벌 유니트체어 시장에서 더욱더 맹활약할 것입니다.
			      	    </div>
				    </div>
				</div>
		   	    <div class="d-flex">
			   		 <ul id="portfolio_dental_content_wrap" class="d-flex text-center" style="padding-left:0px; flex-wrap: wrap; width:800px; z-index: 60;">
			            <c:forEach items="${homeProductList}" var="productList" begin="0" end="3">
			            	<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px; box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.2);"> 
			                    <a href="${pageContext.request.contextPath}/equipment/equipment_detail?modelNumber=${productList.modelNumber}" class="portfolio_dental_content_a">
			                        <img class="portfolio_dental_content_img" src="/springframework-mini-project/mainHome/productDisplay?fileName=${productList.pattachoname}"/>
			                        <b class="mt-3 ml-5 mr-5 portfolio_dental_content_b">${productList.productName}</b>
			                        <small class="d-block portfolio_dental_content_sm">subin</small>
			                    </a>
			                </li>
			            </c:forEach>
		            </ul>
		   	    </div>
		   	 </div>
   	    </div>
	   	<div id="main_news_content" style="display: none;">
   	 		<div class="d-flex">
				<div class="d-flex flex-column">
			 	    <div class="mr-5" style="width: 600px; height: 500px; z-index: 60;">
			     	    <b style="font-size: 60px;">O'Molaire Osstem News</b>
			      	    <p style="font-size: 20px;">치과에 최적화된 인테리어로 고객의 눈높이에 맞는 맞춤제안을 제공합니다.</p>
			      	    <div style="white-space: pre-line; width: 506px; letter-spacing: 1.3px;">
			      	    	성공 개원을 위한 파트너! 오몰레어가 디자이하면 다릅니다.
			      	    	신속진행, 시공 품질 보장, 고객 맞춤 디자인, 믿음직한 A/S까지
			      	    	
			      	    	인테리어 접수부터 사후 관리까지 체계적인 프로세스로 운영되어 믿고 맡길 수 있습니다.
			      	    </div>
				    </div>
				</div>
		   	    <div style="z-index: 60;">
					<iframe width="850" height="500" src="https://www.youtube.com/embed/I_XEXqWZPBQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		   	    </div>
		   	 </div>
   	    </div> 
    </div>
    <div id="main_back_round" style="background-color: white; height: 800px; width: 100%; z-index: 50; position: absolute; top:70%; left: 50%; transform: translate(-50%, -50%); border-top-left-radius: 800px; border-top-right-radius: 800px; display: none;"></div>
</main>
<script src="${pageContext.request.contextPath}/resources/js/jsHome.js"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>