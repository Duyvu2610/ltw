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
<style>
/*remove custom style*/
.circles {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

.circles li {
	position: absolute;
	display: block;
	list-style: none;
	width: 20px;
	height: 20px;
	background: rgba(255, 255, 255, 0.2);
	animation: animate 25s linear infinite;
	bottom: -150px;
}

.circles li:nth-child(1) {
	left: 25%;
	width: 80px;
	height: 80px;
	animation-delay: 0s;
}

.circles li:nth-child(2) {
	left: 10%;
	width: 20px;
	height: 20px;
	animation-delay: 2s;
	animation-duration: 12s;
}

.circles li:nth-child(3) {
	left: 70%;
	width: 20px;
	height: 20px;
	animation-delay: 4s;
}

.circles li:nth-child(4) {
	left: 40%;
	width: 60px;
	height: 60px;
	animation-delay: 0s;
	animation-duration: 18s;
}

.circles li:nth-child(5) {
	left: 65%;
	width: 20px;
	height: 20px;
	animation-delay: 0s;
}

.circles li:nth-child(6) {
	left: 75%;
	width: 110px;
	height: 110px;
	animation-delay: 3s;
}

.circles li:nth-child(7) {
	left: 35%;
	width: 150px;
	height: 150px;
	animation-delay: 7s;
}

.circles li:nth-child(8) {
	left: 50%;
	width: 25px;
	height: 25px;
	animation-delay: 15s;
	animation-duration: 45s;
}

.circles li:nth-child(9) {
	left: 20%;
	width: 15px;
	height: 15px;
	animation-delay: 2s;
	animation-duration: 35s;
}

.circles li:nth-child(10) {
	left: 85%;
	width: 150px;
	height: 150px;
	animation-delay: 0s;
	animation-duration: 11s;
}

@keyframes animate { 

	0%{
		transform: translateY(0) rotate(0deg);
		opacity: 1;
		border-radius: 0;
	}
	100%{
		transform:translateY(-1000px) rotate(720deg);
		opacity:0;
		border-radius:50%;
	}
}
.triangle {
	border-top: 60rem solid #fff;
	border-left: 25rem solid transparent;
}
</style>
</head>
<body>
		<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">

<!-- component -->

<div class="relative min-h-screen flex ">
	<div
		class="flex flex-col sm:flex-row items-center md:items-start sm:justify-center md:justify-start flex-auto min-w-0 bg-white">
		<div
			class="sm:w-1/2 xl:w-2/5 h-full hidden md:flex flex-auto items-center justify-start p-10 overflow-hidden bg-purple-900 text-white bg-no-repeat bg-cover relative bg-right-bottom"
			style="background-image: url(./images/airplane-background.svg);">
			<div
				class="absolute bg-gradient-to-b from-blue-900 to-gray-900 opacity-75 inset-0 z-0"></div>
			<div class="absolute triangle  min-h-screen right-0 w-16" style=""></div>
			<a href="/BookTickets" title="codepen aji"
				class="z-50 flex absolute top-5 text-center text-gray-100 focus:outline-none"><img
				src="./images/logo.svg" alt="aji"
				class="object-cover mx-auto w-8 h-8 w-10 h-10">
				<p class="text-xl ml-3">
					aji<strong>mon</strong>
				</p> </a> <img src="./images/airplane.webp"
				class="h-96 absolute -right-8 mr-5">
			<div class="w-full  max-w-md z-10">
				<div class="sm:text-4xl xl:text-5xl font-bold leading-tight mb-6">Reference
					site about Lorem Ipsum..</div>
				<div class="sm:text-sm xl:text-md text-gray-200 font-normal">
					What is Lorem Ipsum Lorem Ipsum is simply dummy text of the
					printing and typesetting industry Lorem Ipsum has been the
					industry's standard dummy text ever since the 1500s when an unknown
					printer took a galley of type and scrambled it to make a type
					specimen book it has?</div>
			</div>
			<!---remove custom style-->
			<ul class="circles ">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
			<div
				class="md:flex md:items-center md:justify-center w-full sm:w-auto md:h-full w-2/5 xl:w-2/5 p-8  md:p-10 lg:p-14 sm:rounded-lg md:rounded-none bg-white "
				id="signinSection">
				<div class="max-w-md w-full space-y-8">
					<div class="text-center">
						<h2 class="mt-6 text-3xl font-bold text-gray-900">Welcome
							Back!</h2>
						<p class="mt-2 text-sm text-gray-500">Please sign in to your
							account</p>
					</div>
					<div class="flex flex-row justify-center items-center space-x-3">
						<a href="https://www.behance.net/ajeeshmon" target="_blank"
							class="w-11 h-11 items-center justify-center inline-flex rounded-2xl
							 font-semibold  bg-[#316BFF] hover:shadow-lg cursor-pointer transition 
							 ease-in duration-300 flex-1 text-white"><img
							class="w-4 h-4 mr-2"
							src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDI0IDI0IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MTIgNTEyIiB4bWw6c3BhY2U9InByZXNlcnZlIiBjbGFzcz0iIj48Zz48cGF0aCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGQ9Im0xNS45OTcgMy45ODVoMi4xOTF2LTMuODE2Yy0uMzc4LS4wNTItMS42NzgtLjE2OS0zLjE5Mi0uMTY5LTMuMTU5IDAtNS4zMjMgMS45ODctNS4zMjMgNS42Mzl2My4zNjFoLTMuNDg2djQuMjY2aDMuNDg2djEwLjczNGg0LjI3NHYtMTAuNzMzaDMuMzQ1bC41MzEtNC4yNjZoLTMuODc3di0yLjkzOWMuMDAxLTEuMjMzLjMzMy0yLjA3NyAyLjA1MS0yLjA3N3oiIGZpbGw9IiNmZmZmZmYiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48L2c+PC9zdmc+">
							<p>Sign in with Facebook</p>
						</a>
					</div>
					<div class="flex items-center justify-center space-x-2">
						<span class="h-px w-16 bg-gray-200"></span> <span
							class="text-gray-300 font-normal">or continue with</span> <span
							class="h-px w-16 bg-gray-200"></span>
					</div>
					<!-- form -->
					<form class="space-y-4 md:space-y-6" action="login" method="post">
						<div>
							<label for="email"
								class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your
								email</label> <input type="email" placeholder="abc@gmail.com"
								class="mt-1 block w-full px-3 py-2  border border-slate-300 rounded-md text-sm shadow-sm placeholder-slate-400
	      focus:outline-none focus:border-[#316BFF] focus:ring-1 focus:ring-[#316BFF] bg-gray-50
	    "
								name="email" />
						</div>
						<div>
							<label for="password"
								class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Password</label>
							<input type="password" placeholder="************"
								class="mt-1 block w-full px-3 py-2  border border-slate-300 rounded-md text-sm shadow-sm placeholder-slate-400
	      focus:outline-none focus:border-[#316BFF] focus:ring-1 focus:ring-[#316BFF] bg-gray-50
	    "
								name="pw" />
						</div>
						<div class="flex items-center justify-between">
							<div class="flex items-start">
								<div class="flex items-center h-5">
									<input id="remember" aria-describedby="remember" type="checkbox"
										class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-primary-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-primary-600 dark:ring-offset-gray-800"
										required>
								</div>
								<div class="ml-3 text-sm">
									<label for="remember" class="text-gray-500 dark:text-gray-300">Remember
										me</label>
								</div>
							</div>
						<a href="#"
							class="text-sm font-medium text-[#316BFF] hover:underline dark:text-primary-500">Forgot
							password?</a>
					</div>
					<button type="submit"
						class="w-full text-white bg-[#316BFF] hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-[#316BFF] dark:hover:bg-primary-700 dark:focus:ring-primary-800">Sign
						in</button>
					<p class="text-sm font-light text-gray-500 dark:text-gray-400">
						Don't have an account? <a
							class="font-medium text-[#316BFF] hover:underline dark:text-primary-500" href = "register">Sign
							up</a>
					</p>
				</form>
			</div>
		</div>

	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript">
		const status = document.getElementById("status").value;
		console.log(status);
		setTimeout(() => {
			if (status == "failed") {
				
					Swal.fire({
					    title: 'Sign in failed',
					    icon: 'error',
					    text: 'Please sign in again',
					    confirmButtonText: 'OK',
					})
				
			}
		}, 0);
		
	</script>
</body>
</html>