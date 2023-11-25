<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<div class="px-4 text-[#3B3E44] py-8 bg-[#F5F5F5]">
	<h2 class="text-3xl font-bold text-center">Trending Cities</h2>
	<p class="text-lg text-center my-4">The most searched for cities on
		TripGuide</p>
	<div
		class="grid h-[1300px] md:h-[800px] md:grid-cols-2 md:grid-rows-3 gap-4 md:w-[75%] mx-auto">

		<c:forEach var="tour" items="${list_trending}">
			<div class=" flex gap-4 bg-white rounded-lg border">
				<img alt="" src="${tour.image()}"
					class="object-cover rounded-l-lg" width="50%">
				<div
					class="flex-1 flex flex-col justify-around md:px-4 md:py-8 pr-2 py-4 gap-2">
					<p class="font-bold text-lg">${tour.name()}</p>
					<div class="flex gap-1">
						<img alt="start" src="./icons/Star.svg" width="14px" height="14px">
						<p>${tour.rating()}</p>
						<p class="text-[#84878B]">(147)</p>
					</div>
					<span class="font-bold text-lg">${tour.price()}<span
						class="text-[#84878B]"> / night</span></span>
					<button class="px-4 py-2 bg-[#316BFF] text-white rounded-lg">Book
						now</button>
				</div>
			</div>
		</c:forEach>




	</div>
</div>