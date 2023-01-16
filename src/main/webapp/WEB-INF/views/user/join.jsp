<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var='root' value="${pageContext.request.contextPath }/" />

<!-- 상단 부분  -->
<c:import url="/WEB-INF/views/include/menu.jsp" />


    <div class="container cont-height" style="margin-top: 100px">
      
        <div class="col-lg-12">
          
            
             <form:form action="${root }user/join_pro" modelAttribute="joinUserBean">

               
                <div class="mb-4 mt-4">
                  <form:label path="user_name" class="form-label">이름</form:label>
                  <form:input path="user_name" class="form-input" placeholder="이름을 입력해주세요"/>
                  <form:errors path="user_name" style="color:coral"/>
                </div>
                
                <div class="mb-4 mt-4">
                  <form:label path="user_id" class="form-label">아이디</form:label>
                  <div class="d-flex">
                    <form:input path="user_id" class="form-input" placeholder="아이디를 입력해주세요"/>
                     <button onclick="checkUserIdExist()" type="button" class="black-button">중복확인</button>
                    
                  </div>
                  <form:errors path="user_id" style="color:coral"/>
                </div>
                
                <div class="mb-4 mt-4" id="idCheck">
                <form:hidden path="userIdChecked"/>
                <form:errors path="userIdChecked" style="color:coral"/>
                </div>
                
                
                <div class="mb-4 mt-4">
                  <form:label path="user_pw" class="form-label">비밀번호</form:label>
                  <form:input path="user_pw" type="password" class="form-input" placeholder="비밀번호를 입력해주세요"/>
                  <form:errors path="user_pw" style="color:coral"/>
                </div>
                
                <div class="mb-4 mt-4">
                  <form:label path="user_pw2" class="form-label">비밀번호 확인</form:label>
                  <form:input path="user_pw2" type="password" class="form-input" placeholder="비밀번호를 입력해주세요"/>
                  <form:errors path="user_pw2" style="color:coral"/>
                  <div style="color:coral">${msg }</div>
                </div>
                
                <div class="mb-4 mt-4">
                    <button type="submit" class="black-button">회원가입</button>   
                </div>
              </form:form>
              
     
      </div>
    </div>





<!-- 하단 푸터부분 -->
<c:import url="/WEB-INF/views/include/footer.jsp" />

<script type="text/javascript" >

function checkUserIdExist(){
	
	const user_id = $("#user_id").val()
	
	if(user_id.length == 0){
		alert("아이디를 입력해주세요.")
		return 
	}
	
	$.ajax({
		url : '${root}user/check/' + user_id,
		type: 'get',
		dataType : 'text',
			success: function (result){
				if(result.trim()=='true'){
					alert("사용할 수 있는 아이디 입니다.")
					$("#userIdChecked").val("true")
					$("#joinUserBean #idCheck span").text('')
					
				}else{
					alert("사용할 수 없는 아이디 입니다.")
					$("#userIdChecked").val('false')
				}
			}

	})
	}

	function resetUserIdExist() {
		$("#userIdChecked").val('false')
	}
</script>
