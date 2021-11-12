<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>악세사리 쇼핑몰</title>

<%
	int whereOrder = Integer.parseInt(request.getParameter("whereOrder"));     
%>
	<c:set var="whereOrder" value="<%=whereOrder%>"/> <!-- 어디서 구매하기를 눌렀는지 -->

	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

	<!-- Custom styles for this template -->
	<link type="text/css" href="${pageContext.request.contextPath}/resources/css/shop-homepage.css" rel="stylesheet">

</head>
<body>
	 <c:if test="${userForm == null}">
	 	<script>
	 		alert("권한이 없습니다.");
			location.href = "/bbs/home";
		</script>
	 </c:if>
           
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg bg-light navbar-light fixed-top">
  		<div class="container">
    		<a class="navbar-brand" href="/bbs/home">♥ACCESSORY♥</a>
    		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      			<span class="navbar-toggler-icon"></span>
    		</button>
	    	<div class="collapse navbar-collapse" id="navbarResponsive">
		      	<ul class="navbar-nav ml-auto">
		      		<c:if test="${userForm == null }">          
						<li class="nav-item">
		  					<a class="nav-link" href="/user/login">로그인
		    					<span class="sr-only">(current)</span>
		  					</a>
						</li>
						<li class="nav-item">
		  					<a class="nav-link" href="/user/join">회원가입</a>
						</li>          
					</c:if>
					<c:if test="${userForm != null && userForm.isManager==0 }">
		 				<li class="nav-item">
		   					<a class="nav-link" href="/user/userView?userID=${userForm.userID}">내정보</a>
		 				</li>
		 				<li class="nav-item">
		   					<a class="nav-link" href="/cart/cartBbs?cartNum=1">장바구니</a>
						</li>
						<li class="nav-item">
		    				<a class="nav-link" href="/order/orderBbs?orderNum=1">주문조회</a>
						</li>
						<li class="nav-item">
		    				<a class="nav-link" href="/user/Logout">로그아웃</a>
						</li>
					</c:if>          
					<c:if test="${userForm != null && userForm.isManager==1 }">
						<li class="nav-item">
					   		<a class="nav-link" href="/user/userList?userNum=1">회원 관리</a>
						</li>
						<li class="nav-item">
					   		<a class="nav-link" href="/order/userOrder?userOrderNum=1">주문 관리</a>
						</li>
						<li class="nav-item">
					   		<a class="nav-link" href="/bbs/bbsWrite">제품 등록</a>
						</li>
						<li class="nav-item">
					    	<a class="nav-link" href="/user/Logout">로그아웃</a>
						</li>
					</c:if>
		      	</ul>
	    	</div>
  		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<br>
				<h1 class="my-4"><img class="d-block img-fluid" width="300" height="100" src="${pageContext.request.contextPath}/resources/img/로고.JPG"></h1>
				<br>
     			<div class="menu">
      				<ul class="accordion">
      					<li><a href="#menu1">귀걸이</a>
      						<ul>
				      			<li><a href="/bbs/bbs?category=1&subCategory=1&num=1">귀걸이</a></li>
				      			<li><a href="/bbs/bbs?category=1&subCategory=2&num=1">피어싱</a></li>
				      			<li><a href="/bbs/bbs?category=1&subCategory=3&num=1">귀찌</a></li>
				      			<li><a href="/bbs/bbs?category=1&subCategory=4&num=1">이어커프</a></li>
				      		</ul>
				      	</li>
				      	<li><a href="#menu2">목걸이</a>
				      		<ul>
				      			<li><a href="/bbs/bbs?category=2&subCategory=1&num=1">목걸이</a></li>
				      			<li><a href="/bbs/bbs?category=2&subCategory=2&num=1">초커</a></li>
				      			<li><a href="/bbs/bbs?category=2&subCategory=3&num=1">패션 목걸이</a></li>
				      		</ul>
				      	</li>
				      	<li><a href="#menu3">반지</a>
				      		<ul>
				      			<li><a href="/bbs/bbs?category=3&subCategory=1&num=1">반지</a></li>
				      			<li><a href="/bbs/bbs?category=3&subCategory=2&num=1">은반지</a></li>
				      			<li><a href="/bbs/bbs?category=3&subCategory=3&num=1">금반지</a></li>
				      		</ul>
				      	</li>
				      	<li><a href="#menu4">팔찌</a>
				      		<ul>
				      			<li><a href="/bbs/bbs?category=4&subCategory=1&num=1">팔찌</a></li>
				      			<li><a href="/bbs/bbs?category=4&subCategory=2&num=1">가죽 팔찌</a></li>
				      			<li><a href="/bbs/bbs?category=4&subCategory=3&num=1">원석 팔찌</a></li>
				      			<li><a href="/bbs/bbs?category=4&subCategory=4&num=1">은 팔찌</a></li>
				      		</ul>
				      	</li>
					</ul>
				</div>				
			</div>
			<!-- /.col-lg-3 -->
			
			<div class="col-lg-8">
	   		<br>
	   			<div id="carouselExampleIndicators">
		   			<table class="table" style="text-align:center;">
							<tr>
								<th colspan=7>주문 목록</th>
							</tr>
							<tr>
								<td>이미지</td>
								<td>제품 정보</td>
								<td>가격</td>
								<td>수량</td>
								<td>합계</td>
							</tr>
							<tbody id = tbody>
							</tbody>
						</table>		
						<div class="container">
							<form id="orderForm" name="orderForm">
								<table class="table" style="border:1px solid #dddddd">
									<colgroup>
										<col width="30%">
										<col width="*%">
										<col width="15%">
									</colgroup>
									<tr>
										<th colspan=3 style="background-color:#d3d3d3; text-align:center;">상품 주문</th>
									</tr>
									<tbody id="tOrder">
										<tr>
											<th>수령인</th>
											<td colspan=2><input id="orderName" name="orderName" value=""  class="tbox" size="10" maxlength="30" /></td>
										</tr>
										<tr>
											<th>폰번호</th>
											<td colspan=2><input id="phoneNumber" name="phoneNumber" value=""  class="tbox" size="15" maxlength="30" /></td>
										</tr>	
										<tr>
											<th>우편번호</th>
											<td><input type="text" id="addr1" name="addr1" class="form-control" placeholder="주소"/></td>
											<td><input type="button" onClick="goPopup();" value="주소 검색"/></td>								
										</tr>
										<tr>
											<th>주소</th>
											<td><input type="text" id="addr2" name="addr2" class="form-control" placeholder="주소"/></td>
										</tr>
										<tr>
											<th>상세주소</th>
											<td colspan=2><input type="text" id="addr3" name="addr3" value=""  class="tbox" size="40" maxlength="30" /></td>
										</tr>	
										<tr>
											<th>주문 요청 사항</th>
											<td colspan=2><input type="text" id="orderMemo" name="orderMemo" value=""  class="tbox" size="40" height="30" maxlength="30" /></td>
										</tr>	
										<tr>
											<td colspan=3 style="text-align:center;">
												<button type="button" class="btn btn-primary" onclick="javascript:bbsList();">목록</button>
												<button type="button" class="btn btn-primary" onclick="javascript:OrderWrite();">주문</button>
											</td>
										</tr>
									</tbody>
								</table>
								<input type="hidden" id="whereOrder" name="whereOrder" value="${whereOrder}"/>
								<input type="hidden" id="userID" name="userID" value="${userForm.userID}"/>
							</form>		
						</div>	
				</div>
			</div>
			<!-- /.col-lg-9 -->
		</div>
   		<!-- /.row -->
	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-light">
	  <div class="container">
	    <p class="m-0 text-center text-dark">Copyright &copy; Accessory ShoppingMall 2020</p>
	  </div>
	  <!-- /.container -->
	</footer>
	
	<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/orderWrite.js"></script>
</body>

</html>
