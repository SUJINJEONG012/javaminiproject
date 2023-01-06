<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var='root' value="${pageContext.request.contextPath }/"/>

<!-- 상단 메뉴 부분 -->
<c:import url="/WEB-INF/views/include/menu.jsp"/>


<script>
alert("저장되었습니다.")
location.href="${root}board/main?board_info_idx=${writeContentBean.content_board_idx}"
</script>
<!-- 하단 푸터부분 -->
<c:import url="/WEB-INF/views/include/footer.jsp" />
