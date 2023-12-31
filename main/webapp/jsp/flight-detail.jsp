<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="mt-[138px]  relative bg-[#F9F9F9] pt-10 md:w-[75%] md:mx-auto">
	<div
		class="fixed top-[88px] left-0 bg-white w-full flex items-center justify-between px-5 py-3 border-t-2 md:hidden">
		<p class="font-bold">Flight Details</p>
		<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
			viewBox="0 0 12 12" fill="none">
			<path
				d="M7.05 6L11.775 1.275C12.075 0.975 12.075 0.525 11.775 0.225C11.475 -0.075 11.025 -0.075 10.725 0.225L6 4.95L1.275 0.225C0.975 -0.075 0.525 -0.075 0.225 0.225C-0.0749999 0.525 -0.0749999 0.975 0.225 1.275L4.95 6L0.225 10.725C0.0750001 10.875 0 11.025 0 11.25C0 11.7 0.3 12 0.75 12C0.975 12 1.125 11.925 1.275 11.775L6 7.05L10.725 11.775C10.875 11.925 11.025 12 11.25 12C11.475 12 11.625 11.925 11.775 11.775C12.075 11.475 12.075 11.025 11.775 10.725L7.05 6Z"
				fill="#3B3E44" />
		</svg>
	</div>
	<div class="md:w-[calc(100%-300px)]">
		<div class="md:bg-white md:p-8 md:rounded-lg">
			<div class="flex flex-col gap-4 mb-8 md:border-b md:pb-8">
				<div class="flex md:border-b md:pb-6">
					<div>
						<p class="font-bold text-lg">${departureCity.name() } To ${destinationCity.name() }</p>
						<p class="text-[#84878B] text-lg">${fn:length(flight.stopOvers())} stop | ${flight.travelHour()} hrs ${flight.travelMinute()} mins |
							Economy | <fmt:formatDate value="${flight.departureDate() }" pattern="dd-MM-yyyy" /></p>
					</div>
					<form action="flights" class="self-start ml-auto  px-4 py-2 font-medium bg-orange-100 hover:bg-orange-200 hover:text-orange-600 text-orange-500 rounded-lg text-sm">
						<button
							>Change
							Flight</button>
					</form>
				</div>
				<div
					class="flex flex-col gap-4 md:pt-4 md:flex-row md:gap-16 md:pb-8">
					<div class="flex items-center gap-4 md:w-[30%]">
					<img alt="airline image" src="${flight.airline().imagePath() }" class = "w-20 h-auto">
	
						<div>
							<p class="font-bold">${flight.airline().name() }</p>
							<p class="text-[#84878B]">GE-965 320</p>
						</div>
					</div>
					<div class="grid grid-cols-2 gap-6 md:grid-cols-3 ">
						<div class="flex flex-col gap-2">
							<p class="font-bold"><fmt:formatDate value="${flight.departureDate() }" pattern="hh:mm a" /></p>
							<p class="text-[#84878B]"><fmt:formatDate value="${flight.departureDate() }" pattern="EEE, dd MMM yyyy" /></p></p>
							<p class="text-[#84878B]">${departureAirport.name() },
							<br>
								${destinationCOuntry.name() }</p>
						</div>
						<div class="relative text-[#84878B] hidden md:block text-center">
							<p>${flight.travelHour()} hrs ${flight.travelMinute()} mins</p>
							<svg xmlns="http://www.w3.org/2000/svg" width="131" height="24"
								viewBox="0 0 131 24" fill="none" class="mx-auto">
