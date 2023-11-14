<script lang="ts">
  import axios from "axios";
  import { onMount } from "svelte";
  import { CurrencyHandler, apiBaseUrl } from "../service";
  import { GetCookie } from "../service";
  export let id: number;
  export let name: string;
  export let price: number;
  export let description: string;
  export let duration: string;
  export let instructorName: string;
  export let instructorId: number;
  export let image_card: string;
  export let isFetchManual: boolean;
  import { Card, Rating, Badge } from "flowbite-svelte";
  let open = true;
  let counter = 6;
  let message = "";
  let errorMsg = "";
  export function showMessage(value: string) {
    message = "";
    errorMsg = "";
    open = true;
    counter = 6;
    timeout();
    message = value;
  }
  export function showErrMessage(value: string) {
    message = "";
    errorMsg = "";
    open = true;
    counter = 6;
    timeout();
    errorMsg = value;
  }
  function timeout() {
    if (--counter > 0) return setTimeout(timeout, 1000);
    open = false;
  }

  let jwtToken: string | null = "";
  let course = {
    name: "",
    price: 0,
    description: "",
    durations: "",
    instructorName: "",
    instructorID: 0,
    thumbnail_path: "",
  };
  async function handleAddCart() {
    jwtToken = GetCookie("USER");
    if (!jwtToken) {
      window.location.href = "/login";
    }
    try {
      await axios
        .get(apiBaseUrl + `cart?courseID=${id}`, {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${jwtToken}`,
          },
        })
        .then((response) => {
          if (response.status === 200) {
            showMessage("Add Cart Successfully");
          }
          if (response.status === 405) {
            showErrMessage("Add Cart Failed");
          }
        });
    } catch (error) {
      console.log(error);
      showErrMessage("Add Cart Failed");
    }
  }
  async function handleGetCourse() {
    try {
      let res = await axios
        .get(apiBaseUrl + `course?id=${id + 1}`)
        .then((response) => {
          console.log(response.data);
          course = response.data;
        });
    } catch (error) {
      console.log(error);
    }
  }
  let rating: number;
  async function getRating() {
    await axios
      .get(apiBaseUrl + `review/rating?courseID=${id}`)
      .then((response) => {
        if (response.status === 200) rating = response.data;
      });
  }
  let status = false;

  function On() {
    status = true;
  }
  onMount(() => {
    if (!isFetchManual) {
      handleGetCourse();
    } else {
      course = {
        name: name,
        price: price,
        description: description,
        durations: duration,
        instructorName: instructorName,
        instructorID: instructorId,
        thumbnail_path: image_card,
      };
      getRating();
      console.log(rating);
    }
    setTimeout(() => {
      On();
    }, 100);
  });
</script>

{#if status}
  <Card padding="none" class="w-64 h-auto">
    <a href="/course/{id}">
      <img
        class="p-11 rounded-t-sm"
        src={course.thumbnail_path}
        alt="product 1"
      />
    </a>
    <div class="px-5 pb-5">
      <a href="/course/{id}">
        <h5
          class="text-xl font-semibold tracking-tight text-gray-900 dark:text-white whitespace-nowrap w-50 overflow-hidden truncate"
        >
          {course.name}
        </h5>
      </a>
      <a href="/instructor/{1}">
        <h5
          class="text-sm font-semibold tracking-tight text-gray-900 dark:text-white"
        >
          By {course.instructorName}
        </h5>
      </a>
      <Rating {rating} class="mt-2.5 mb-5">
        <Badge slot="text" class="ml-3">4</Badge>
      </Rating>
      <div class="flex justify-between items-center">
        <span class="text-3xl font-bold text-gray-900 dark:text-white"
          >{CurrencyHandler(course.price)}</span
        >
      </div>
    </div>
  </Card>
{/if}
