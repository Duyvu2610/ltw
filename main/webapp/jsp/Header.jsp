<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
HttpSession sess = request.getSession();
%>
<!doctype html>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<body>
	<header
		class="px-5 py-6 h-[88px] fixed bg-transparent w-full z-[10000] top-0 transition-all duration-300"
		id="header">
		<div
			class="flex items-center justify-between max-w-[1440px] md:mx-auto ">
			<div class="flex items-center justify-between">
				<a href="${pageContext.servletContext.contextPath}" class="block flex items-center"><img
					alt="logo" src="./images/logo.svg" class="pr-2 md:w-10 md:h-9">
					<span class="font-bold text-white md:text-xl" id = "appName">TripGuide</span>
				</a>
			</div>
			<div class="flex items-center justify-between text-white" id = "spanHeader">
				<span class="px-2 font-bold  text-sm md:text-lg">USD</span>
				<img alt="language" src="./images/language.png"
					class="w-5 h-5 mr-2 md:w-6 md:h-6">

				<button id="dropdownNotificationButton"
					data-dropdown-toggle="dropdownNotification"
					class="inline-flex items-center text-sm font-medium text-center hover:text-gray-900 focus:outline-none"
					type="button">
					<svg class="w-5 h-5" aria-hidden="true"
						xmlns="http://www.w3.org/2000/svg" fill="currentColor"
						viewBox="0 0 14 20">
    <path
							d="M12.133 10.632v-1.8A5.406 5.406 0 0 0 7.979 3.57.946.946 0 0 0 8 3.464V1.1a1 1 0 0 0-2 0v2.364a.946.946 0 0 0 .021.106 5.406 5.406 0 0 0-4.154 5.262v1.8C1.867 13.018 0 13.614 0 14.807 0 15.4 0 16 .538 16h12.924C14 16 14 15.4 14 14.807c0-1.193-1.867-1.789-1.867-4.175ZM3.823 17a3.453 3.453 0 0 0 6.354 0H3.823Z" />
  </svg>
					<div class="relative flex">
						<div
							class="relative inline-flex w-3 h-3 bg-red-500 border-2 border-white rounded-full -top-2 right-3 dark:border-gray-900"></div>
					</div>
				</button>
				<!-- Dropdown menu -->
				<div id="dropdownNotification"
					class="z-20 hidden w-full max-w-xs bg-white divide-y divide-gray-100 rounded-lg shadow"
					aria-labelledby="dropdownNotificationButton">
					<div
						class="block px-4 py-2 font-medium text-center text-gray-700 rounded-t-lg bg-gray-50">
						Notifications</div>
					<div class="divide-y divide-gray-100">
						<a href="#" class="flex px-4 py-3 hover:bg-gray-100">
							<div class="flex-shrink-0">
								<img class="rounded-full w-11 h-11" src="./images/logo.svg"
									alt="Jese image">
								<div
									class="absolute flex items-center justify-center w-5 h-5 ml-6 -mt-5 bg-blue-600 border border-white rounded-full dark:border-gray-800">
									<svg class="w-2 h-2 text-white" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="currentColor"
										viewBox="0 0 18 18">
            <path
											d="M1 18h16a1 1 0 0 0 1-1v-6h-4.439a.99.99 0 0 0-.908.6 3.978 3.978 0 0 1-7.306 0 .99.99 0 0 0-.908-.6H0v6a1 1 0 0 0 1 1Z" />
            <path
											d="M4.439 9a2.99 2.99 0 0 1 2.742 1.8 1.977 1.977 0 0 0 3.638 0A2.99 2.99 0 0 1 13.561 9H17.8L15.977.783A1 1 0 0 0 15 0H3a1 1 0 0 0-.977.783L.2 9h4.239Z" />
          </svg>
								</div>
							</div>
							<div class="w-full pl-3">
								<div class="text-gray-500 text-sm mb-1.5 dark:text-gray-400">
									New message from <span
										class="font-semibold text-gray-900 dark:text-white">Jese
										Leos</span>: "Hey, what's up? All set for the presentation?"
								</div>
								<div class="text-xs text-blue-600 dark:text-blue-500">a
									few moments ago</div>
							</div>
						</a> <a href="#"
							class="flex px-4 py-3 hover:bg-gray-100 dark:hover:bg-gray-700">
							<div class="flex-shrink-0">
								<img class="rounded-full w-11 h-11" src="./images/logo.svg"
									alt="Joseph image">
								<div
									class="absolute flex items-center justify-center w-5 h-5 ml-6 -mt-5 bg-gray-900 border border-white rounded-full dark:border-gray-800">
									<svg class="w-2 h-2 text-white" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="currentColor"
										viewBox="0 0 20 18">
            <path
											d="M6.5 9a4.5 4.5 0 1 0 0-9 4.5 4.5 0 0 0 0 9ZM8 10H5a5.006 5.006 0 0 0-5 5v2a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-2a5.006 5.006 0 0 0-5-5Zm11-3h-2V5a1 1 0 0 0-2 0v2h-2a1 1 0 1 0 0 2h2v2a1 1 0 0 0 2 0V9h2a1 1 0 1 0 0-2Z" />
          </svg>
								</div>
							</div>
							<div class="w-full pl-3">
								<div class="text-gray-500 text-sm mb-1.5 dark:text-gray-400">
									<span class="font-semibold text-gray-900 dark:text-white">Joseph
										Mcfall</span> and <span
										class="font-medium text-gray-900 dark:text-white">5
										others</span> started following you.
								</div>
								<div class="text-xs text-blue-600 dark:text-blue-500">10
									minutes ago</div>
							</div>
						</a> <a href="#"
							class="flex px-4 py-3 hover:bg-gray-100 dark:hover:bg-gray-700">
							<div class="flex-shrink-0">
								<img class="rounded-full w-11 h-11" src="./images/logo.svg"
									alt="Bonnie image">
								<div
									class="absolute flex items-center justify-center w-5 h-5 ml-6 -mt-5 bg-red-600 border border-white rounded-full dark:border-gray-800">
									<svg class="w-2 h-2 text-white" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="currentColor"
										viewBox="0 0 20 18">
            <path
											d="M17.947 2.053a5.209 5.209 0 0 0-3.793-1.53A6.414 6.414 0 0 0 10 2.311 6.482 6.482 0 0 0 5.824.5a5.2 5.2 0 0 0-3.8 1.521c-1.915 1.916-2.315 5.392.625 8.333l7 7a.5.5 0 0 0 .708 0l7-7a6.6 6.6 0 0 0 2.123-4.508 5.179 5.179 0 0 0-1.533-3.793Z" />
          </svg>
								</div>
							</div>
							<div class="w-full pl-3">
								<div class="text-gray-500 text-sm mb-1.5 dark:text-gray-400">
									<span class="font-semibold text-gray-900 dark:text-white">Bonnie
										Green</span> and <span
										class="font-medium text-gray-900 dark:text-white">141
										others</span> love your story. See it and view more stories.
								</div>
								<div class="text-xs text-blue-600 dark:text-blue-500">44
									minutes ago</div>
							</div>
						</a> <a href="#"
							class="flex px-4 py-3 hover:bg-gray-100 dark:hover:bg-gray-700">
							<div class="flex-shrink-0">
								<img class="rounded-full w-11 h-11" src="./images/logo.svg"
									alt="Leslie image">
								<div
									class="absolute flex items-center justify-center w-5 h-5 ml-6 -mt-5 bg-green-400 border border-white rounded-full dark:border-gray-800">
									<svg class="w-2 h-2 text-white" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="currentColor"
										viewBox="0 0 20 18">
            <path
											d="M18 0H2a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h2v4a1 1 0 0 0 1.707.707L10.414 13H18a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2Zm-5 4h2a1 1 0 1 1 0 2h-2a1 1 0 1 1 0-2ZM5 4h5a1 1 0 1 1 0 2H5a1 1 0 0 1 0-2Zm2 5H5a1 1 0 0 1 0-2h2a1 1 0 0 1 0 2Zm9 0h-6a1 1 0 0 1 0-2h6a1 1 0 1 1 0 2Z" />
          </svg>
								</div>
							</div>
							<div class="w-full pl-3">
								<div class="text-gray-500 text-sm mb-1.5 dark:text-gray-400">
									<span class="font-semibold text-gray-900 dark:text-white">Leslie
										Livingston</span> mentioned you in a comment: <span
										class="font-medium text-blue-500" href="#">@bonnie.green</span>
									what do you say?
								</div>
								<div class="text-xs text-blue-600 dark:text-blue-500">1
									hour ago</div>
							</div>
						</a> <a href="#"
							class="flex px-4 py-3 hover:bg-gray-100 dark:hover:bg-gray-700">
							<div class="flex-shrink-0">
								<img class="rounded-full w-11 h-11" src="./images/logo.svg"
									alt="Robert image">
								<div
									class="absolute flex items-center justify-center w-5 h-5 ml-6 -mt-5 bg-purple-500 border border-white rounded-full dark:border-gray-800">
									<svg class="w-2 h-2 text-white" aria-hidden="true"
										xmlns="http://www.w3.org/2000/svg" fill="currentColor"
										viewBox="0 0 20 14">
            <path
											d="M11 0H2a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h9a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2Zm8.585 1.189a.994.994 0 0 0-.9-.138l-2.965.983a1 1 0 0 0-.685.949v8a1 1 0 0 0 .675.946l2.965 1.02a1.013 1.013 0 0 0 1.032-.242A1 1 0 0 0 20 12V2a1 1 0 0 0-.415-.811Z" />
          </svg>
								</div>
							</div>
							<div class="w-full pl-3">
								<div class="text-gray-500 text-sm mb-1.5 dark:text-gray-400">
									<span class="font-semibold text-gray-900 dark:text-white">Robert
										Brown</span> posted a new video: Glassmorphism - learn how to
									implement the new design trend.
								</div>
								<div class="text-xs text-blue-600 dark:text-blue-500">3
									hours ago</div>
							</div>
						</a>
					</div>
					<a href="#"
						class="block py-2 text-sm font-medium text-center text-gray-900 rounded-b-lg bg-gray-50 hover:bg-gray-100 dark:bg-gray-800 dark:hover:bg-gray-700 dark:text-white">
						<div class="inline-flex items-center ">
							<svg class="w-4 h-4 mr-2 text-gray-500 dark:text-gray-400"
								aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
								fill="currentColor" viewBox="0 0 20 14">
        <path
									d="M10 0C4.612 0 0 5.336 0 7c0 1.742 3.546 7 10 7 6.454 0 10-5.258 10-7 0-1.664-4.612-7-10-7Zm0 10a3 3 0 1 1 0-6 3 3 0 0 1 0 6Z" />
      </svg>
							View all
						</div>
					</a>
				</div>

				<div class="w-px h-[25px] bg-slate-500 mx-3"></div>
				<div class="relative flex">
					<c:choose>
						<c:when test="${not empty sessionScope.username}">
							<img alt="user-image" src="./images/profile.svg"
								class="md:w-8 md:h-8 md:mr-2 user">
							<img alt="dropdown" src="./icons/dropdown.svg" id="dropdown"
								class="transition-all duration-500 hidden md:block user ">
							<ul
								class="absolute w-[240px]  top-[40px] right-0 rounded-lg py-4 px-2
					 border shadow-2xl transition-all duration-500 bg-white my_hidden"
								id="user_drop_down">
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
									href="#" class="flex flex-1  items-center"><svg
											xmlns="http://www.w3.org/2000/svg" width="17" height="17"
											viewBox="0 0 17 17" fill="none">
