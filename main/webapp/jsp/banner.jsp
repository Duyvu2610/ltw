<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="Header.jsp"%>
<div class="">
	<div class="bg-right h-[560px] w-full relative md:bg-cover"
		style="background-image: url(./images/bg.webp); background-repeat: no-repeat;">

		<div
			class="pt-[42px] md:pt-[100px] md:pl-[133px] pl-[33px] text-[#FCFCFD] font-bold absolute ">
			<p class="text-4xl md:text-6xl  mb-3">
				Amazing Flight
			</p>
			<p class = "text-4xl md:text-6xl">To Switzerland</p>
			<p class="text-lg pt-3 md:pt-6 md:text-3xl">Find and book a great
				experience</p>
		</div>
		<jsp:include page="search-bar.jsp" />

	</div>
</div>
<script>
		const header = document.getElementById("header");
		const appName = document.getElementById("appName");
		const spanHeader = document.getElementById("spanHeader");
		
		
		// Kiểm tra nếu cuộn về đầu trang
		window.addEventListener('scroll', function() {
			var scrollPosition = document.body.getBoundingClientRect().top;
			console.log(scrollPosition)
			if (scrollPosition >= -60) {
					header.classList.add("bg-transparent")
					appName.classList.remove("text-[#222529]")
					spanHeader.classList.remove("text-[#84878B]")
					header.classList.remove("bg-white")
			} else {
					appName.classList.add("text-[#222529]")
					spanHeader.classList.add("text-[#84878B]")
					header.classList.add("bg-white")
					header.classList.remove("bg-transparent")
			}
        });
	</script>
</body>