<script lang="ts">
	import type { MonthlyData } from "$lib/types";
	import axios, { AxiosError, type AxiosResponse } from "axios";
	import {
		Chart,
		Card,
		A,
		Button,
		Dropdown,
		DropdownItem,
	} from "flowbite-svelte";
	import {
		UserGroupSolid,
		ArrowUpSolid,
		ChevronDownSolid,
		ChevronRightSolid,
	} from "flowbite-svelte-icons";
	import { CurrencyHandler, apiBaseUrl } from "../service";
	import { onMount } from "svelte";
    import { page } from "$app/stores";
	let monthlySalary: MonthlyData = {
		firstMonth: 0,
		secondMonth: 0,
		thirdMonth: 0,
		fourthMonth: 0,
		fifthMonth: 0,
		sixthMonth: 0,
		seventhMonth: 0,
		eighthMonth: 0,
		ninthMonth: 0,
		tenthMonth: 0,
		eleventhMonth: 0,
		twelfthMonth: 0,
	};
	let totalRevenue: string;
	let options = {
		colors: ["#00FFFF", "#20B2AA"],
		series: [
			{
				name: "USD",
				color: "#00FFFF",
				data: [
					{ x: "Jan", y: 0 },
					{ x: "Feb", y: 0 },
					{ x: "Mar", y: 0 },
					{ x: "Apr", y: 0 },
					{ x: "May", y: 0 },
					{ x: "Jun", y: 0 },
					{ x: "Jul", y: 0 },
					{ x: "Aug", y: 0 },
					{ x: "Sep", y: 0 },
					{ x: "Oct", y: 0 },
					{ x: "Nov", y: 0 },
					{ x: "Dec", y: 0 },
				],
			},
		],
		chart: {
			type: "bar",
			height: "320px",
			fontFamily: "Inter, sans-serif",
			toolbar: {
				show: false,
			},
		},
		plotOptions: {
			bar: {
				horizontal: false,
				columnWidth: "70%",
				borderRadiusApplication: "end",
				borderRadius: 8,
			},
		},
		tooltip: {
			shared: true,
			intersect: false,
			style: {
				fontFamily: "Inter, sans-serif",
			},
		},
		states: {
			hover: {
				filter: {
					type: "darken",
					value: 1,
				},
			},
		},
		stroke: {
			show: true,
			width: 0,
			colors: ["transparent"],
		},
		grid: {
			show: false,
			strokeDashArray: 4,
			padding: {
				left: 2,
				right: 2,
				top: -14,
			},
		},
		dataLabels: {
			enabled: false,
		},
		legend: {
			show: false,
		},
		xaxis: {
			floating: false,
			labels: {
				show: true,
				style: {
					fontFamily: "Inter, sans-serif",
					cssClass:
						"text-xs font-normal fill-gray-500 dark:fill-gray-400",
				},
			},
			axisBorder: {
				show: false,
			},
			axisTicks: {
				show: false,
			},
		},
		yaxis: {
			show: false,
		},
		fill: {
			opacity: 1,
		},
	};
	const currentYear  = new Date().getFullYear();
	const LastYear = currentYear - 1;
	const TwoYearsAgo = currentYear - 2;
	async function GetMonthlyData(getYear: number) {
		let res;
		// let year = $page.url.searchParams.get("year");
		console.log(getYear)
		res = axios
			.get(apiBaseUrl + `transaction/revenue`, {
				params: {
					year: getYear,
				},
			})
			.then((response: AxiosResponse) => {
				if (response.status === 200) {
					monthlySalary = response.data;
					console.log(monthlySalary);
					options.series[0].data = [
						{ x: "Jan", y: monthlySalary.firstMonth },
						{ x: "Feb", y: monthlySalary.secondMonth },
						{ x: "Mar", y: monthlySalary.thirdMonth },
						{ x: "Apr", y: monthlySalary.fourthMonth },
						{ x: "May", y: monthlySalary.fifthMonth },
						{ x: "Jun", y: monthlySalary.sixthMonth },
						{ x: "Jul", y: monthlySalary.seventhMonth },
						{ x: "Aug", y: monthlySalary.eighthMonth },
						{ x: "Sep", y: monthlySalary.ninthMonth },
						{ x: "Oct", y: monthlySalary.tenthMonth },
						{ x: "Nov", y: monthlySalary.eleventhMonth },
						{ x: "Dec", y: monthlySalary.twelfthMonth },
					];
					
					totalRevenue = CurrencyHandler(monthlySalary.firstMonth +
						monthlySalary.secondMonth +
						monthlySalary.thirdMonth +
						monthlySalary.fourthMonth +
						monthlySalary.fifthMonth +
						monthlySalary.sixthMonth +
						monthlySalary.seventhMonth +
						monthlySalary.eighthMonth +
						monthlySalary.ninthMonth +
						monthlySalary.tenthMonth +
						monthlySalary.eleventhMonth +
						monthlySalary.twelfthMonth);
						
				}
			})
			.catch((error: AxiosError) => {
				console.log(error);
			});
	}

	onMount(() => {
		GetMonthlyData(currentYear);
	});