<path
												d="M8.01776 0.493164C6.45974 0.496118 4.9362 0.951083 3.63272 1.80264C2.32924 2.6542 1.30207 3.8656 0.676338 5.28929C0.050602 6.71298 -0.146697 8.2875 0.108472 9.82108C0.363641 11.3547 1.06026 12.7811 2.11349 13.9267C2.86572 14.7403 3.77869 15.3896 4.79486 15.8337C5.81104 16.2778 6.90839 16.507 8.01776 16.507C9.12714 16.507 10.2245 16.2778 11.2407 15.8337C12.2568 15.3896 13.1698 14.7403 13.922 13.9267C14.9753 12.7811 15.6719 11.3547 15.9271 9.82108C16.1822 8.2875 15.9849 6.71298 15.3592 5.28929C14.7335 3.8656 13.7063 2.6542 12.4028 1.80264C11.0993 0.951083 9.57578 0.496118 8.01776 0.493164ZM8.01776 14.9206C6.35369 14.918 4.75548 14.2716 3.55944 13.1171C3.92256 12.2351 4.54029 11.4807 5.33413 10.9497C6.12797 10.4188 7.06208 10.1353 8.01776 10.1353C8.97344 10.1353 9.90755 10.4188 10.7014 10.9497C11.4952 11.4807 12.113 12.2351 12.4761 13.1171C11.28 14.2716 9.68183 14.918 8.01776 14.9206ZM6.41116 6.90534C6.41116 6.58829 6.50538 6.27836 6.68192 6.01474C6.85846 5.75112 7.10937 5.54565 7.40294 5.42432C7.69651 5.30299 8.01954 5.27125 8.33119 5.3331C8.64285 5.39495 8.92912 5.54763 9.1538 5.77182C9.37849 5.99601 9.5315 6.28164 9.5935 6.59261C9.65549 6.90357 9.62367 7.22588 9.50207 7.5188C9.38047 7.81172 9.17455 8.06208 8.91034 8.23823C8.64614 8.41437 8.33552 8.50839 8.01776 8.50839C7.59166 8.50839 7.18302 8.3395 6.88172 8.03887C6.58043 7.73824 6.41116 7.3305 6.41116 6.90534ZM13.5686 11.7145C12.8509 10.4896 11.7462 9.53676 10.4277 9.00533C10.8367 8.54258 11.1032 7.9719 11.1952 7.36176C11.2872 6.75162 11.2008 6.12796 10.9464 5.5656C10.692 5.00324 10.2803 4.52607 9.76085 4.19136C9.24138 3.85665 8.63614 3.67861 8.01776 3.67861C7.39939 3.67861 6.79415 3.85665 6.27467 4.19136C5.75519 4.52607 5.34355 5.00324 5.08912 5.5656C4.8347 6.12796 4.74831 6.75162 4.84032 7.36176C4.93234 7.9719 5.19884 8.54258 5.60786 9.00533C4.28932 9.53676 3.18467 10.4896 2.46695 11.7145C1.89495 10.7423 1.59273 9.6357 1.59135 8.50839C1.59135 6.80777 2.26841 5.17681 3.4736 3.97429C4.67879 2.77178 6.31337 2.09621 8.01776 2.09621C9.72215 2.09621 11.3567 2.77178 12.5619 3.97429C13.7671 5.17681 14.4442 6.80777 14.4442 8.50839C14.4428 9.6357 14.1406 10.7423 13.5686 11.7145Z"
												fill="#777E90" />
