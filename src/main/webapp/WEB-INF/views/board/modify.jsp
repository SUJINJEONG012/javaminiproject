<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var='root' value="${pageContext.request.contextPath }/"/>


<!-- 상단 메뉴 부분 -->
<c:import url="/WEB-INF/views/include/menu.jsp"/>


<div class="container cont-height" style="margin: 50px auto 100px">
     
        <div class="col-lg-12">
          
       
              <form:form action="${root }board/modify_pro" modelAttribute="modifyContentBean" enctype="multipart/form-data">
                <form:hidden path="content_idx"/>
                <form:hidden path="content_board_idx" />
                
                <div class="mb-4 mt-4">
                 <form:label path="content_writer_name" class="form-label">작성자</form:label>
                  <form:input path="content_writer_name" class="form-input" readonly="true" lang="en"/>
                </div>
                
                <div class="mb-4 mt-4">
                 <form:label path="content_date" class="form-label">작성날짜</form:label>
                  <form:input path="content_date" class="form-input" readonly="true"  lang="en"/>
                </div>
                
                
                
                <div class="mb-4 mt-4">
                  <form:label path="content_subject" class="form-label">제목</form:label>
                  <form:input path="content_subject" class="form-input" lang="en" />
                  <form:errors path="content_subject" style="color:red" />
                </div>
                
                <div class="mb-4 mt-4">
                  <form:label path="content_text" class="form-label">내용</form:label>
                  <form:textarea path="content_text" class="form-input" rows="10" style="resize: none" lang="en"/>
                  <form:errors path="content_text" style="color:red" />      
                </div>
                
                <div class="mb-4 mt-4 file">
                  <form:label path="content_file" class="form-label">첨부 이미지</form:label>
                  <c:if test="${modifyContentBean.content_file != null }">
                   <img src="${root }upload/${modifyContentBean.content_file}" width="100%" />
                  <form:hidden path="content_file"/>
                  </c:if>
                  
                  <form:input type="file" path="upload_file" class="form-input" accept="image/*" />
                </div>
                
                <div class="mb-4 mt-4">
                  <div class="text-right">
                    <form:button class="black-btn">수정하기</form:button>
                    <a href="${root }board/read?board_info_idx=${modifyContentBean.content_board_idx}&content_idx=${modifyContentBean.content_idx}&page=${page}" class="border-btn">취소 </a>
                  </div>
                </div>
                
              </form:form>
              
              
           
        </div>
      
    </div>

<!-- 하단 푸터부분 -->
<c:import url="/WEB-INF/views/include/footer.jsp" />