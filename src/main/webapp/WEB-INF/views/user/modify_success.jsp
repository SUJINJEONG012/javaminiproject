<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var ='root' value="${pageContext.request.contextPath }/" />

<!-- 상단부분 -->
<c:import url="/WEB-INF/views/include/menu.jsp" />

   <script type="text/javascript">
   
   alert("수정되었습니다.")
   location.href="${root}user/modify";

   </script>
<!-- 하단부분 -->
<c:import url="/WEB-INF/views/include/footer.jsp" />