</svg> <span class="flex-1 ml-5">My Profile</span> </a></li>
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
									href="#" class="flex flex-1 items-center"><svg
											xmlns="http://www.w3.org/2000/svg" width="17" height="17"
											viewBox="0 0 17 17" fill="none">
<path
												d="M10.9876 9.06746C11.777 8.45074 12.3532 7.60504 12.636 6.64801C12.9188 5.69097 12.8942 4.6702 12.5656 3.72771C12.237 2.78521 11.6207 1.96786 10.8024 1.38937C9.98423 0.810873 9.00478 0.5 8.00035 0.5C6.99592 0.5 6.01646 0.810873 5.19824 1.38937C4.38003 1.96786 3.76374 2.78521 3.43512 3.72771C3.10649 4.6702 3.08188 5.69097 3.3647 6.64801C3.64752 7.60504 4.22371 8.45074 5.01311 9.06746C3.66046 9.60558 2.48023 10.4981 1.59823 11.6499C0.716236 12.8017 0.165542 14.1696 0.00485675 15.6077C-0.00677448 15.7127 0.00253503 15.8189 0.0322535 15.9204C0.061972 16.0218 0.111518 16.1164 0.178061 16.1988C0.312453 16.3652 0.507923 16.4718 0.721472 16.4952C0.93502 16.5185 1.14915 16.4566 1.31677 16.3232C1.48438 16.1897 1.59174 15.9956 1.61523 15.7836C1.79203 14.2206 2.54255 12.7772 3.72338 11.729C4.90421 10.6807 6.43257 10.1013 8.01645 10.1013C9.60033 10.1013 11.1287 10.6807 12.3095 11.729C13.4904 12.7772 14.2409 14.2206 14.4177 15.7836C14.4396 15.98 14.534 16.1615 14.6827 16.2929C14.8314 16.4243 15.0238 16.4964 15.2229 16.4952H15.3114C15.5225 16.4711 15.7154 16.3651 15.8481 16.2003C15.9809 16.0356 16.0426 15.8254 16.02 15.6157C15.8585 14.1735 15.3049 12.8021 14.4184 11.6485C13.5318 10.495 12.3459 9.60273 10.9876 9.06746ZM8.00035 8.49978C7.36334 8.49978 6.74065 8.31222 6.211 7.9608C5.68135 7.60938 5.26854 7.1099 5.02477 6.52551C4.781 5.94112 4.71722 5.29808 4.84149 4.6777C4.96576 4.05732 5.27251 3.48746 5.72294 3.04019C6.17337 2.59292 6.74725 2.28833 7.37201 2.16492C7.99677 2.04152 8.64436 2.10486 9.23287 2.34692C9.82138 2.58898 10.3244 2.99889 10.6783 3.52483C11.0322 4.05076 11.2211 4.66909 11.2211 5.30163C11.2211 6.14983 10.8818 6.9633 10.2778 7.56307C9.67375 8.16284 8.85454 8.49978 8.00035 8.49978Z"
												fill="#777E90" />