</script>

<Card class="max-w-screen-2xl">
	<div
		class="flex justify-between pb-4 mb-4 border-b border-gray-200 dark:border-gray-700"
	>
		<div class="flex items-center w-max">
			<div
				class="w-12 h-12 rounded-lg bg-gray-100 dark:bg-gray-700 flex items-center justify-center mr-3"
			>
				<UserGroupSolid
					class="w-6 h-6 text-gray-500 dark:text-gray-400"
				/>
			</div>
			<div>
				<h5
					class="leading-none text-2xl font-bold text-gray-900 dark:text-white pb-1"
				>
					3.4k
				</h5>
				<p class="text-sm font-normal text-gray-500 dark:text-gray-400">
					Leads generated per week
				</p>
			</div>
		</div>
		<!-- <div>
			<span
				class="bg-green-100 text-green-800 text-xs font-medium inline-flex items-center px-2.5 py-1 rounded-md dark:bg-green-900 dark:text-green-300"
			>
				<ArrowUpSolid class="w-2.5 h-2.5 mr-1.5" />
				42.5%
			</span>
		</div> -->
	</div>
	<div class="grid grid-cols-2">
		<dl class="flex items-center">
			<dt
				class="text-gray-500 dark:text-gray-400 text-sm font-normal mr-1"
			>
				Money spent:
			</dt>
			<dd class="text-gray-900 text-sm dark:text-white font-semibold">
				{totalRevenue}
			</dd>
		</dl>
		<!-- <dl class="flex items-center justify-end">
			<dt
				class="text-gray-500 dark:text-gray-400 text-sm font-normal mr-1"
			>
				Conversion rate:
			</dt>
			<dd class="text-gray-900 text-sm dark:text-white font-semibold">
				1.2%
			</dd>
		</dl> -->
	</div>
	<Chart {options} />
	<div
		class="grid grid-cols-1 items-center border-gray-200 border-t dark:border-gray-700 justify-between"
	>
		<div class="flex justify-between items-center pt-5">
			<Button
				class="text-sm font-medium text-gray-500 dark:text-gray-400 hover:text-gray-900 text-center inline-flex items-center dark:hover:text-white bg-transparent hover:bg-transparent dark:bg-transparent dark:hover:bg-transparent focus:ring-transparent dark:focus:ring-transparent py-0"
				>Yearly Profits<ChevronDownSolid
					class="w-2.5 m-2.5 ml-1.5"
				/></Button
			>
			<Dropdown class="w-40" offset="-6">
				<DropdownItem on:click={()=>{GetMonthlyData(currentYear)}}>This Year</DropdownItem>
				<DropdownItem on:click={()=>{GetMonthlyData(LastYear)}}>Last Year</DropdownItem>
				<DropdownItem on:click={()=>{GetMonthlyData(TwoYearsAgo)}}>2 Years Ago</DropdownItem>
			</Dropdown>
			<A
				href="/"
				class="uppercase text-sm font-semibold hover:text-primary-700 dark:hover:text-primary-500 rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700 dark:focus:ring-gray-700 dark:border-gray-700 px-3 py-2 hover:no-underline"
			>
				Leads Report
				<ChevronRightSolid class="w-2.5 h-2.5 ml-1.5" />
			</A>
		</div>
	</div>
</Card>
