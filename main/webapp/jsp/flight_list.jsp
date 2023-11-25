<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css"
	rel="stylesheet" />
</head>
<body class="scroll-smooth">
	<jsp:include page="Header.jsp" />
	<div class=" bg-[#FAFAFB]">
		<div class="hidden md:block md:relative md:bottom-32">
			<jsp:include page="search-bar.jsp" />
		</div>
		<div
			class="h-[400px] px-12 pt-4 bg-cover bg-bottom hidden md:block"
			style="background-image: url(./images/bg.webp); background-repeat: no-repeat;">
		</div>
		<c:choose>
			<c:when test="${empty param.id}">
				<jsp:include page="flights.jsp" />
			</c:when>
			<c:otherwise>
				<jsp:include page="flight-detail.jsp" />
			</c:otherwise>
		</c:choose>
		
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
</body>
</html>