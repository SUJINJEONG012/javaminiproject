<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var='root' value="${pageContext.request.contextPath }/" />

<!-- 상단 부분  -->
<c:import url="/WEB-INF/views/include/menu.jsp" />




<div class="container" style="margin-top: 100px">
      <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
          <div class="card shadow">
            <div class="card-body">
              <!-- <div class="alert alert-danger">
                <h3>로그인 실패</h3>
                <p>아이디 비밀번호를 확인해주세요</p>
              </div> -->
              <form action="index.html" method="post">
                <div class="form-group">
                  <label for="user_id">아이디</label>
                  <input type="text" id="user_id" name="user_id" class="form-control" />
                </div>
                <div class="form-group">
                  <label for="user_pw">비밀번호</label>
                  <input type="password" id="user_pw" name="user_pw" class="form-control" />
                </div>
                <div class="form-group text-right">
                  <button type="submit" class="btn btn-primary">로그인</button>
                  <a href="join.html" class="btn btn-danger">회원가입</a>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-sm-3"></div>
      </div>
    </div>



<!-- 하단 푸터부분 -->
<c:import url="/WEB-INF/views/include/footer.jsp" />