</svg> <span class="flex-1  ml-5">Manage account</span></a></li>
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
									href="#" class="flex flex-1"><svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="17"
											viewBox="0 0 16 17" fill="none">
<path fill-rule="evenodd" clip-rule="evenodd"
												d="M4.65625 5.83211H4.32315V13.8321H11.6445V5.83211H11.3111H4.65625ZM12.9755 5.83211V13.8321H13.3093C13.6768 13.8321 13.9748 13.5336 13.9748 13.1654V6.49878C13.9748 6.13059 13.6768 5.83211 13.3093 5.83211H12.9755ZM2.66158 5.83211H2.99219V13.8321H2.66158C2.29404 13.8321 1.99609 13.5336 1.99609 13.1654V6.49878C1.99609 6.13059 2.29404 5.83211 2.66158 5.83211ZM11.3111 4.50008H13.3082C14.4108 4.50008 15.3047 5.39551 15.3047 6.50008V13.1667C15.3047 14.2713 14.4108 15.1667 13.3082 15.1667H2.66051C1.5579 15.1667 0.664062 14.2713 0.664062 13.1667V6.50008C0.664062 5.39551 1.5579 4.50008 2.66051 4.50008H4.65625V4.49878C4.65625 3.39421 5.55009 2.49878 6.65269 2.49878H9.31462C10.4172 2.49878 11.3111 3.39421 11.3111 4.49878V4.50008ZM9.97726 4.50008C9.97726 4.13189 9.67932 3.83341 9.31178 3.83341H6.64986C6.28232 3.83341 5.98438 4.13189 5.98438 4.50008H9.97726Z"
												fill="#777E90" />
