<script lang="ts">
  import { page } from "$app/stores";
  import axios, { AxiosError } from "axios";
  import { onMount } from "svelte";
  import { GetCookie, ShowMessage, apiBaseUrl } from "../../../service";
  import SectionBar from "../../SectionBar.svelte";
  let course = $page.params.id;
  import type {
    CourseMinDetail,
    Review,
    ReviewsPagination,
  } from "../../../lib/types";
  import {
    Button,
    Pagination,
    PaginationItem,
    Rating,
    RatingComment,
  } from "flowbite-svelte";
  import { ArrowLeftOutline, ArrowRightOutline } from "flowbite-svelte-icons";
  // export let id;
  let isBought: boolean = false;
  async function isCourseBought() {
    const jwtToken = GetCookie("USER");
    try {
      let res = await axios
        .get(apiBaseUrl + `mylearning/check?courseID=${course}`, {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${jwtToken}`,
          },
        })
        .then((response) => {
          console.log(response.data);
          if (response.status === 200) {
            isBought = response.data;
          }
        });
    } catch (error) {
      console.log(error);
    }
  }
  let courseForm = {
    name: "",
    price: "",
    description: "",
    durations: "",
    instructorName: "",
  };
  let datain: CourseMinDetail = [];
  let rating: number = 5;

  async function handleGetCourse() {
    try {
      let res = await axios
        .get(apiBaseUrl + `course/info?id=${course}`)
        .then((response) => {
          console.log(response.data);

          datain = response.data;
          console.log(datain);
        });
      await axios
        .get(apiBaseUrl + `review/rating?courseID=${course}`)
        .then((response) => {
          if (response.status === 200) rating = response.data;
        });
    } catch (error) {
      console.log(error);
    }
  }
  let status = false;
  function On() {
    status = true;
  }
  async function addToCart() {
    const jwtToken = GetCookie("USER");
    if (!jwtToken) {
      window.location.href = "/login";
    }
    try {
      await axios
        .get(apiBaseUrl + `cart?courseID=${course}`, {
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${jwtToken}`,
          },
        })
        .then((response) => {
          if (response.status === 200) {
            // showMessage("Add Cart Successfully");
            ShowMessage("Add Cart Successfully", 3000, 2, 1);
          }
        });
    } catch (error: any) {
      console.log(error);
      if (error.response.status === 409) {
        ShowMessage("Cart Already Bought", 3000, 1, 1);
      }
      if (error.response.status === 405) {
        ShowMessage("Cart Already In Cart List", 3000, 1, 1);
      } else {
        ShowMessage("Internal error, please try again!", 3000, 1, 1);
      }
      // showErrMessage("Add Cart Failed");
    }
  }
  onMount(() => {
    isCourseBought();
    handleGetCourse();
    getCourseComment(0, 5);
    setTimeout(() => {
      On();
    }, 1000);
  });

  let reviewPagination: ReviewsPagination = {
    content: [],
    pageable: {
      pageNumber: 0,
      pageSize: 0,
      sort: {
        unsorted: false,
        sorted: false,
        empty: false,
      },
      offset: 0,
      unpaged: false,
      paged: false,
    },
    totalElements: 0,
    totalPages: 0,
    last: false,
    numberOfElements: 0,
    first: false,
    size: 0,
    number: 0,
    sort: {
      unsorted: false,
      sorted: false,
      empty: false,
    },
    empty: true,
  };
  async function getCourseComment(page: number, maxPage: number) {
    try {
      await axios
        .get(
          apiBaseUrl +
            `reviews?courseID=${course}&maxPage=${maxPage}&page=${page}`
        )
        .then((response) => {
          if (response.status === 200) {
            reviewPagination = response.data;
            console.log(reviewPagination);
          }
        });
    } catch (error: any) {
      console.log(error);
    }
  }
  function createComment(reviewComment: Review) {
    return (comment = {
      id: reviewComment.id,
      user: {
        name: reviewComment.customer.fullName,
        img: {
          src: reviewComment.customer.fullName,
          alt: reviewComment.customer.fullName,
        },
      },
      total: 5,
      rating: reviewComment.rating,
      heading: "",
      address: "Udemy",
      datetime: reviewComment.feedbackDate,
    });
  }
  let comment = {
    id: "1",
    user: {
      name: "Jese Leos",
      img: {
        src: "/images/profile-picture-2.webp",
        alt: "Jese Leos",
      },
    },
    total: 5,
    rating: 4.5,
    heading: "Thinking to buy another one!",
    address: "the UK",
    datetime: "2022-03-25",
  };
  const previous = () => {
    getCourseComment(
      reviewPagination.pageable.pageNumber - 1,
      reviewPagination.pageable.pageSize
    );
  };
  const next = () => {
    getCourseComment(
      reviewPagination.pageable.pageNumber + 1,
      reviewPagination.pageable.pageSize
    );
  };
