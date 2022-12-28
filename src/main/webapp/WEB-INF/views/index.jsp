<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>

    <!-- 상단 부분  -->
	<c:import url="/WEB-INF/views/include/menu.jsp" />
	<!-- 게시판 미리보기 부분 -->
	<div class="container" style="margin-top: 100px">
		<div class="row">
			
			<div class="col-lg-6" style="margin-top: 20px">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">자유게시판</h4>
						<table class="table table-hover" id="board_list">
							<thead>
								<tr>
									<th class="text-center w-25">글번호</th>
									<th>제목</th>
									<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">5</td>
									<th><a href="${root }board/read">제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href="board_read.html">제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href="board_read.html">제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href="board_read.html">제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href="board_read.html">제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
							</tbody>
						</table>

						<a href="${root }board/main" class="btn btn-primary">더보기</a>
					</div>
				</div>
			</div>
			
			
			
			<div class="col-lg-6" style="margin-top: 20px">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">유머게시판</h4>
						<table class="table table-hover">
							<thead>
								<tr>
									<th class="text-center w-25">글번호</th>
									<th>제목</th>
									<th class="text-center w-25 d-none d-xl-table-cell">작성날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">5</td>
									<th><a href="board_read.html">제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href="board_read.html">제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href="board_read.html">제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href="board_read.html">제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
								<tr>
									<td class="text-center">5</td>
									<th><a href="board_read.html">제목입니다</a></th>
									<td class="text-center d-none d-xl-table-cell">2018-12-12</td>
								</tr>
							</tbody>
						</table>

						<a href="board_main.html" class="btn btn-primary">더보기</a>
					</div>
				</div>
			</div>
			
			
		
	
		</div>
	</div>
	<!-- 푸터부분  -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />