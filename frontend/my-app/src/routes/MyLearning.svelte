<script lang="ts">
  import axios from "axios";

  import { Rating, Badge, Progressbar } from "flowbite-svelte";
  import { GetCookie, apiBaseUrl } from "../service";
  import { onMount } from "svelte";
  let i = 0;
  let percent: number;
  let rating = 5;
  let title = "My Wife";
  let url = "/";
  let img_url =
    "https://gameranx.com/wp-content/uploads/2022/10/Screenshot-1249.png";
  let instructor = "Thang";
  percent = 90;
  let jwt: string | null = "";
  type CourseLearning = {
    courseInfo: CourseTemplate;
    finishCoursePercent: number;
  };
  interface CourseTemplate {
    id: number;
    name: string;
    price: number;
    description: string;
    durations: string;
    instructorID: number;
    instructorName: string;
  }
  let searchValue: string;
  let myCourse: CourseLearning[] = [];
  async function GetLearningCourse() {
    try {
      await axios
        .get(apiBaseUrl + "mylearning", {
          headers: {
            Authorization: `Bearer ${jwt}`,
          },
        })
        .then((response) => {
          if (response.status === 200) {
            myCourse = response.data;
          }
        });
    } catch (e) {}
  }
  onMount(() => {
    jwt = GetCookie("USER");
    GetLearningCourse();
  });
</script>

<head
  ><link
    href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap"
    rel="stylesheet"
  />
</head>
<div class="container mx-auto mt-24 mb-10">
  <h1
    class="mb-4 text-3xl font-extrabold text-gray-900 dark:text-white md:text-5xl lg:text-6xl"
  >
    <span
      class="text-transparent bg-clip-text bg-gradient-to-r to-emerald-600 from-sky-400"
      >My</span
    > Learning
  </h1>
  {#if myCourse.length == 0}
  <div class="flex flex-col items-center justify-center mb-12">
    <p class="text-4xl dark:text-white">Nothing here... Head to <a href="/" class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Home</a> page and get some courses!</p>
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-1/2 h-64">
        <path stroke-linecap="round" stroke-linejoin="round" d="M4.26 10.147a60.436 60.436 0 00-.491 6.347A48.627 48.627 0 0112 20.904a48.627 48.627 0 018.232-4.41 60.46 60.46 0 00-.491-6.347m-15.482 0a50.57 50.57 0 00-2.658-.813A59.905 59.905 0 0112 3.493a59.902 59.902 0 0110.399 5.84c-.896.248-1.783.52-2.658.814m-15.482 0A50.697 50.697 0 0112 13.489a50.702 50.702 0 017.74-3.342M6.75 15a.75.75 0 100-1.5.75.75 0 000 1.5zm0 0v-3.675A55.378 55.378 0 0112 8.443m-7.007 11.55A5.981 5.981 0 006.75 15.75v-1.5" />
      </svg>
      
  </div>
  {/if}
</div>
{#each myCourse as course}
  <div class="p-10 ml-20 mr-auto px-48 w-11/12">

    <a
      href="/lesson?courseID={course.courseInfo.id}"
      class="bg-white rounded-lg shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700"
    >
      <div class=" w-full lg:max-w lg:flex">
        <div
          class="h-48 lg:h-auto lg:w-2/4 flex-none bg-cover rounded-t lg:rounded-t-none lg:rounded-l text-center overflow-hidden"
          style="background-image: url('{img_url}')"
          title="Mountain"
        />
        <div
          class="border-r border-b border-l border-gray-400 lg:border-l-0 lg:border-t lg:border-gray-400 bg-white rounded-b lg:rounded-b-none lg:rounded-r p-4 flex flex-col justify-between leading-normal"
        >
          <div class="mb-8">
            <div class="text-gray-900 font-bold text-xl mb-2">
              {course.courseInfo.name}
            </div>
            <p class="text-gray-700 text-base">
              {@html course.courseInfo.description}
            </p>
          </div>
          <div class="text-sm">
            <p class="text-gray-900 leading-none">
              {course.courseInfo.instructorName}
            </p>
          </div>
          <Rating {rating} size={24} class="mt-2.5 mb-5">
            <Badge slot="text" class="ml-3">{rating}</Badge>
          </Rating>
          <Progressbar
            progress={course.finishCoursePercent}
            size="h-4"
            color="red"
            labelInside
          />
        </div>
      </div>
    </a>
  </div>
{/each}
