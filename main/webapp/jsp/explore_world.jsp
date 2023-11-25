<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<div class="px-4 text-[#3B3E44] pb-8 pt-12 bg-[#FBFBFB]">
	<h2 class="text-3xl font-bold text-center">Explore World</h2>
	<p class="text-lg text-center my-4">10,788 beautiful places to go</p>
	<div
		class="grid h-[1600px] md:h-[350px] md:grid-cols-4 md:grid-rows-1 gap-4 md:w-[75%] md:mx-auto">
		<c:forEach var="tour" items="${list_explore}">
			<div class=" relative rounded-xl border-2 drop-shadow-xl mx-auto" style="width: -webkit-fill-available;">
				<img alt="image" src="${tour.image()}"
					class="object-cover rounded-t-xl h-[170px] w-full" >
				<div class="p-3 flex flex-col gap-3 text-[#84878B]">
					<h2 class="font-bold text-lg text-black">${tour.name()}</h2>

					<div class="flex">
						<img alt="icon" src="./icons/location.svg" width="14px"
							height="14px" class="mr-2"><span>Ha noi, Ha noi</span>
					</div>
					<div class="flex">
						<img alt="icon" src="./icons/room.svg" width="14px" height="14px"
							class="mr-2"><span>Rooms available: ${tour.roomAvailable() }</span>
					</div>
				</div>
				<div
					class="absolute rounded-full flex bg-white p-2 top-[22px] left-[22px] font-bold md:top-[16px] md:left-[16px]">
					<span class="mr-px">${tour.rating()}</span> <img alt="start"
						src="./icons/Star.svg" width="14px" height="14px">
				</div>
				
			</div>
		</c:forEach>




	</div>
</div>