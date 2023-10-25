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