</svg> <span class="flex-1 ml-5">Bookings</span></a></li>
								<li class=" flex  hover:bg-hover py-2 px-4 rounded-md"><a
									href="#" class="flex flex-1 items-center"><svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="13"
											viewBox="0 0 16 13" fill="none">
<path
												d="M3.99352 8.5H6.38964C6.60147 8.5 6.80462 8.41571 6.95441 8.26569C7.10419 8.11566 7.18834 7.91217 7.18834 7.7C7.18834 7.48783 7.10419 7.28434 6.95441 7.13432C6.80462 6.98429 6.60147 6.9 6.38964 6.9H3.99352C3.78169 6.9 3.57854 6.98429 3.42875 7.13432C3.27897 7.28434 3.19482 7.48783 3.19482 7.7C3.19482 7.91217 3.27897 8.11566 3.42875 8.26569C3.57854 8.41571 3.78169 8.5 3.99352 8.5ZM13.578 0.5H2.39611C1.76063 0.5 1.15116 0.752856 0.701806 1.20294C0.252447 1.65303 0 2.26348 0 2.9V10.1C0 10.7365 0.252447 11.347 0.701806 11.7971C1.15116 12.2471 1.76063 12.5 2.39611 12.5H13.578C14.2135 12.5 14.8229 12.2471 15.2723 11.7971C15.7216 11.347 15.9741 10.7365 15.9741 10.1V2.9C15.9741 2.26348 15.7216 1.65303 15.2723 1.20294C14.8229 0.752856 14.2135 0.5 13.578 0.5ZM14.3767 10.1C14.3767 10.3122 14.2925 10.5157 14.1427 10.6657C13.993 10.8157 13.7898 10.9 13.578 10.9H2.39611C2.18428 10.9 1.98113 10.8157 1.83134 10.6657C1.68156 10.5157 1.59741 10.3122 1.59741 10.1V5.3H14.3767V10.1ZM14.3767 3.7H1.59741V2.9C1.59741 2.68783 1.68156 2.48434 1.83134 2.33431C1.98113 2.18429 2.18428 2.1 2.39611 2.1H13.578C13.7898 2.1 13.993 2.18429 14.1427 2.33431C14.2925 2.48434 14.3767 2.68783 14.3767 2.9V3.7Z"
												fill="#777E90" />
