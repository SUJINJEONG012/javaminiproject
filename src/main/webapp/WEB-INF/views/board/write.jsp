<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>


<!-- 상단 메뉴 부분 -->
<c:import url="/WEB-INF/views/include/menu.jsp"/>


<div class="container" style="margin-top: 100px">
      <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
          <div class="card shadow">
            <div class="card-body">
              <form action="board_read.html" method="post">
                <div class="form-group">
                  <label for="board_subject">제목</label>
                  <input type="text" id="board_subject" name="board_subject" class="form-control" />
                </div>
                <div class="form-group">
                  <label for="board_content">내용</label>
                  <textarea
                    id="board_content"
                    name="board_content"
                    class="form-control"
                    rows="10"
                    style="resize: none"
                  ></textarea>
                </div>
                <div class="form-group">
                  <label for="board_file">첨부 이미지</label>
                  <input
                    type="file"
                    id="board_file"
                    name="board_file"
                    class="form-control"
                    accept="image/*"
                  />
                </div>
                <div class="form-group">
                  <div class="text-right">
                    <button type="submit" class="btn btn-primary">작성하기</button>
                  </div>
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