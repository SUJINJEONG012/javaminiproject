<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var='root' value="${pageContext.request.contextPath }/" />
<!-- 상단 부분  -->
<c:import url="/WEB-INF/views/include/menu.jsp" />

<script>
alert("회원가입이 완료되었습니다.")
location.href="${root}user/login";

</script>

<!-- 상단 부분  -->
<c:import url="/WEB-INF/views/include/footer.jsp" />