<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath}/" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>JEONG SUJIN 프로젝트</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://getbootstrap.kr/docs/5.2/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="${root }css/reset.css" />
<link rel="stylesheet" href="${root }css/common.css" />
<link rel="stylesheet" href="${root }css/layout.css" />



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<body>

	<header class="p-3 text-bg-dark">


		<div class="container">
			<div
				class="d-flex justify-content-between">

				<a
					class="d-flex text-white logo"
					href="${root}" lang="en">JEONG SUJIN 프로젝트</a>

				<ul
					class="nav col-6 mb-2">
					<c:forEach var="menu" items="${topMenuList }">
						<li class="nav-link px-2 text-white"><a
							href="${root }board/main?board_info_idx=${menu.board_info_idx }"
							class="">${menu.board_info_name }</a></li>
					</c:forEach>

				</ul>


				<div class="text-end">


					<c:choose>

						<c:when test="${loginUserBean.userLogin ==  true}">
							<ul class="nav">
								<li class="nav-link "><a href="${root }user/modify"
									class="">정보수정</a></li>
								<li class="nav-link"><a href="${root }user/logout"
									class="">로그아웃</a></li>
							</ul>
						</c:when>

						<c:otherwise>
							<ul class="nav">
								<li class="nav-link me-2"><a
									href="${root}user/login" class="">로그인</a></li>
								<li class="nav-link"><a
									href="${root }user/join" class="">회원가입</a></li>
							</ul>
						</c:otherwise>

					</c:choose>



				</div>


			</div>
		</div>
	</header>