</script>

{#if status}
  <section class="text-gray-700 body-font overflow-hidden bg-white">
    <div class="container px-5 py-24 mx-auto">
      <div class="lg:w-4/5 mx-auto flex flex-wrap">
        <img
          alt="ecommerce"
          class="lg:w-1/2 w-full object-cover object-center rounded border border-gray-200"
          src="https://static.miraheze.org/bluearchivewiki/0/0f/Arisu.png?version=8fe2ae44d97dabab9a4d147a3bbd158c"
        />
        <div class="lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0">
          <h2 class="text-sm title-font text-gray-500 tracking-widest">
            COURSE NAME
          </h2>
          <h1 class="text-gray-900 text-3xl title-font font-medium mb-1">
            {datain.courseInfo.name}
          </h1>
          <span class="text-gray-600 ml-3"
            >By {datain.courseInfo.instructorName}</span
          >
          <div class="flex mb-4">
            <Rating {rating}>
              <p
                slot="text"
                class="ml-2 text-sm font-medium text-gray-500 dark:text-gray-400"
              >
                {Number(rating.toFixed(1))} out of 5
              </p>
            </Rating>
            <!-- <span class="flex items-center">
              <svg
                fill="currentColor"
                stroke="currentColor"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                class="w-4 h-4 text-red-500"
                viewBox="0 0 24 24"
              >
                <path
                  d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
                />
              </svg>
              <svg
                fill="currentColor"
                stroke="currentColor"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                class="w-4 h-4 text-red-500"
                viewBox="0 0 24 24"
              >
                <path
                  d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
                />
              </svg>
              <svg
                fill="currentColor"
                stroke="currentColor"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                class="w-4 h-4 text-red-500"
                viewBox="0 0 24 24"
              >
                <path
                  d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
                />
              </svg>
              <svg
                fill="currentColor"
                stroke="currentColor"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                class="w-4 h-4 text-red-500"
                viewBox="0 0 24 24"
              >
                <path
                  d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
                />
              </svg>
              <svg
                fill="none"
                stroke="currentColor"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                class="w-4 h-4 text-red-500"
                viewBox="0 0 24 24"
              >
                <path
                  d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"
                />
              </svg>
              <span class="text-gray-600 ml-3">4 Reviews</span>
            </span> -->
            <span class="flex ml-3 pl-3 py-2 border-l-2 border-gray-200">
              <a class="text-gray-500">
                <svg
                  fill="currentColor"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  class="w-5 h-5"
                  viewBox="0 0 24 24"
                >
                  <path
                    d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"
                  />
                </svg>
              </a>
              <a class="ml-2 text-gray-500">
                <svg
                  fill="currentColor"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  class="w-5 h-5"
                  viewBox="0 0 24 24"
                >
                  <path
                    d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"
                  />
                </svg>
              </a>
              <a class="ml-2 text-gray-500">
                <svg
                  fill="currentColor"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  class="w-5 h-5"
                  viewBox="0 0 24 24"
                >
                  <path
                    d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"
                  />
                </svg>
              </a>
            </span>
          </div>
          <div class="leading-relaxed text-left">
            {@html datain.courseInfo.description}
          </div>
          <div
            class="flex mt-6 items-center pb-5 border-b-2 border-gray-200 mb-5"
          >
            <div class="flex ml-6 items-center">
              <div class="relative">
                <span
                  class="absolute right-0 top-0 h-full w-10 text-center text-gray-600 pointer-events-none flex items-center justify-center"
                >
                  <svg
                    fill="none"
                    stroke="currentColor"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    class="w-4 h-4"
                    viewBox="0 0 24 24"
                  >
                    <path d="M6 9l6 6 6-6" />
                  </svg>
                </span>
              </div>
            </div>
          </div>
          <div class="flex pb-5">
            <span class="title-font font-medium text-2xl text-gray-900"
              >${datain.courseInfo.price}</span
            >
            {#if !isBought}
              <button
                on:click={() => {
                  addToCart();
                }}
                class="flex ml-auto text-white bg-red-500 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded"
                >Add To Cart</button
              >
            {:else}
              <Button
                on:click={() => {
                  window.location.href = `/lesson?courseID=${course}`;
                }}
                class="flex ml-auto text-white bg-blue-800 border-0 py-2 px-6 focus:outline-none"
                >Go To Lesson</Button
              >
            {/if}
            <!-- <button
              on:click={() => {
                addToCart();
              }}
              class="flex ml-auto text-white bg-red-500 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded"
              >Add To Cart</button
            > -->
            <button
              class="rounded-full w-10 h-10 bg-gray-200 p-0 border-0 inline-flex items-center justify-center text-gray-500 ml-4"
            >
              <svg
                fill="currentColor"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                class="w-5 h-5"
                viewBox="0 0 24 24"
              >
                <path
                  d="M20.84 4.61a5.5 5.5 0 00-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 00-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 000-7.78z"
                />
              </svg>
            </button>
          </div>
          <div class="block pt-5 border-t-2 w-full">
            <span class="text-gray-600 ml-3" />
            <SectionBar instructorCourseList={datain.sectionList} />
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="align-middle">
    <div class="text-gray-700 body-font mt-3 mb-8">
      <h1 class="text-gray-900 text-3xl title-font font-medium mb-1">
        Reviews
      </h1>
    </div>
    <div class="w-12/12 overflow-y-scroll h-96">
      {#each reviewPagination.content as reviewItem}
        <div class="ml-12 mt-5 mb-5">
          <article>
            <div class="flex items-center mb-4 space-x-4">
              <img
                class="w-10 h-10 rounded-full"
                src="/docs/images/people/profile-picture-5.jpg"
                alt=""
              />
              <div class="space-y-1 font-medium dark:text-white">
                <p>
                  {reviewItem.customer.fullName}
                  <time
                    datetime="2014-08-16 19:00"
                    class="block text-sm text-gray-500 dark:text-gray-400"
                    >Joined on {reviewItem.customer.joinDate}</time
                  >
                </p>
              </div>
            </div>
            <div class="flex items-center mb-1">
              <Rating rating={reviewItem.rating} />
            </div>
            <footer class="mb-5 text-sm text-gray-500 dark:text-gray-400">
              <p>
                Review date <time datetime="2017-03-03 19:00"
                  >{reviewItem.feedbackDate}</time
                >
              </p>
            </footer>
            <p class="mb-2 text-gray-500 dark:text-gray-400">
              {reviewItem.comment}
            </p>
          </article>
        </div>
      {/each}
    </div>
    <div class="flex justify-center w-12/12">
      <div class="flex space-x-3">
        {#if reviewPagination.first !== true}
          <PaginationItem on:click={previous}>Previous</PaginationItem>
        {/if}
        {#if reviewPagination.last !== true}
          <PaginationItem on:click={next}>Next</PaginationItem>
        {/if}
      </div>
    </div>
  </section>
{/if}
