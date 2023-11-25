<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/datepicker.min.js"></script>
<form
	class="absolute rounded-lg w-[85%] md:w-[75%] bg-white top-[230px] md:top-[400px] left-1/2 transform -translate-x-1/2
	  		py-5 px-4 border shadow md:flex md:gap-5 md:items-end z-50"
	method="post" action="flights">
	<div class="md:flex-1">
		<div class="md:flex md:justify-between md:items-center relative">
			<div class="flex justify-center justify-between md:w-[400px] md:mb-5">
				<div
					class="flex before:block before:absolute relative before:w-full before:h-0.5 before:bg-[#316BFF] before:top-[44px] before:z-10">
					<img alt="icon" src="./icons/Plane.svg" class="mr-2">
					<p class="flex-1">Flight</p>
				</div>
			</div>

			<div class="flex pt-10 md:pt-0 md:pb-5">
				<div class="flex mr-4">
					<p class="mr-2">Round trip</p>
					<img alt="icon" src="./icons/Vector.svg">
				</div>
				<div class="flex">
					<div>
						<button id="dropdownNavbarLink"
							data-dropdown-toggle="dropdownNavbar"
							class="flex items-center justify-between w-full py-2 px-3 text-gray-700 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 md:w-auto">
							Dropdown
							<svg class="w-2.5 h-2.5 ms-3" aria-hidden="true"
								xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 10 6">
    <path stroke="currentColor" stroke-linecap="round"
									stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4" />
  </svg>
						</button> <!-- Dropdown menu -->
						<div id="dropdownNavbar"
							class="z-10 hidden font-normal bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700 dark:divide-gray-600">
							<ul class="py-2 text-sm text-gray-700 dark:text-gray-200"
								aria-labelledby="dropdownLargeButton">
								<li><a href="#"
									class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Dashboard</a>
								</li>
								<li><a href="#"
									class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Settings</a>
								</li>
								<li><a href="#"
									class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Earnings</a>
								</li>
							</ul>
							<div class="py-1">
								<a href="#"
									class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Sign
									out</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="absolute w-full h-0.5 bg-[#E7ECF3] top-1/2 md:top-full"></div>
		</div>
		<!--  -->
		<div class="mt-4 md:flex md:gap-2">
			<div class="flex flex-col md:flex-row gap-2 md:flex-1">
				<div
					class="bg-[#F4F5F7] rounded-lg md:relative px-5 py-2 md:w-[55%] flex flex-col gap-2">
					<!-- Dropdown menu -->
					<p class="font-medium">Leaving from</p>
					<select data-te-select-init data-te-select-filter="true"
						data-te-select-placeholder="Where are you from" id="leaving"
						name="leaving">
						<option value="" hidden selected></option>
						<c:forEach var="city" items="${applicationScope.cities}">
							<option value="${city.name()}">${city.name()}</option>
						</c:forEach>
					</select> <img alt="logo" src="./icons/arrow.svg"
						class="hidden md:block absolute top-1/2 -right-5 -translate-y-1/2 z-10">

				</div>
				<div
					class="bg-[#F4F5F7] rounded-lg md:relative px-5 py-2 md:w-[45%] flex flex-col gap-2">
					<!-- Dropdown menu -->
					<p class="font-medium">Going to</p>
					<select data-te-select-init data-te-select-filter="true"
						data-te-select-placeholder="Going to" name="gointo">
						<option value="" hidden selected></option>
						<c:forEach var="city" items="${applicationScope.cities}">
							<option value="${city.name()}">${city.name()}</option>
						</c:forEach>
					</select> <img alt="logo" src="./icons/arrow.svg"
						class="hidden md:block absolute top-1/2 -right-5 -translate-y-1/2 z-10">

				</div>

			</div>
			<div class="grid grid-cols-2 mb-3 gap-2 md:mb-0">
				<div class="relative rounded-lg border px-5 py-2 bg-[#F4F5F7]">
					<p class="font-medium mb-2">Check in</p>

					<input datepicker datepicker-autohide
						datepicker-format="dd/mm/yyyy" type="text"
						class="text-sm rounded block w-full bg-[#F4F5F7] px-2 py-[6px] focus:border-black border border-[#d4d4d4] focus:border-[#F4F5F7]"
						placeholder="Add date" name="checkin"> <img alt="logo"
						src="./icons/arrow.svg"
						class="hidden md:block absolute top-1/2 -right-5 -translate-y-1/2 z-10">

				</div>

				<div class="relative rounded-lg border px-5 py-2 bg-[#F4F5F7]">
					<p class="font-medium">Check out</p>

					<input datepicker datepicker-autohide
						datepicker-format="dd/mm/yyyy" type="text"
						class="text-sm rounded-lg block w-full bg-[#F4F5F7] px-0 focus:border-black border-0 focus:border-0"
						placeholder="Add date" name="checkout">

				</div>
			</div>
			<div class="px-4 py-2 bg-[#F4F5F7] rounded-lg mb-3 border md:hidden">
				<p>Passenger</p>

			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${not empty sessionScope.username}">
			<button
				class="w-full py-3 text-center rounded-lg bg-[#316BFF]
				 text-[#FFFFFF] text-font-bold text-xl md:w-[132px] md:mb-0 block"
				type="submit">Search</button>
		</c:when>
		<c:otherwise>
			<button data-tooltip-target="tooltip-no-arrow" type="button"
				class="w-full py-3 text-center rounded-lg bg-blue-400
				 text-[#FFFFFF] text-font-bold text-xl md:w-[132px] md:mb-0 block cursor-not-allowed"
				disabled>Search</button>
			<div id="tooltip-no-arrow" role="tooltip"
				class="absolute z-10 invisible inline-block px-3 py-2 text-sm font-medium text-white bg-gray-900 rounded-lg shadow-sm opacity-0 tooltip dark:bg-gray-700">
				Please signin to search!</div>
		</c:otherwise>
	</c:choose>

</form>

<script
	src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/tw-elements.umd.min.js"></script>
	
<script src="./js/search-bar.js"></script>