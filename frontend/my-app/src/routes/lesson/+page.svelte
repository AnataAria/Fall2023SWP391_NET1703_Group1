<script lang="ts">
  import type { CourseAllInfo, CourseContent, ExamStatusInfo, SectionDetail } from "$lib/types";
  import axios, { Axios, AxiosError, type AxiosResponse } from "axios";
  import {
    Sidebar,
    SidebarDropdownWrapper,
    SidebarGroup,
    SidebarItem,
    SidebarWrapper,
    Skeleton,
    Fileupload,
    Checkbox,
    Button,
  } from "flowbite-svelte";
  import { page } from "$app/stores";
  const courseID = $page.url.searchParams.get("courseID");
  import { GetCookie, ShowMessage, apiBaseUrl } from "../../service";
  import { onMount } from "svelte";
  import TextEditor from "../TextEditor.svelte";
  import LoadingOverlay from "../LoadingOverlay.svelte";
  let spanClass = "flex-1 ml-3 whitespace-nowrap";
  let openExamSubmit:boolean = false;
  let openSubmitButton:boolean = true;
  let submitted:boolean = false;
  let passed:boolean = false;
  let failed:boolean = false;
  let file: FileList;
  let formData = new FormData();
  let postIndex = 0;
  let id = 23;
  let courseInfo: CourseAllInfo;
  let courseSections: SectionDetail[];
  let currenCourseContent: CourseContent = {
    id: 1,
    title: "",
    description: "",
    videoLink: "",
    createDate: new Date(),
    courseType: ""
  };
  let examInfo:ExamStatusInfo = {
    id: 0,
    score: "",
    examStatus: "",
    artLink: "",
    comment: ""
  }
  let currentCourseContentStatus: boolean = false;
  let jwt: string | null;
  async function GetAllCourseInfo() {
    if (jwt != null) {
      try {
        await axios
          .get<CourseAllInfo>(apiBaseUrl + `course/all?id=${courseID}`, {
            headers: {
              Authorization: `Bearer ${jwt}`,
            },
          })
          .then((response) => {
            if (response.status === 200) {
              setTimeout(() => {
                courseInfo = response.data;
                console.log(courseInfo);
              }, 1000);
            }
          });
      } catch (e) {}
    } else {
      window.location.href = "/";
    }
  }
  let status = false;
  function On() {
    status = true;
  }
  async function CheckCourseContentCompleted() {
    try {
      let id: number = currenCourseContent.id;
      await axios
        .get(
          apiBaseUrl +
            `course-content-completion/course-content?courseID=${id}`,
          {
            headers: {
              Authorization: `Bearer ${jwt}`,
            },
          }
        )
        .then((response) => {
          if (response.status === 200) {
            currentCourseContentStatus = response.data;
            console.log(currenCourseContent)
          }
        });
    } catch (e) {
      console.log(currentCourseContentStatus);
    }
  }
  async function MarkCompleted() {
    if (jwt != null) {
      try {
        await axios
          .get(
            apiBaseUrl +
              `course-content-completion/completed?id=${currenCourseContent.id}`,
            {
              headers: {
                Authorization: `Bearer ${jwt}`,
              },
            }
          )
          .then((response) => {
            if (response.status === 200) {
              console.log(courseInfo);
              currentCourseContentStatus = true;
              // setTimeout(() => {
              //   console.log(courseInfo);
              // }, 1000);
            }
          });
      } catch (e) {}
    } else {
      window.location.href = "/";
    }
  }

  async function GetExamInfo() {
    let res;
    res = await axios
        .get<ExamStatusInfo>(apiBaseUrl + `exam`, {
          headers: {
            Authorization: `Bearer ${GetCookie("USER")}`
          },
          params: {
            courseContentID: currenCourseContent.id
          }
        })
          .then((response: AxiosResponse) => {
            examInfo = response.data;
            console.log(examInfo);
            if(examInfo.examStatus === "SUBMITTED"){
              openSubmitButton = false;
              submitted = true;
            }
            else if (examInfo.examStatus === "PASSED"){
              openSubmitButton = false;
              submitted = false;
              passed = true;
              // MarkCompleted();
            }
            else if (examInfo.examStatus === "FAILED"){
              openSubmitButton = true;
              submitted = false;
              passed = false;
              failed = true;
            }
            else{
              openSubmitButton = true;
              submitted = false;
              passed = false;
            }
          })
          .catch((error: AxiosError) =>{
            ShowMessage(`Error code ${error.code}`, 3000, 1, 1);
            if(error.response?.status === 420){
              ShowMessage("Exam not submitted", 3000, 1, 1);
              openSubmitButton = true;
              submitted = false;
              passed = false;
            }
          })
  }

  async function UploadImage() {
        let res;
        formData.set("file", file[0]);
        formData.set("id", currenCourseContent.id.toString())
        console.log(formData);
        res = await axios
            .post(apiBaseUrl + "course-content-completion/submit-exam", formData, {
                headers: {
                  "Content-Type": "multipart/form-data",
                  Authorization: `Bearer ${GetCookie("USER")}`,
                }
            })
            .then((response: AxiosResponse) => {
                if (response.status === 200) {
                    ShowMessage("Submit successfully", 3000, 2, 1);
                    openSubmitButton = false;
                    submitted = true;
                }
            })
            .catch((error: AxiosError) => {
                console.log(error);
                ShowMessage(`Error code ${error.code}`, 3000, 2, 1);
            });
    }
  onMount(() => {
    jwt = GetCookie("USER");
    GetAllCourseInfo();

    setTimeout(() => {
      if (courseInfo.sections.length > 0) {
        var sectionList: SectionDetail = courseInfo.sections[0];
        if (sectionList.lessons.length > 0) {
          currenCourseContent = sectionList.lessons[0];
          CheckCourseContentCompleted();
        }
      }
      On();
    }, 3000);
  });
