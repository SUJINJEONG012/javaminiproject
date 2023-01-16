<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var='root' value="${pageContext.request.contextPath }/" />

<!-- 상단 부분  -->
<c:import url="/WEB-INF/views/include/menu.jsp" />




<div class="container cont-height" style="margin-top: 100px">
     
        <div class="col-lg-12">
        
              <c:if test="${fail == true }">
                <div class="alert alert-danger">
                  <h3>로그인 실패</h3>
                  <p>아이디 비밀번호를 확인해주세요</p>
                </div>
              </c:if>
              
              <form:form action="${root }user/login_pro" modelAttribute="loginBean">
              
                <div class="mb-4 mt-4">
                  <form:label path="user_id" class="form-label">아이디</form:label>
                  <form:input path="user_id" class="form-input" placeholder="아이디를 입력해주세요"/>
                  <form:errors path="user_id" style="color:coral"/>
                </div>
                <div class="mb-4 mt-4">
                  <form:label path="user_pw" class="form-label">비밀번호</form:label>
                  <form:input path="user_pw" type="password" showPassword="true" class="form-input" placeholder="비밀번호를 입력해주세요"/>
                  <form:errors path="user_pw" style="color:coral" />
                </div>
                
                <div class="mb-4 mt-4">
                  <button type="submit" class="border-button">로그인</button>
                  <a href="${root }user/join" class="black-button">회원가입</a>
                </div>
                
                
                
              </form:form>
        
      </div>
    </div>



<!-- 하단 푸터부분 -->
<c:import url="/WEB-INF/views/include/footer.jsp" />