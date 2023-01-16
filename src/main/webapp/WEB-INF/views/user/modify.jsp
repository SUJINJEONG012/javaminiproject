<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var ='root' value="${pageContext.request.contextPath }/" />

<!-- 상단부분 -->
<c:import url="/WEB-INF/views/include/menu.jsp" />

    <div class="container cont-height" style="margin-top: 50px">
     
        <div class="col-lg-12">
        
             
              <form:form action="${root }user/modify_pro" modelAttribute="modifyUserBean">
             
              <form:hidden path="userIdChecked" value="true" /> 
             
                <div class="mb-4 mt-4">
                  <form:label path="user_name" class="form-label">이름</form:label>
                  <form:input path="user_name"  class="form-input" readonly="true" />
                </div>
                
               
                <div class="mb-4 mt-4">
                  <form:label path="user_id" class="form-label">아이디</form:label>
                  <form:input path="user_id" class="form-input" readonly="true" lang="en" />
                </div>
                
                <div class="mb-4 mt-4">
                  <form:label path="user_pw" class="form-label">비밀번호</form:label>
                  <form:input path="user_pw" class="form-input" showPassword="true" placeholder="비밀번호를 입력해주세요"/>
                  <form:errors path='user_pw' style='color:coral'/>
                </div>
                
                
                <div class="mb-4 mt-4">
                  <form:label path="user_pw2" class="form-label">비밀번호 확인</form:label>
                  <form:input path="user_pw2" class="form-input" showPassword="true" placeholder="비밀번호를 입력해주세요"/>
                  <form:errors path="user_pw2" style="color:coral" />
                </div>
                <div style="color:coral">${msg }</div>
                
                <div class="mb-4 mt-4">
                  <div class="text-right">
                    <form:button type="submit" class="black-button">정보수정</form:button>
                  </div>
                </div>
                
              </form:form>
              
            </div>
          </div>
       
      
<!-- 하단부분 -->
<c:import url="/WEB-INF/views/include/footer.jsp" />
