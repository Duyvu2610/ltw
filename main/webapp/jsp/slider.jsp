<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Swiper demo</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<!-- Link Swiper's CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />

<!-- Demo styles -->
<style>
.swiper {
	width: 100%;
	height: 220px;
	margin: 22px 12px;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
</head>

<body>
	<div
		class="pt-[200px] md:pt-[100px] overflow-hidden md:w-[75%] mx-auto">
		<div class="font-bold text-xl text-center md:text-4xl md:pb-6">Search
			a best place in the world</div>
		<p class="text-center">
			Whether you are looking for places for a vacation. We are here to
			Guide you<br class="hidden md:block"> about the details you need
			to check in and ease your trips in advance
		</p>
		<!-- Swiper -->
		<div class="swiper mySwiper ">
			<div class="swiper-wrapper">
				<c:forEach var="tour" items="${best_place}">
					<div class="swiper-slide rounded flex-col gap-2 border"
						style="width: 200px">
						<img alt="iamge" src="${tour.image()}"
							class="w-[100px] h-[100px] rounded object-cover">
						<p class="w-full font-medium text-lg truncate px-2">${tour.name()},
							</p>
						<p>${tour.roomAvailable()} room available</p>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- Swiper JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper(".mySwiper", {
			slidesPerView : 'auto',
			spaceBetween : 30,
			freeMode : true,
			pagination : {

				clickable : true,
			},
			autoplay: {
		        delay: 1500,
		        disableOnInteraction: false,
		      },
		});
	</script>
</body>

</html>
