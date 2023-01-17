<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>


	<!-- 상단 메뉴부분 -->
	<c:import url="/WEB-INF/views/include/menu.jsp" />

    <!-- 게시글 리스트 -->
    <div class="container cont-height" style="margin-top: 50px">
     
      <div class="d-flex justify-content-between align-items-center">
       <h4 class="card-title py-5">${boardInfoName }</h4>   
       <div class="btn-100"><a href="${root }board/write?board_info_idx=${board_info_idx }" class="black-button">글쓰기</a></div>
          </div>
          
          
      <div class="card shadow">
        <div class="card-body">
        
          
          <table class="table table-hover" id="board_list">
            
            <thead>
              <tr>
                <th class="text-center d-md-table-cell">글번호</th>
                <th class="">제목</th>
              
                <th class="text-center  d-md-table-cell">작성자</th>
                <th class="text-center  d-md-table-cell">작성날짜</th>
              </tr>
            </thead>
            
            
   
            <tbody>
             <c:forEach var="obj" items="${contentList}">
              <tr>
               
                <td class="text-center d-md-table-cell" lang="en">${obj.content_idx }</td>
                 <td><a href="${root }board/read?board_info_idx=${board_info_idx}&content_idx=${obj.content_idx}&page=${page}" >${obj.content_subject }</a></td>
                 
                 
                
                 <td class="text-center  d-md-table-cell">${obj.content_writer_name }</td>
                <td class="text-center  d-md-table-cell" lang="en">${obj.content_date }</td>
              
           
              </tr>
              
			  </c:forEach>      
            </tbody>
       
          </table>
          
          <!-- 페이징처리 -->
          
         
          
         <div class=" d-md-block">
            <ul class="pagination justify-content-center mb-4 mt-4">
            
              <c:choose>
                <c:when test="${pageBean.prevPage <= 0 }">  
				  <li class="page-item disabled">
						<!-- 첫번째 페이지면은 '이전 페이지 보여주기 버튼' 비활성화--> 
						<a onclick="javascript:page(-1)" aria-label="Previous" class=" link-arrow"> <!-- 이전 페이지 ㄱㄱ --> 
						<span aria-hidden="true" lang="en">Previous</span>
					</a>

		       	</li>  
                </c:when>
                
                <c:otherwise>
               	  <li class="page-item ">
					<a href="${root }board/main?board_info_idx=${board_info_idx}&page=${pageBean.prevPage}" 
					   class="link-arrow">이전</a>
				  </li>
                </c:otherwise>
              </c:choose>
              
              
              
              <c:forEach var="idx" begin="${pageBean.min}" end="${pageBean.max}">
   			   
   			    <c:choose>
				<c:when test="${idx == pageBean.currentPage}">
				  
				  <li class="page-item active">
					<a href="${root }board/main?board_info_idx=${board_info_idx}&page=${idx}" class="link-arrow">${idx }</a>
				  </li>
		
				</c:when>
				
				
				
				<c:otherwise>
				  <li class="page-item">
					<a href="${root }board/main?board_info_idx=${board_info_idx}&page=${idx}" class="link-arrow" style="border: 1px solid #eee;
    margin-right: 5px;">${idx }</a>
				  </li>
				  
				 
					
				</c:otherwise>
				</c:choose>  
				 			     			  
   			  </c:forEach>
   			  
   			  
   			  
              <c:choose>
                <c:when test="${pageBean.max >= pageBean.pageCnt }">
				 
				  <li class="page-item disabled">
				  <a onclick="javascript:page(1)" aria-label="Next" class=" link-arrow"> 
				 <span aria-hidden="true" lang="en">Next</span>
					</a>
					</li>
					
                </c:when>
                <c:otherwise>
               	  
               	  <li class="page-item">
					<a href="${root }board/main?board_info_idx=${board_info_idx}&page=${pageBean.nextPage}" 
					   class="link-arrow">다음</a>
				  </li>
				  
				  <li class="page-item disabled">
				 <a onclick="javascript:page(1)" aria-label="Next" class=" link-arrow">
				 <span aria-hidden="true" lang="en">Next</span>
					</a>
					</li>
                </c:otherwise>
              </c:choose>
              
            </ul>
          </div>
          <!-- 페이징처리 -->
         
         
          

          
        </div>
      </div>
    </div>

	<!-- 하단 푸터부분 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
  </body>
</html>