<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdn.tailwindcss.com"></script>
<title>Insert title here</title>
</head>
<body class=" md:bg-[#FAFAFB]">
	<jsp:include page="Header.jsp"></jsp:include>
	
	<c:choose>
		<c:when test="${empty param.status}">
			<jsp:include page="payment.jsp" />
		</c:when>
		<c:otherwise>
			<jsp:include page="payment-success.jsp" />
		</c:otherwise>
	</c:choose>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>