</svg> <span class="flex-1 ml-5">My wallate</span></a></li>
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
									href="#" class="flex flex-1 items-center"><svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="17"
											viewBox="0 0 16 17" fill="none">
<path
												d="M4.3941 3.70043C4.15708 3.70043 3.92539 3.77082 3.72831 3.9027C3.53124 4.03457 3.37764 4.22201 3.28694 4.44131C3.19623 4.66061 3.1725 4.90192 3.21874 5.13473C3.26498 5.36754 3.37912 5.58139 3.54671 5.74923C3.71431 5.91708 3.92784 6.03138 4.16031 6.07769C4.39277 6.124 4.63373 6.10023 4.8527 6.00939C5.07168 5.91855 5.25884 5.76473 5.39052 5.56736C5.52221 5.37 5.59249 5.13796 5.59249 4.90059C5.59249 4.58229 5.46623 4.27702 5.24149 4.05195C5.01675 3.82688 4.71193 3.70043 4.3941 3.70043ZM15.2755 7.46893L8.5565 0.732044C8.48185 0.657889 8.39332 0.599221 8.29598 0.559404C8.19864 0.519587 8.09441 0.499405 7.98926 0.500013H0.798938C0.58705 0.500013 0.383841 0.58431 0.234013 0.734359C0.0841855 0.884407 1.33535e-05 1.08792 1.33535e-05 1.30012V8.50106C-0.000594543 8.60636 0.0195584 8.71075 0.0593166 8.80823C0.0990748 8.90571 0.157656 8.99438 0.231702 9.06914L6.95865 15.798C7.40805 16.2475 8.01723 16.5 8.65237 16.5C9.28752 16.5 9.8967 16.2475 10.3461 15.798L15.2755 10.9014C15.7243 10.4513 15.9764 9.84124 15.9764 9.20516C15.9764 8.56907 15.7243 7.95899 15.2755 7.50893V7.46893ZM14.149 9.72522L9.21162 14.6619C9.06193 14.8109 8.85944 14.8945 8.64838 14.8945C8.43731 14.8945 8.23482 14.8109 8.08514 14.6619L1.59786 8.17302V2.10022H7.66171L14.149 8.59708C14.223 8.67184 14.2816 8.7605 14.3214 8.85798C14.3611 8.95547 14.3813 9.05985 14.3807 9.16515C14.3798 9.37505 14.2966 9.57619 14.149 9.72522Z"
												fill="#777E90" />