<ellipse cx="3.0625" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="92.0479" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="83.0488" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="21.0596" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="110.045" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="12.0605" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="101.046" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="30.0576" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="119.043" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="39.0566" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="48.0566" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<ellipse cx="128.042" cy="12.2038" rx="2.5" ry="2.49274" fill="#BCBCBC" />
<path
									d="M74.2651 13.9442C74.6104 13.6008 74.8457 13.163 74.9411 12.6861C75.0366 12.2091 74.988 11.7147 74.8014 11.2653C74.6148 10.8159 74.2987 10.4319 73.8931 10.1618C73.4874 9.89171 73.0106 9.74776 72.5229 9.74818L69.3447 9.74785L66.8956 4.86934C66.8286 4.74126 66.7279 4.63372 66.6044 4.55822C66.4809 4.48272 66.3391 4.44208 66.1943 4.44066L63.5138 4.4291C63.3855 4.42982 63.2593 4.46131 63.1458 4.52091C63.0323 4.5805 62.9348 4.66646 62.8616 4.77152C62.7884 4.87658 62.7417 4.99766 62.7253 5.12454C62.7089 5.25143 62.7233 5.38039 62.7674 5.50054L64.3683 9.74733L61.4276 9.74702L60.9468 8.2976C60.8988 8.13712 60.8015 7.99574 60.6685 7.89349C60.5356 7.79124 60.3737 7.73332 60.2059 7.72792L58.1814 7.75027C57.9701 7.75087 57.7676 7.83483 57.6183 7.9838C57.4689 8.13278 57.3847 8.33466 57.3841 8.54537L57.3848 15.8656C57.3855 16.0763 57.4697 16.2782 57.6191 16.4272C57.7686 16.5762 57.971 16.6602 58.1823 16.6608L60.2068 16.6836C60.3757 16.6845 60.5405 16.6321 60.6776 16.5338C60.8148 16.4356 60.9172 16.2965 60.9702 16.1366L61.4507 14.6873L64.3914 14.6876L62.7914 18.9341C62.7474 19.0542 62.733 19.1832 62.7494 19.3101C62.7658 19.437 62.8126 19.558 62.8858 19.6631C62.959 19.7682 63.0565 19.8542 63.17 19.9138C63.2835 19.9734 63.4097 20.0049 63.538 20.0057L66.2072 20.006C66.3521 20.0046 66.4938 19.964 66.6173 19.8885C66.7408 19.813 66.8414 19.7055 66.9084 19.5774L69.3566 14.6994L72.5234 14.6659C72.8473 14.667 73.1681 14.6037 73.4671 14.4798C73.7661 14.3559 74.0374 14.1738 74.2651 13.9442ZM72.5176 13.0699L68.8531 13.0695C68.7082 13.0709 68.5665 13.1115 68.443 13.187C68.3195 13.2625 68.2189 13.37 68.1519 13.4981L65.7094 18.3704L64.6915 18.3703L66.2858 14.1295C66.3311 14.0091 66.3465 13.8795 66.3308 13.7519C66.315 13.6242 66.2685 13.5022 66.1952 13.3963C66.1213 13.2897 66.0224 13.2026 65.9071 13.1426C65.7918 13.0827 65.6636 13.0517 65.5335 13.0523L60.8511 13.0743C60.6839 13.0742 60.5209 13.1264 60.385 13.2235C60.2491 13.3206 60.1471 13.4577 60.0934 13.6157L59.6072 15.0255L58.9738 15.0254L58.9789 9.34636L59.6066 9.3859L60.0875 10.8353C60.1412 10.9933 60.2432 11.1304 60.3791 11.2275C60.5151 11.3247 60.6781 11.3769 60.8453 11.3768L65.539 11.366C65.6685 11.3665 65.7961 11.3357 65.911 11.2762C66.0258 11.2167 66.1245 11.1302 66.1984 11.0243C66.2724 10.9184 66.3195 10.7961 66.3356 10.668C66.3517 10.5399 66.3364 10.4098 66.291 10.2889L64.6732 6.02522L65.6912 6.02533L68.1347 10.8982C68.2017 11.0263 68.3023 11.1338 68.4258 11.2093C68.5493 11.2848 68.6911 11.3255 68.8359 11.3269L72.5005 11.3273C72.6144 11.326 72.7275 11.3475 72.8331 11.3904C72.9386 11.4333 73.0345 11.4968 73.1151 11.5772C73.1957 11.6576 73.2594 11.7533 73.3025 11.8585C73.3455 11.9638 73.367 12.0766 73.3658 12.1902C73.3701 12.3035 73.3502 12.4165 73.3073 12.5215C73.2644 12.6265 73.1995 12.7212 73.117 12.7993C73.0402 12.8819 72.9477 12.9485 72.8447 12.995C72.7418 13.0414 72.6306 13.0669 72.5176 13.0699Z"
									fill="#3B71FE" />
