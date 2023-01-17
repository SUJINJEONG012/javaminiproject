<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var='root' value="${pageContext.request.contextPath }/"/>


<!-- 상단 메뉴 부분 -->
<c:import url="/WEB-INF/views/include/menu.jsp"/>


<div class="container cont-height" style="margin-top: 100px">
    
        <div class="col-lg-12">
          
              
              
              <form:form action="${root }board/write_pro"  enctype="multipart/form-data" modelAttribute="writeContentBean">
                <form:hidden path="content_board_idx"/>
                
                <div class="mb-4 mt-4">
                  <form:label path="content_subject" class="form-label">제목</form:label>
                  <form:input path="content_subject" class="form-input" placeholder="제목을 입력해주세요"/>
                  <form:errors path="content_subject" style="color:red" />
                </div>
                
                <div class="mb-4 mt-4">
                  <form:label path="content_text" class="form-label">내용</form:label>
                  <form:textarea path="content_text" class="form-input" rows="10" style="resize: none" placeholder="내용을 입력해주세요"/>
                  <form:errors path="content_text" style="color:red" />      
                </div>
                
                <div class="mb-4 mt-4">
                  <form:label path="content_file">첨부 이미지</form:label>
                  <form:input type="file" path="upload_file" class="form-input" accept="image/*" />
                </div>
                
                <div class="mb-4 mt-4">
                  <div class="text-right">
                    <form:button class='black-button'>작성하기</form:button>
                  </div>
                </div>
                
              </form:form>
              
              
              
            </div>
        
      </div>
  
<!-- 하단 푸터부분 -->
<c:import url="/WEB-INF/views/include/footer.jsp" />