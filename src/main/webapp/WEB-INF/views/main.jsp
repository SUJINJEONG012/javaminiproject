<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var='root' value="${pageContext.request.contextPath }/"/> 
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>미니 프로젝트</title>
    <!-- Bootstrap CDN -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  </head>
  <body>
	<!-- 상단 메뉴부분 -->
	<c:import url="/WEB-INF/views/include/menu.jsp" />

    <!-- 게시판 미리보기 부분 -->
    <div class="container cont-height" style="margin-top: 100px">
     
      
      <c:forEach var="sub_list" items="${list}" varStatus="idx">     
        <div class="col-lg-6" style="margin-top: 20px">
         
            <div class="card-body">
              <h4 class="card-title">${topMenuList[idx.index].board_info_name}</h4>
      
              
     <div class="album py-5">
   

      <div class="d-flex">
         <c:forEach var="obj" items="${sub_list}">
         
          <div class="card shadow-sm">
           
          
            <div class="card-body">
            <img src="${root}upload/${obj.content_file }"/>
            
  <p> <a href="${root }/board/read?board_info_idx=${topMenuList[idx.index].board_info_idx}&content_idx=${obj.content_idx}&page=1">${obj.content_subject }</a></p>
              
             <p> ${obj.content_text}</p>
             
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                   <a href="${root }board/main?board_info_idx=${topMenuList[idx.index].board_info_idx}" class="btn btn-primary">더보기</a>
                  
                </div>
                <small class="text-muted" lang="en">${obj.content_date }</small>
              </div>
            </div>

        </div>
          </c:forEach>
        </div>
              
              
            

            </div>
            
            
            
          </div>
        </div>
      </c:forEach>
      </div>
   
	<!-- 하단 푸터부분 -->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
  </body>
</html>