</svg>
						</div>
						<div class="flex flex-col gap-2">
							<p class="font-bold"><fmt:formatDate value="${flight.arrivalDate() }" pattern="hh:mm a" /></p>
							<p class="text-[#84878B]"><fmt:formatDate value="${flight.arrivalDate() }" pattern="EEE, dd MMM yyyy" /></p></p>
							<p class="text-[#84878B]">${destinationAirport.name() },
							<br>
								${departureCountry.name() }</p>
						</div>
					</div>
				</div>
				<div class="flex justify-between md:justify-start md:gap-8">
					<div class="text-center">
						<p class="text-[#3B3E44] font-semibold">Baggoge</p>
						<p class="text-[#84878B]">Adult</p>
					</div>
					<div class="text-center">
						<p class="text-[#3B3E44] font-semibold">Check in</p>
						<p class="text-[#84878B]">20Kgs</p>
					</div>
					<div class="text-center">
						<p class="text-[#3B3E44] font-semibold">Cabin</p>
						<p class="text-[#84878B]">7 Kg</p>
					</div>
					<div class="text-center">
						<p class="text-[#3B3E44] font-semibold">Meals</p>
						<p class="text-[#84878B]">Not available</p>
					</div>
				</div>
			</div>
		</div>


		<div
			class="px-8 py-6 bg-white rounded-lg md:absolute md:top-10 md:right-0">
			<div class="flex flex-col gap-4 p-2">
				<p class="text-lg font-bold">Price Details</p>
				<div class="flex justify-between">
					<p class="text-[#777E90]">1x Passenger</p>
					<p class="text-[#23262F] font-semibold">$350</p>
				</div>
				<div class="flex justify-between">
					<p class="text-[#777E90]">Tax and fee</p>
					<p class="text-[#23262F] font-semibold">$8</p>
				</div>
				<div class="flex justify-between">
					<p class="text-[#777E90]">Service free</p>
					<p class="text-[#23262F] font-semibold">$2</p>
				</div>
			</div>
			<div class="flex justify-between p-2 bg-[#d8e3ff] rounded-lg">
				<p class="text-[#23262F] font-semibold">1x Passenger</p>
				<p class="text-[#23262F] font-semibold">$350</p>
			</div>
			<div class="w-full h-px bg-slate-500 mx-auto bg-[#E7ECF3] my-4"></div>
			<div class="p-2">
				<p class="text-lg font-bold pb-2">Passengers</p>
				<p class="text-[#777E90]">1x adult 2 children</p>
			</div>
			<div class="w-full h-px bg-slate-500 mx-auto bg-[#E7ECF3] my-4"></div>
			<div class="p-2">
				<p class="text-lg font-bold pb-2">Check-in baggage</p>
				<div class="flex justify-between mb-2 text-[#777E90]">
					<p>Depature</p>
					<p>3 bags (120g total)</p>
				</div>
				<div class="flex justify-between text-[#777E90]">
					<p>Depature</p>
					<p>3 bags (120g total)</p>
				</div>
			</div>
			<div class="w-full h-px bg-slate-500 mx-auto bg-[#E7ECF3] my-4"></div>
			<div class="p-2">
				<p class="text-lg font-bold pb-2">Services</p>
				<p class="text-[#777E90]">No extra services selected</p>
			</div>
		</div>

		<div class="px-8 py-6 bg-white rounded-lg my-4 md:my-8">
			<p class="text-xl font-bold pb-4">Passenger Details</p>
			<div class="md:grid md:grid-cols-2 md:gap-8 md:pr-36">
				<div class="mb-6">
					<label for="fname"
						class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">First
						name</label> <input type="text" id="fname"
						class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
						placeholder="Vu" required>
				</div>
				<div class="mb-6">
					<label for="lname"
						class="block mb-2 text-sm font-medium text-gray-900">Last
						name</label> <input type="text" id="lname"
						class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
						placeholder="Nguyen Duy" required>
				</div>
			</div>
			<div class="md:flex md:gap-8">
				<div class="mb-6">
					<label for="countries"
						class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Gender</label>
					<select id="countries"
						class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 md:w-48">
						<option selected>Male</option>
						<option value="Female">Female</option>
					</select>
				</div>
				<div class="mb-6">
					<label for="birthday"
						class="block mb-2 text-sm font-medium text-gray-900">Birth
						Day</label>

					<div class="relative max-w-sm">
						<div
							class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
							<svg class="w-4 h-4 text-gray-500 dark:text-gray-400"
								aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
								fill="currentColor" viewBox="0 0 20 20">
        <path
									d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z" />
      </svg>
						</div>
						<input datepicker datepicker-autohide
							datepicker-format="dd/mm/yyyy" type="text"
							class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
							placeholder="Select date">
					</div>

				</div>
			</div>





		</div>


		<div class="px-8 py-6 bg-white rounded-lg my-4">
			<p class="text-xl font-bold pb-4">Contact Details</p>
			<div class="mb-6">
				<label for="email"
					class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Enter
					an email</label> <input type="email" id="email"
					class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
					placeholder="abc@gmail.com" required>
			</div>
			<div class="mb-6">
				<label for="address"
					class="block mb-2 text-sm font-medium text-gray-900">Enter
					an address name</label> <input type="text" id="address"
					class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
					placeholder="Nguyen Duy" required>
			</div>

		</div>
		<form action="confirm">
			<button type="submit"
			class="py-2 px-4 flex justify-center items-center my-6 bg-[#3B71FE] text-white md:w-[140px] w-full transition ease-in duration-200 text-center text-base font-semibold focus:outline-none focus:ring-2 focus:ring-offset-2  rounded-xl max-w-md">
			Continue</button>
		</form>



	</div>
	<div class=" mb-6 md:mt-6">
		<p class="text-xl font-bold text-center mb-4 md:mb-8 md:text-start md:text-xl">Trending Flight</p>
		<div class="grid grid-cols-1 gap-4 md:grid-cols-4">
			<div class="p-4 rounded-lg bg-white flex flex-col gap-3">
				<img alt="img" src="./images/thuysi.svg" class="rounded-lg cover">
				<p class="font-semibold">Phu yen Flight</p>
				<div class="flex items-center">
					<svg class="w-4 h-4 text-yellow-300 mr-1" aria-hidden="true"
						xmlns="http://www.w3.org/2000/svg" fill="currentColor"
						viewBox="0 0 22 20">
        <path
							d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z" />
    </svg>
					<p class="ml-2 text-sm font-bold text-gray-900 dark:text-white">4.95</p>
					<span
						class="w-1 h-1 mx-1.5 bg-gray-500 rounded-full dark:bg-gray-400"></span>
					<a href="#"
						class="text-sm font-medium text-gray-900 underline hover:no-underline dark:text-white">73
						reviews</a>
				</div>
				<div class="flex -space-x-3">
					<img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <a
						class="flex items-center justify-center w-8 h-8 text-xs font-medium text-white bg-gray-700 border-2 border-white rounded-full hover:bg-gray-600 dark:border-gray-800"
						href="#">+99</a>
				</div>
			</div>
			<div class="p-4 rounded-lg bg-white flex flex-col gap-3">
				<img alt="img" src="./images/thuysi.svg" class="rounded-lg cover">
				<p class="font-semibold">Phu yen Flight</p>
				<div class="flex items-center">
					<svg class="w-4 h-4 text-yellow-300 mr-1" aria-hidden="true"
						xmlns="http://www.w3.org/2000/svg" fill="currentColor"
						viewBox="0 0 22 20">
        <path
							d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z" />
    </svg>
					<p class="ml-2 text-sm font-bold text-gray-900 dark:text-white">4.95</p>
					<span
						class="w-1 h-1 mx-1.5 bg-gray-500 rounded-full dark:bg-gray-400"></span>
					<a href="#"
						class="text-sm font-medium text-gray-900 underline hover:no-underline dark:text-white">73
						reviews</a>
				</div>
				<div class="flex -space-x-3">
					<img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <a
						class="flex items-center justify-center w-8 h-8 text-xs font-medium text-white bg-gray-700 border-2 border-white rounded-full hover:bg-gray-600 dark:border-gray-800"
						href="#">+99</a>
				</div>
			</div>
			<div class="p-4 rounded-lg bg-white flex flex-col gap-3">
				<img alt="img" src="./images/thuysi.svg" class="rounded-lg cover">
				<p class="font-semibold">Phu yen Flight</p>
				<div class="flex items-center">
					<svg class="w-4 h-4 text-yellow-300 mr-1" aria-hidden="true"
						xmlns="http://www.w3.org/2000/svg" fill="currentColor"
						viewBox="0 0 22 20">
        <path
							d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z" />
    </svg>
					<p class="ml-2 text-sm font-bold text-gray-900 dark:text-white">4.95</p>
					<span
						class="w-1 h-1 mx-1.5 bg-gray-500 rounded-full dark:bg-gray-400"></span>
					<a href="#"
						class="text-sm font-medium text-gray-900 underline hover:no-underline dark:text-white">73
						reviews</a>
				</div>
				<div class="flex -space-x-3">
					<img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <a
						class="flex items-center justify-center w-8 h-8 text-xs font-medium text-white bg-gray-700 border-2 border-white rounded-full hover:bg-gray-600 dark:border-gray-800"
						href="#">+99</a>
				</div>
			</div>
			<div class="p-4 rounded-lg bg-white flex flex-col gap-3">
				<img alt="img" src="./images/thuysi.svg" class="rounded-lg cover">
				<p class="font-semibold">Phu yen Flight</p>
				<div class="flex items-center">
					<svg class="w-4 h-4 text-yellow-300 mr-1" aria-hidden="true"
						xmlns="http://www.w3.org/2000/svg" fill="currentColor"
						viewBox="0 0 22 20">
        <path
							d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z" />
    </svg>
					<p class="ml-2 text-sm font-bold text-gray-900 dark:text-white">4.95</p>
					<span
						class="w-1 h-1 mx-1.5 bg-gray-500 rounded-full dark:bg-gray-400"></span>
					<a href="#"
						class="text-sm font-medium text-gray-900 underline hover:no-underline dark:text-white">73
						reviews</a>
				</div>
				<div class="flex -space-x-3">
					<img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <img
						class="w-8 h-8 border-2 border-white rounded-full dark:border-gray-800"
						src="./images/profile.svg" alt=""> <a
						class="flex items-center justify-center w-8 h-8 text-xs font-medium text-white bg-gray-700 border-2 border-white rounded-full hover:bg-gray-600 dark:border-gray-800"
						href="#">+99</a>
				</div>
			</div>
		</div>
	</div>
</div>
