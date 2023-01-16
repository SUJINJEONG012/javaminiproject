<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!-- 상단 부분  -->
<c:import url="/WEB-INF/views/include/menu.jsp" />


<div class="container cont-height">

<c:forEach var="sub_list" items="${list}" varStatus="idx">
<h4 class="fw-light">${topMenuList[idx.index].board_info_name}</h4>
	<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
					
			<c:forEach var="obj" items="${sub_list}">
			  <div class="col">
				<div class="card shadow-sm">

                    <a class="cardImg" href="${root }/board/read?board_info_idx=${topMenuList[idx.index].board_info_idx}&content_idx=${obj.content_idx}&page=1"">
                    <img src="${root }upload/${obj.content_file }" width="100%" />
                    </a>
					<div class="card-body">
					   <!-- <p>글번호 ${obj.content_idx }</p> -->
						
						<p class="card-text"><a href="${root }/board/read?board_info_idx=${topMenuList[idx.index].board_info_idx}&content_idx=${obj.content_idx}&page=1">${obj.content_subject }</a></p>
						
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<a class="btn btn-dark"
									href="${root }/board/read?board_info_idx=${topMenuList[idx.index].board_info_idx}&content_idx=${obj.content_idx}&page=1">상세보기
								</a> <a
									href="${root }board/main?board_info_idx=${topMenuList[idx.index].board_info_idx}"
									class="btn btn-primary">더보기</a>
							</div>
							<small class="text-muted" lang="en">${obj.content_date }</small>
						</div>
						
					</div>
					
				</div>
			</div>
	</c:forEach>
					
	</div>
		</c:forEach>
</div>


<!-- 푸터부분  -->
<c:import url="/WEB-INF/views/include/footer.jsp" />