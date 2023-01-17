<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!-- 상단 메뉴 부분 -->
<c:import url="/WEB-INF/views/include/menu.jsp"/>


    <div class="container cont-height" style="margin: 50px auto 100px">
     
       
        <div class="col-lg-12">
          
          
              <div class="mb-4 mt-4">
                <label for="board_writer_name" class="form-label">작성자 </label>
                <input type="text" id="board_writer_name" name="board_writer_name" class="form-input"
                  value="${readContentBean.content_writer_name}"  disabled="disabled"  />
              </div>
          
              <div class="mb-4 mt-4">
                <label for="board_date" class="form-label">작성날짜</label>
                <input type="text" id="board_date" name="board_date" class="form-input"
                  value="${readContentBean.content_date }" disabled="disabled" lang="en"/>
              </div>
          
              <div class="mb-4 mt-4">
                <label for="board_subject" class="form-label">제목</label>
                <input type="text" id="board_subject" name="board_subject" 
                  class="form-input" value="${readContentBean.content_subject}" disabled="disabled" lang="en"/>
              </div>
              
              <div class="mb-4 mt-4">
                <label for="board_content" class="form-label">내용</label>
                <textarea id="board_content" name="board_content"  
                class="form-input" rows="10"  style="resize: none" lang="en"
                disabled="disabled" >${readContentBean.content_text}</textarea>
              </div>
              
             
              
              <c:if test="${readContentBean.content_file != null }">
              <div class="mb-4 mt-4 file">
                <label for="board_file">첨부 이미지</label>
                <img src="${root }upload/${readContentBean.content_file}" width="100%" /> 
              </div>
              </c:if>


              
              <div class="mb-4 mt-4">
              
                 <a href="${root }board/main?board_info_idx=${board_info_idx }" class="border-btn">목록보기</a>
                 
                 <c:if test="${loginUserBean.user_idx == readContentBean.content_writer_idx}">
                 <a href="${root }board/modify?board_info_idx=${board_info_idx}&content_idx=${content_idx}" class="black-btn">수정하기</a>
              
                 <a href="${root }board/delete?board_info_idx=${board_info_idx}&content_idx=${content_idx}" class="delete-btn">삭제하기</a>
                 </c:if>
              
              </div>
              
              
            </div>
          </div>
       
   

<!-- 하단 푸터부분 -->
<c:import url="/WEB-INF/views/include/footer.jsp" />