</svg> <span class="flex-1 ml-5">My Rewards</span></a></li>
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md"><a
									href="logout" class="flex flex-1 items-center"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="15"
											viewBox="0 0 16 15" fill="none">
<path
												d="M3.36102 8.98109L2.72159 8.32742L6.39032 8.32742C6.6023 8.32742 6.8056 8.24025 6.9555 8.08508C7.1054 7.9299 7.18961 7.71945 7.18961 7.5C7.18961 7.28055 7.1054 7.0701 6.9555 6.91492C6.8056 6.75975 6.6023 6.67258 6.39032 6.67258L2.72159 6.67258L3.36102 6.01891C3.43593 5.94199 3.4954 5.85048 3.53597 5.74965C3.57655 5.64882 3.59744 5.54067 3.59744 5.43144C3.59744 5.32221 3.57655 5.21406 3.53597 5.11324C3.4954 5.01241 3.43593 4.92089 3.36102 4.84397C3.28671 4.76642 3.19831 4.70486 3.10091 4.66286C3.00351 4.62085 2.89904 4.59922 2.79352 4.59922C2.68801 4.59922 2.58354 4.62085 2.48613 4.66286C2.38873 4.70486 2.30033 4.76642 2.22603 4.84397L0.227808 6.91253C0.15504 6.99122 0.0979987 7.08401 0.0599571 7.18558C-0.0199861 7.38702 -0.0199861 7.61298 0.0599571 7.81442C0.0979987 7.91599 0.15504 8.00878 0.227808 8.08747L2.22603 10.156C2.37654 10.3118 2.58067 10.3994 2.79352 10.3994C3.00637 10.3994 3.21051 10.3118 3.36102 10.156C3.51153 10.0002 3.59608 9.7889 3.59608 9.56856C3.59608 9.34821 3.51153 9.13689 3.36102 8.98109ZM4.44006 2.53546C4.36448 2.6137 4.30453 2.70658 4.26363 2.80879C4.22273 2.91101 4.20168 3.02057 4.20168 3.13121C4.20168 3.24185 4.22273 3.3514 4.26363 3.45362C4.30453 3.55584 4.36448 3.64872 4.44006 3.72695C4.51563 3.80519 4.60535 3.86724 4.70409 3.90958C4.80283 3.95192 4.90866 3.97372 5.01554 3.97372C5.12242 3.97372 5.22825 3.95192 5.32699 3.90958C5.42574 3.86724 5.51546 3.80519 5.59103 3.72695C6.31195 2.98038 7.23055 2.4719 8.23066 2.26581C9.23076 2.05973 10.2674 2.1653 11.2096 2.56918C12.1517 2.97306 12.957 3.6571 13.5236 4.53479C14.0901 5.41247 14.3925 6.44438 14.3925 7.5C14.3925 8.55562 14.0901 9.58753 13.5236 10.4652C12.957 11.3429 12.1517 12.0269 11.2096 12.4308C10.2674 12.8347 9.23076 12.9403 8.23066 12.7342C7.23055 12.5281 6.31195 12.0196 5.59103 11.273C5.51546 11.1948 5.42574 11.1328 5.327 11.0904C5.22825 11.0481 5.12242 11.0263 5.01554 11.0263C4.90867 11.0263 4.80283 11.0481 4.70409 11.0904C4.60535 11.1328 4.51563 11.1948 4.44006 11.273C4.36448 11.3513 4.30453 11.4442 4.26363 11.5464C4.22273 11.6486 4.20168 11.7582 4.20168 11.8688C4.20168 11.9794 4.22273 12.089 4.26363 12.1912C4.30453 12.2934 4.36448 12.3863 4.44006 12.4645C5.38734 13.4393 6.59227 14.1018 7.90286 14.3685C9.21344 14.6352 10.571 14.4942 11.8042 13.9631C13.0374 13.4321 14.0911 12.5349 14.8324 11.3846C15.5736 10.2344 15.9691 8.88268 15.9691 7.5C15.9691 6.11731 15.5736 4.7656 14.8324 3.61536C14.0911 2.46513 13.0374 1.5679 11.8042 1.03686C10.571 0.505822 9.21344 0.364755 7.90286 0.631459C6.59227 0.898163 5.38734 1.56069 4.44006 2.53546Z"
												fill="#777E90" />
