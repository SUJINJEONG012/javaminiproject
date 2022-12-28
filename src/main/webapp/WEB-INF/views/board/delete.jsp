<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>

<!-- 상단 메뉴 부분 -->
<c:import url="/WEB-INF/views/include/menu.jsp"/>

<script>
alert("삭제되었습니다.")
location.href='${root}board/main'
</script>

<!-- 하단 푸터부분 -->
<c:import url="/WEB-INF/views/include/footer.jsp" />