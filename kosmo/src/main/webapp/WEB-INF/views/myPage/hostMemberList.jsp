<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER LIST</title>
<link rel="stylesheet" href="resources/style.css">
<link rel="stylesheet" href="resources/ehddnr.css">
<!-- Favicon -->
<link rel="icon" href="resources/img/core-img/favicon.ico">

<style type="text/css">

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 999; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  z-index: 999;
  background-color: #fefefe;
  margin: 300px auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 200px; /* Could be more or less, depending on screen size */
}

/* The Close Button */ 
.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}
</style>

</head>
<body>
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="preloader-circle"></div>
		<div class="preloader-img">
			<img src="resources/img/core-img/leaf.png" alt="">
		</div>
	</div>

	<%@ include file="../setting/header01.jsp"%>


	<!-- ##### Breadcrumb Area Start ##### -->
	<div class="breadcrumb-area">
		<!-- Top Breadcrumb Area -->
		<div
			class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center"
			style="background-image: url(resources/img/member/usermain.jpg);">
			<h2>MEMBER LIST</h2>
		</div>
	</div>
	<!-- ##### Breadcrumb Area End ##### -->
	
	<br>
	<br>
	
	<script type="text/javascript">
		function out() {
			var confirm = confirm("Really Out this user?");
			
			if (!confirm) {
				return false;
			}
		}
	</script>
	
	<div class="container">
		<form name=memberSearchForm action="memberSearch" method="post" style="min-width: 350px; display: inline-block;">
			<div class="knowledge_select">
				<input class=knowledge_select2 type="text" maxlength="30"
						name="search" id="search" placeholder="input keyword">
				<input class="knowledge_select3" id="SearchButton" type="submit" value="SEARCH">
			</div>
		</form>
		<hr>
		<div class="row">
			<c:forEach var="uvo" items="${uvos}">
				<form>
					<input type="hidden" value="${uvo.memberEmail}" id="hiddenMemberEmail">
				</form>
			
				<div class="col-xs-12 col-sm-12 col-md-6">
	            <div class="well well-sm card" style="border-color: #70c745 !important;margin:5px !important;">
	                <div class="row">
	                    <div class="col-sm-6 col-md-4">
	                        <img src="resources/img/member/noimage.jpg" alt="" class="img-rounded img-responsive" />
	                    </div>
	                    <div class="col-sm-6 col-md-8">
	                        <h4>${uvo.memberId}</h4>
	                        <small><cite title="${uvo.memberCountry}">${uvo.memberCountry}<i class="glyphicon glyphicon-map-marker">
	                        </i></cite></small>
	                        <p>
	                            <i class="glyphicon glyphicon-envelope"></i>Email : ${uvo.memberEmail}
	                            <br/>
	                            <i class="glyphicon glyphicon-globe"></i>Point : ${uvo.memberPoint} 
	                            <br />
	                            <i class="glyphicon glyphicon-gift"></i>Regdate : <fmt:formatDate pattern="yyyy-MM-dd" value="${uvo.memberRegdate}"/></p>
	                  
	                            <!-- The Modal -->
								<div id="myModal" class="modal">
									<!-- Modal content -->
									<div class="modal-content">
										<h5 id="innerModal" align='center'></h5><br>
										<a><button type="button" id="disqualifyUser" class='btn alazea-btn'>DISQAULIFY</button></a>
										<br>
										<a><button type="button" id="closeModal" class='btn alazea-btn'>CLOSE</button></a>
									</div>
								</div>
								
								<!-- Modal2 -->
								<div id="myModal2" class="modal">
									<!-- Modal content -->
									<div class="modal-content">
										<h5 id="innerModal2" align='center'></h5><br>
										<a><button type="button" id="closeModal2" class='btn alazea-btn'>CLOSE</button></a>
									</div>
								</div>
								
							<script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
							<script>
							
								function disqualifyConfirm() {
			
										var modal = document.getElementById('myModal');
										var btn = document.getElementById("disqualifyBtn");
										var span = document.getElementById("closeModal");
										var email = $('#hiddenMemberEmail').val();
										
										var modal2 = document.getElementById('myModal2');
										var span2 = document.getElementById("closeModal2");
										
										span.onclick = function() {
											modal.style.display = "none";
										}
										
										window.onclick = function(event) {
											if (event.target == modal) {
												modal.style.display = "none";
											}
										}
										
										$('#innerModal').html("Do you really want disqualify this user? <br><br>" + "<b>" + email + "</b>");
										modal.style.display = "block";
										
										$('#disqualifyUser').click(function() {
											$.ajax({
												url : 'disqualifyConfirm',
												data : 'memberEmail=' + email,
												type : 'POST',
												success : function(updateCnt) {
													
													if(updateCnt == 1) {
														modal.style.display = "none";
														modal2.style.display = "block";
														
														$('#innerModal2').html(email + "is disqualified");
														
														span2.onclick = function() {
															modal2.style.display = "none";
															window.location.reload();
														}
														
														window.onclick = function(event) {
															if (event.target == modal2) {
																modal2.style.display = "none";
																window.location.reload();
															}
														}
														
													}
													
												},
												error : function() {
													alert("오류");
												}
											});
										});
								}
							</script>
							
	                        <!-- Split button -->
	                        <div class="btn-group" style="float: right">
	                            <button type="button" id="disqualifyBtn" class="btn btn-warning btn-sm"  onclick="disqualifyConfirm();">Disqualify</button>
	                            <button type="button" class="btn btn-sm" style="background-color: #70c745!important; color:white">Message</button>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
			</c:forEach>
		</div>


		<nav aria-label="Page navigation" style="margin-top: 30px;"align="center">
			<ul class="pagination" align="center" style="margin: auto auto;">
				<c:if test="${cnt>0}">
				
					<c:if test="${startPage > pageBlock }">
						<li class="page-item"><a class="page-link"
							href="hostMemberList"><i
								class="fa fa-angle-left"></i><i class="fa fa-angle-left"></i></a></li>
						<li class="page-item"><a class="page-link"
							href="hostMemberList?pageNum=${startPage-pageBlock}"><i
								class="fa fa-angle-left"></i></a></li>
					</c:if>

					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i == currentPage}">
							<li class="page-item"><a class="page-link"
								style="background-color: #28a745 !important; color: white !important">${i}</a></li>
						</c:if>
						<c:if test="${i!=currentPage}">
							<li class="page-item"><a class="page-link"
								href="hostMemberList?pageNum=${i}">${i}</a></li>
						</c:if>
					</c:forEach>

					<c:if test="${pageCount > endPage }">
						<li class="page-item"><a class="page-link"
							href="hostMemberList?pageNum=${startPage + pageBlock}"><i
								class="fa fa-angle-right"></i></a></li>
						<li class="page-item"><a class="page-link"
							href="hostMemberList?pageNum=${pageCount}"><i
								class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a></li>
					</c:if>
				</c:if>
			</ul>
		</nav>
	<hr>
	
	<br>

	<div class="search_by_terms" align="center">
		<button type="button" class="btn alazea-btn" onclick="window.location.href='adminPage';">BACK</button>
	</div>

	<br>
	<br>
	<br>
	</div>
	<%@ include file="../setting/footer01.jsp"%>
</body>
</html>