</script>

{#if status}
  <div class="grid grid-cols-5 gap-4">
    <div class="col-span-4">
      <div class="mr-32 ml-12">
        <div>
          <iframe
            width="1220"
            height="686"
            src={currenCourseContent.videoLink}
            title="Chosen&#39;s Modded Adventure LIVE 15.5 - HÔM NAY LÀM GÌ ĐÂY"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            allowfullscreen
          />
        </div>
        <div class="grid grid-cols-4 mt-5">
          {#if openExamSubmit}
            <div class="col-span-2">
              <label class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" for="file_input">Upload file</label>
              <input bind:files={file} accept="image/png, image/jpeg" class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400" aria-describedby="file_input_help" id="file_input" type="file">
              <p class="mt-1 text-sm text-gray-500 dark:text-gray-300" id="file_input_help">Only accept PNG, JPG file</p>
              {#if submitted}
              <span class="bg-blue-100 text-blue-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-blue-900 dark:text-blue-300">Submitted</span>
              {:else if passed}
              <span class="bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-green-900 dark:text-green-300">Passed</span>
              {:else if failed}
              <span class="bg-red-100 text-red-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-red-900 dark:text-red-300">Failed</span>
              {/if}
              {#if openSubmitButton}
                  <Button outline color="blue" on:click={UploadImage}>Submit</Button>
              {/if}
            </div>
            {:else}
            <div class="col-span-2"/>
          {/if}

            <div class="col-span-2 flex flex-row-reverse mr-20">
            {#if currentCourseContentStatus && currenCourseContent.courseType === "COURSE_CONTENT"}
              <Button outline color="green">Completed</Button>
            {:else if currentCourseContentStatus && currenCourseContent.courseType === "TESTING" && examInfo.examStatus === "PASSED"}
            <Button outline color="green">Test Completed</Button>
            {:else if !currentCourseContentStatus && currenCourseContent.courseType === "TESTING"}
            <Button
            outline
            color="red"
            on:click={() => {
            }}>Test Not Completed</Button
          >
            {:else if !currentCourseContentStatus && currenCourseContent.courseType === "COURSE_CONTENT"}
              <Button
                outline
                color="red"
                on:click={() => {
                  MarkCompleted();
                }}>Mark As Completed</Button
              >
            {/if}
            <!-- {#if currentCourseContentStatus && currenCourseContent.courseType === "TESTING" && examInfo.examStatus !== "PASSED"}
              <Button outline color="green">Completed</Button>
            {:else}
              <Button
                outline
                color="red"
                on:click={() => {
                }}>Test As Completed</Button
              >
            {/if} -->
            </div>
        </div>
        <div class="text-2xl font-bold my-8">{currenCourseContent.title}</div>
        <div class="w-12/12">
          <div class="w-11/12 h-96 bg-gray-50 border rounded-md pl-6 pt-5">
            {@html currenCourseContent.description}
          </div>
        </div>
      </div>
      <div class="">
        <section class="bg-white dark:bg-gray-900 py-8 lg:py-16 antialiased">
          <div class=" mx-auto px-4">
            <div class="flex justify-between items-center mb-6">
              <h2
                class="text-lg lg:text-2xl font-bold text-gray-900 dark:text-white"
              >
                Discussion (20)
              </h2>
            </div>
            <form class="mb-6">
              <div
                class="py-2 px-4 mb-4 bg-white rounded-lg rounded-t-lg border border-gray-200 dark:bg-gray-800 dark:border-gray-700"
              >
                <label for="comment" class="sr-only">Your comment</label>
                <textarea
                  id="comment"
                  rows="6"
                  class="px-0 w-full text-sm text-gray-900 border-0 focus:ring-0 focus:outline-none dark:text-white dark:placeholder-gray-400 dark:bg-gray-800"
                  placeholder="Write a comment..."
                  required
                />
              </div>
              <button
                type="submit"
                class="inline-flex items-center py-2.5 px-4 text-xs font-medium text-center text-white bg-primary-700 rounded-lg focus:ring-4 focus:ring-primary-200 dark:focus:ring-primary-900 hover:bg-primary-800"
              >
                Post comment
              </button>
            </form>
            <article class="p-6 text-base bg-white rounded-lg dark:bg-gray-900">
              <footer class="flex justify-between items-center mb-2">
                <div class="flex items-center">
                  <p
                    class="inline-flex items-center mr-3 text-sm text-gray-900 dark:text-white font-semibold"
                  >
                    <img
                      class="mr-2 w-6 h-6 rounded-full"
                      src="https://flowbite.com/docs/images/people/profile-picture-2.jpg"
                      alt="Michael Gough"
                    />Michael Gough
                  </p>
                  <p class="text-sm text-gray-600 dark:text-gray-400">
                    <time datetime="2022-02-08" title="February 8th, 2022"
                      >Feb. 8, 2022</time
                    >
                  </p>
                </div>
                <button
                  id="dropdownComment1Button"
                  data-dropdown-toggle="dropdownComment1"
                  class="inline-flex items-center p-2 text-sm font-medium text-center text-gray-500 dark:text-gray-400 bg-white rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-50 dark:bg-gray-900 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                  type="button"
                >
                  <svg
                    class="w-4 h-4"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="currentColor"
                    viewBox="0 0 16 3"
                  >
                    <path
                      d="M2 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Zm6.041 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM14 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Z"
                    />
                  </svg>
                  <span class="sr-only">Comment settings</span>
                </button>
                <!-- Dropdown menu -->
                <div
                  id="dropdownComment1"
                  class="hidden z-10 w-36 bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600"
                >
                  <ul
                    class="py-1 text-sm text-gray-700 dark:text-gray-200"
                    aria-labelledby="dropdownMenuIconHorizontalButton"
                  >
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Edit</a
                      >
                    </li>
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Remove</a
                      >
                    </li>
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Report</a
                      >
                    </li>
                  </ul>
                </div>
              </footer>
              <p class="text-gray-500 dark:text-gray-400">
                Very straight-to-point article. Really worth time reading. Thank
                you! But tools are just the instruments for the UX designers.
                The knowledge of the design tools are as important as the
                creation of the design strategy.
              </p>
              <div class="flex items-center mt-4 space-x-4">
                <button
                  type="button"
                  class="flex items-center text-sm text-gray-500 hover:underline dark:text-gray-400 font-medium"
                >
                  <svg
                    class="mr-1.5 w-3.5 h-3.5"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 20 18"
                  >
                    <path
                      stroke="currentColor"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M5 5h5M5 8h2m6-3h2m-5 3h6m2-7H2a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h3v5l5-5h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1Z"
                    />
                  </svg>
                  Reply
                </button>
              </div>
            </article>
            <article
              class="p-6 mb-3 ml-6 lg:ml-12 text-base bg-white rounded-lg dark:bg-gray-900"
            >
              <footer class="flex justify-between items-center mb-2">
                <div class="flex items-center">
                  <p
                    class="inline-flex items-center mr-3 text-sm text-gray-900 dark:text-white font-semibold"
                  >
                    <img
                      class="mr-2 w-6 h-6 rounded-full"
                      src="https://flowbite.com/docs/images/people/profile-picture-5.jpg"
                      alt="Jese Leos"
                    />Jese Leos
                  </p>
                  <p class="text-sm text-gray-600 dark:text-gray-400">
                    <time datetime="2022-02-12" title="February 12th, 2022"
                      >Feb. 12, 2022</time
                    >
                  </p>
                </div>
                <button
                  id="dropdownComment2Button"
                  data-dropdown-toggle="dropdownComment2"
                  class="inline-flex items-center p-2 text-sm font-medium text-center text-gray-500 dark:text-gray-40 bg-white rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-50 dark:bg-gray-900 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                  type="button"
                >
                  <svg
                    class="w-4 h-4"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="currentColor"
                    viewBox="0 0 16 3"
                  >
                    <path
                      d="M2 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Zm6.041 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM14 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Z"
                    />
                  </svg>
                  <span class="sr-only">Comment settings</span>
                </button>
                <!-- Dropdown menu -->
                <div
                  id="dropdownComment2"
                  class="hidden z-10 w-36 bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600"
                >
                  <ul
                    class="py-1 text-sm text-gray-700 dark:text-gray-200"
                    aria-labelledby="dropdownMenuIconHorizontalButton"
                  >
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Edit</a
                      >
                    </li>
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Remove</a
                      >
                    </li>
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Report</a
                      >
                    </li>
                  </ul>
                </div>
              </footer>
              <p class="text-gray-500 dark:text-gray-400">
                Much appreciated! Glad you liked it ☺️
              </p>
              <div class="flex items-center mt-4 space-x-4">
                <button
                  type="button"
                  class="flex items-center text-sm text-gray-500 hover:underline dark:text-gray-400 font-medium"
                >
                  <svg
                    class="mr-1.5 w-3.5 h-3.5"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 20 18"
                  >
                    <path
                      stroke="currentColor"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M5 5h5M5 8h2m6-3h2m-5 3h6m2-7H2a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h3v5l5-5h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1Z"
                    />
                  </svg>
                  Reply
                </button>
              </div>
            </article>
            <article
              class="p-6 mb-3 text-base bg-white border-t border-gray-200 dark:border-gray-700 dark:bg-gray-900"
            >
              <footer class="flex justify-between items-center mb-2">
                <div class="flex items-center">
                  <p
                    class="inline-flex items-center mr-3 text-sm text-gray-900 dark:text-white font-semibold"
                  >
                    <img
                      class="mr-2 w-6 h-6 rounded-full"
                      src="https://flowbite.com/docs/images/people/profile-picture-3.jpg"
                      alt="Bonnie Green"
                    />Bonnie Green
                  </p>
                  <p class="text-sm text-gray-600 dark:text-gray-400">
                    <time datetime="2022-03-12" title="March 12th, 2022"
                      >Mar. 12, 2022</time
                    >
                  </p>
                </div>
                <button
                  id="dropdownComment3Button"
                  data-dropdown-toggle="dropdownComment3"
                  class="inline-flex items-center p-2 text-sm font-medium text-center text-gray-500 dark:text-gray-40 bg-white rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-50 dark:bg-gray-900 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                  type="button"
                >
                  <svg
                    class="w-4 h-4"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="currentColor"
                    viewBox="0 0 16 3"
                  >
                    <path
                      d="M2 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Zm6.041 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM14 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Z"
                    />
                  </svg>
                  <span class="sr-only">Comment settings</span>
                </button>
                <!-- Dropdown menu -->
                <div
                  id="dropdownComment3"
                  class="hidden z-10 w-36 bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600"
                >
                  <ul
                    class="py-1 text-sm text-gray-700 dark:text-gray-200"
                    aria-labelledby="dropdownMenuIconHorizontalButton"
                  >
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Edit</a
                      >
                    </li>
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Remove</a
                      >
                    </li>
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Report</a
                      >
                    </li>
                  </ul>
                </div>
              </footer>
              <p class="text-gray-500 dark:text-gray-400">
                The article covers the essentials, challenges, myths and stages
                the UX designer should consider while creating the design
                strategy.
              </p>
              <div class="flex items-center mt-4 space-x-4">
                <button
                  type="button"
                  class="flex items-center text-sm text-gray-500 hover:underline dark:text-gray-400 font-medium"
                >
                  <svg
                    class="mr-1.5 w-3.5 h-3.5"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 20 18"
                  >
                    <path
                      stroke="currentColor"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M5 5h5M5 8h2m6-3h2m-5 3h6m2-7H2a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h3v5l5-5h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1Z"
                    />
                  </svg>
                  Reply
                </button>
              </div>
            </article>
            <article
              class="p-6 text-base bg-white border-t border-gray-200 dark:border-gray-700 dark:bg-gray-900"
            >
              <footer class="flex justify-between items-center mb-2">
                <div class="flex items-center">
                  <p
                    class="inline-flex items-center mr-3 text-sm text-gray-900 dark:text-white font-semibold"
                  >
                    <img
                      class="mr-2 w-6 h-6 rounded-full"
                      src="https://flowbite.com/docs/images/people/profile-picture-4.jpg"
                      alt="Helene Engels"
                    />Helene Engels
                  </p>
                  <p class="text-sm text-gray-600 dark:text-gray-400">
                    <time datetime="2022-06-23" title="June 23rd, 2022"
                      >Jun. 23, 2022</time
                    >
                  </p>
                </div>
                <button
                  id="dropdownComment4Button"
                  data-dropdown-toggle="dropdownComment4"
                  class="inline-flex items-center p-2 text-sm font-medium text-center text-gray-500 dark:text-gray-40 bg-white rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-50 dark:bg-gray-900 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                  type="button"
                >
                  <svg
                    class="w-4 h-4"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="currentColor"
                    viewBox="0 0 16 3"
                  >
                    <path
                      d="M2 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Zm6.041 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM14 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Z"
                    />
                  </svg>
                </button>
                <!-- Dropdown menu -->
                <div
                  id="dropdownComment4"
                  class="hidden z-10 w-36 bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600"
                >
                  <ul
                    class="py-1 text-sm text-gray-700 dark:text-gray-200"
                    aria-labelledby="dropdownMenuIconHorizontalButton"
                  >
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Edit</a
                      >
                    </li>
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Remove</a
                      >
                    </li>
                    <li>
                      <a
                        href="#"
                        class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                        >Report</a
                      >
                    </li>
                  </ul>
                </div>
              </footer>
              <p class="text-gray-500 dark:text-gray-400">
                Thanks for sharing this. I do came from the Backend development
                and explored some of the tools to design my Side Projects.
              </p>
              <div class="flex items-center mt-4 space-x-4">
                <button
                  type="button"
                  class="flex items-center text-sm text-gray-500 hover:underline dark:text-gray-400 font-medium"
                >
                  <svg
                    class="mr-1.5 w-3.5 h-3.5"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 20 18"
                  >
                    <path
                      stroke="currentColor"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M5 5h5M5 8h2m6-3h2m-5 3h6m2-7H2a1 1 0 0 0-1 1v9a1 1 0 0 0 1 1h3v5l5-5h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1Z"
                    />
                  </svg>
                  Reply
                </button>
              </div>
            </article>
          </div>
        </section>
      </div>
    </div>
    <div class="left">
      <div class=" w-full font-medium">
        <Sidebar asideClass="w-full">
          {#each courseInfo.sections as sectionItem}
            <SidebarWrapper>
              <SidebarGroup>
                <SidebarDropdownWrapper
                  label={sectionItem.sectionInfo.title}
                  isOpen={true}
                  ulClass="bg-slate-200"
                  spanClass="font-bold"
                >
                  {#each sectionItem.lessons as content}
                    {#if content.courseType === "TESTING"}
                    <SidebarItem
                    label={content.title}
                    spanClass="ml-12 font"
                    activeClass=""
                    on:click={() => {
                      openExamSubmit = true;
                      currenCourseContent = content;
                      GetExamInfo();
                      CheckCourseContentCompleted();
                    }}
                  >
                    <svelte:fragment>
                      <Checkbox />
                    </svelte:fragment>
                  </SidebarItem>
                  {:else}
                  <SidebarItem
                      label={content.title}
                      spanClass="ml-12 font"
                      activeClass=""
                      on:click={() => {
                        openExamSubmit = false;
                        currenCourseContent = content;
                        CheckCourseContentCompleted();
                      }}
                    >
                      <svelte:fragment>
                        <Checkbox />
                      </svelte:fragment>
                    </SidebarItem>
                    {/if}
                  {/each}
                </SidebarDropdownWrapper>
              </SidebarGroup>
            </SidebarWrapper>
          {/each}
        </Sidebar>
      </div>
    </div>
  </div>
{:else}
  <LoadingOverlay />
{/if}

<style>
  .left {
    border-left: solid;
  }
</style>
