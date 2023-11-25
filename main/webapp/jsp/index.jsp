<%@page import="java.util.ArrayList"%>
<%@page import="models.City"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<script src="https://cdn.tailwindcss.com"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-element-bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/global.css">

</head>

<body>
	<jsp:include page="banner.jsp"/>
	<jsp:include page="slider.jsp" />
	<jsp:include page="featured_destinations.jsp" />
	<jsp:include page="trending_cities.jsp" />
	<jsp:include page="explore_world.jsp" />
	<jsp:include page="footer.jsp" />
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
		
</body>
</html>