</svg> <span class="flex-1 ml-5">Sign out</span></a></li>
							</ul>
						</c:when>
						<c:otherwise>
							<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
								viewBox="0 0 32 32" fill="none"
								class="md:w-8 md:h-8 md:mr-2 user">
<rect width="32" height="32" rx="16" fill="#E7ECF3" />
<path
									d="M18.9707 16.5675C19.7589 15.9507 20.3342 15.105 20.6166 14.148C20.899 13.191 20.8744 12.1702 20.5463 11.2277C20.2182 10.2852 19.6028 9.46786 18.7859 8.88937C17.9689 8.31087 16.991 8 15.9881 8C14.9852 8 14.0072 8.31087 13.1903 8.88937C12.3733 9.46786 11.758 10.2852 11.4298 11.2277C11.1017 12.1702 11.0772 13.191 11.3595 14.148C11.6419 15.105 12.2172 15.9507 13.0054 16.5675C11.6548 17.1056 10.4764 17.9981 9.59578 19.1499C8.71514 20.3017 8.16529 21.6696 8.00485 23.1077C7.99324 23.2127 8.00253 23.3189 8.0322 23.4204C8.06188 23.5218 8.11135 23.6164 8.17779 23.6988C8.31197 23.8652 8.50714 23.9718 8.72037 23.9952C8.93359 24.0185 9.14739 23.9566 9.31475 23.8232C9.4821 23.6897 9.5893 23.4956 9.61275 23.2836C9.78929 21.7206 10.5386 20.2772 11.7177 19.229C12.8967 18.1807 14.4227 17.6013 16.0042 17.6013C17.5856 17.6013 19.1116 18.1807 20.2906 19.229C21.4697 20.2772 22.219 21.7206 22.3956 23.2836C22.4174 23.48 22.5117 23.6615 22.6601 23.7929C22.8086 23.9243 23.0008 23.9964 23.1995 23.9952H23.2879C23.4987 23.9711 23.6913 23.8651 23.8238 23.7003C23.9563 23.5356 24.018 23.3254 23.9954 23.1157C23.8342 21.6735 23.2814 20.3021 22.3962 19.1485C21.5111 17.995 20.3269 17.1027 18.9707 16.5675ZM15.9881 15.9998C15.3521 15.9998 14.7303 15.8122 14.2015 15.4608C13.6726 15.1094 13.2605 14.6099 13.0171 14.0255C12.7737 13.4411 12.71 12.7981 12.8341 12.1777C12.9581 11.5573 13.2644 10.9875 13.7142 10.5402C14.1639 10.0929 14.7369 9.78833 15.3607 9.66492C15.9845 9.54152 16.6311 9.60486 17.2187 9.84692C17.8063 10.089 18.3086 10.4989 18.6619 11.0248C19.0153 11.5508 19.2039 12.1691 19.2039 12.8016C19.2039 13.6498 18.8651 14.4633 18.262 15.0631C17.6589 15.6628 16.841 15.9998 15.9881 15.9998Z"
									fill="#B1B5C4" />
								
</svg>
							<img alt="dropdown" src="./icons/dropdown.svg" id="dropdown"
								class="transition-all duration-500 hidden md:block user">
							<ul
								class="absolute w-[240px] top-[40px] right-0 rounded-lg py-4 px-2
					 border shadow-2xl transition-all duration-500 bg-white my_hidden"
								id="user_drop_down">
								<li class=" flex hover:bg-hover py-2 px-4 rounded-md "><a
									href="login" class="flex flex-1"> <img alt="profile"
										src="./icons/profile.svg" class=" mr-5"> <span
										class="flex-1">Login</span>
								</a></li>

							</ul>
						</c:otherwise>
					</c:choose>




				</div>
			</div>
		</div>
	</header>
	<script src="./js/header.js"></script>
	
</html>