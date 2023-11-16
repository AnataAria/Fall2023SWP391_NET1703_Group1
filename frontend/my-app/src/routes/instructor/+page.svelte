<script lang="ts">
  import axios from "axios";
  import { CurrencyHandler, GetCookie, apiBaseUrl } from "../../service";
  import { onMount } from "svelte";
  import headerImage from "$lib/assets/Header.jpg";
  import type { Course, InstructorSalary } from "$lib/types";
  import CreateCourseSection from "../CreateCourseSection.svelte";
  import CreateCourse from "../CreateCourse.svelte";
  import { Button, Popover } from "flowbite-svelte";
    import { ChevronRightOutline, QuestionCircleSolid } from "flowbite-svelte-icons";

  interface Instructorinterface {
    email: string;
    password: string;
    fullName: string;
    specialization: string;
    phone: string;
  }
  let instructorRevenue: InstructorSalary = {
      instructorInfo: {
          id: 0,
          fullName: "",
          specialization: "",
          phone: 0,
          avatar: "https://t4.ftcdn.net/jpg/04/08/24/43/360_F_408244382_Ex6k7k8XYzTbiXLNJgIL8gssebpLLBZQ.jpg"
      },
      monthlySalary: 0,
      courseSelling: 0,
      totalMoneySelling: 0
  }
  let jwtData = {
    email: "",
    role: "",
    createDate: "",
    isActive: false,
  };
  let InstructorInfo: Instructorinterface = {
      email: "",
      password: "",
      fullName: "",
      specialization: "",
      phone: ""
  };
  async function getInstructorSalary() {
    try {
      await axios
        .get(apiBaseUrl + "salary", {
          headers: {
            Authorization: `Bearer ${GetCookie("USER")}`,
          },
        })
        .then((response) => {
          if (response.status === 200) {
            console.log(response.data);
            instructorRevenue = response.data;
          }
        });
    } catch (e) {}
  }
  async function getInstructorInfo() {
    try {
      await axios
        .get(apiBaseUrl + "instructor", {
          headers: {
            Authorization: `Bearer ${GetCookie("USER")}`,
          },
        })
        .then((response) => {
          if (response.status === 200) {
            console.log(response.data);
            InstructorInfo = response.data;
          }
        });
    } catch (e) {}
  }
  let instructorCourseList: Course[] = [];
  async function getInstructorCourseList() {
    try {
      await axios
        .get(apiBaseUrl + "courses/instructor", {
          headers: {
            Authorization: `Bearer ${GetCookie("USER")}`,
          },
        })
        .then((response) => {
          if (response.status === 200) {
            instructorCourseList = response.data;
          }
        });
    } catch (e) {}
  }
  async function UserInfo() {
    const token = GetCookie("USER");
    if (token != null) {
      let header = {
        "Content-Type": "application/json",
        Accept: "application/json",
        Authorization: `Bearer ${token}`,
      };
      await axios
        .get(apiBaseUrl + "account", {
          headers: header,
        })
        .then((res) => {
          if (res.status === 200) {
            jwtData = res.data;
            console.log(jwtData);
            console.log(jwtData.role);
          }
        });
    }
  }
  onMount(() => {
    getInstructorInfo();
    getInstructorCourseList();
    getInstructorSalary();
    UserInfo();
  });
</script>

<link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
/>
<div class="bg-gray-100 pt-20">
  <div class="container mx-auto py-8">
    <div class="grid grid-cols-4 sm:grid-cols-12 gap-6 px-4">
      <!--Left-->
      <div class="col-span-4 sm:col-span-3">
        <div class="bg-white shadow rounded-lg p-6">
          <div class="flex flex-col">
            <div class="items-center">
              <img
                class="mx-auto w-2/5 rounded-full"
                src={instructorRevenue.instructorInfo.avatar}
                alt=""
              />
            </div>

            <br />
            <div class="text-center">
              <h1 class="text-2xl font-bold mb-4">Profile Information</h1>

              <div class="text-lg text-gray-500 p-0.5">
                <i class="fa fa-envelope" />Email address
              </div>
              <div class="font-medium p-0.5">{jwtData.email}</div>

              <div class="text-lg text-gray-500 p-0.5">
                <i class="fa fa-phone" />Phone number
              </div>
              <div class="font-medium p-0.5">{InstructorInfo.phone}</div>
            </div>
          </div>
          <hr class="my-6 border-t border-gray-300" />
          <div class="text-center">
            <h1 class="text-2xl font-bold mb-4"><i class="fa-solid fa-money-bill"></i>Revenue Statistics</h1>
            <div class="text-lg text-gray-500 p-0.5">
              Monthly Salary
             </div>
             <div class="font-medium p-0.5">${instructorRevenue.monthlySalary}</div>
             <div class="text-lg text-gray-500 p-0.5">
              Course sold 
              <button id="b3">
                <QuestionCircleSolid class="w-4 h-4 ml-1.5" />
                <span class="sr-only">Show information</span>
              </button>
              <Popover triggeredBy="#b3" class="w-72 text-sm font-light text-gray-500 bg-white dark:bg-gray-800 dark:border-gray-600 dark:text-gray-400" placement="bottom-start">
                <div class="p-3 space-y-2">
                  Number of users have bought courses created by this instructor
                </div>
              </Popover>
             </div>
             <div class="font-medium p-0.5">{instructorRevenue.courseSelling}</div>
             <div class="text-lg text-gray-500 p-0.5">
              Total Revenue
             </div>
             <div class="font-medium p-0.5">${instructorRevenue.totalMoneySelling}</div>
          </div>
        </div>
      </div>
      <!--Right-->
      <div class="col-span-4 sm:col-span-9">
        <div class="bg-white shadow rounded-lg p-6">
          <h1 class="text-2xl font-bold mb-4">General information</h1>
          <h2 class="text-xl font-medium mb-4">About Me</h2>
          <p class="text-gray-700">
            Hey there! I'm {InstructorInfo.fullName}, a passionate {InstructorInfo.specialization} who embarked on this captivating journey back in {jwtData.createDate}.          </p>

          <br />
          <!--1-->
          <div class="grid grid-cols-2 gap-4">
            <div>
              <div>FullName</div>
              <div class="font-medium">{InstructorInfo.fullName}</div>
            </div>
            <div>
              <div>Join Date</div>
              <div class="font-medium">{jwtData.createDate}</div>
            </div>

            <div>
              <div>Specialization</div>
              <div class="font-medium">{InstructorInfo.specialization}</div>
            </div>

            <div>
              <div>Birthday</div>
              <div class="font-medium">01-12-2003</div>
            </div>
          </div>
          <hr class="my-6 border-t border-gray-300" />
          <!--2-->
          <div>
            <div class="grid grid-cols-5 gap-2">
              <div>
                <img
                  src={headerImage}
                  class="mr-3 h-6 lg:h-20"
                  alt="Ademy Logo"
                />
              </div>
              <!-- ... -->

              <h1
                class=" text-3xl subpixel-antialiased font-bold tracking-wider text-justify text-red-400 pt-4"
              >
                My Courses
              </h1>
              <!-- ... -->
              <div />
              <div />
              <div class="pt-3 pl-10">
                <CreateCourse />
                <!-- <a
                  href="#"
                  class="inline-flex items-center px-8 w-36 h-12 text-sm text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                >
                  Add Course</a
                > -->
                <div class="flex flex-col items-center justify-center mt-2">
                  <Button href="/instructor/grading" color="blue"
                    >Grade Submission</Button
                  >
                </div>
              </div>
            </div>
          </div>
          <br />
          <div class="pr-7">
            <form>
              <label
                for="default-search"
                class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white"
                >Search</label
              >
              <div class="relative">
                <div
                  class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none"
                >
                  <svg
                    class="w-4 h-4 text-gray-500 dark:text-gray-400"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 20 20"
                  >
                    <path
                      stroke="currentColor"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"
                    />
                  </svg>
                </div>
                <input
                  type="search"
                  id="default-search"
                  class="block w-full p-4 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                  placeholder="Search Mockups, Logos..."
                  required
                />
                <button
                  type="submit"
                  class="text-white absolute right-2.5 bottom-2.5 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                  >Search</button
                >
              </div>
            </form>
          </div>
          <div>
            <br />
            <!-- This is an example component -->
            <div class=" mx-auto">
              <div class="flex flex-col pr-8">
                <div class="overflow-x-auto shadow-md sm:rounded-lg">
                  <div class="inline-block min-w-full align-middle">
                    <div class="overflow-hidden">
                      <table
                        class="w-full divide-y divide-gray-200 table-fixed dark:divide-gray-700"
                      >
                        <thead class="bg-gray-100 dark:bg-gray-700">
                          <tr>
                            <th
                              scope="col"
                              class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400"
                            >
                              Course ID
                            </th>
                            <th
                              scope="col"
                              class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400"
                            >
                              Course Name
                            </th>
                            <!-- <th
                              scope="col"
                              class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400"
                            >
                              Description
                            </th> -->
                            <th
                              scope="col"
                              class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400"
                            >
                              Duration
                            </th>
                            <th
                              scope="col"
                              class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400"
                            >
                              Price
                            </th>
                            <th scope="col" class="p-4">
                              <span class="sr-only">Edit</span>
                            </th>
                          </tr>
                        </thead>
                        <tbody
                          class="bg-white divide-y divide-gray-200 dark:bg-gray-800 dark:divide-gray-700"
                        >
                          {#each instructorCourseList as course}
                            <tr
                              class="hover:bg-gray-100 dark:hover:bg-gray-700"
                            >
                              <td
                                class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap dark:text-white overflow-ellipsis overflow-hidden ..."
                                >{course.id}</td
                              >
                              <td
                                class="py-4 px-6 text-sm font-medium text-gray-500 whitespace-nowrap dark:text-white overflow-ellipsis overflow-hidden ..."
                                style="margin-right: 100%;">{course.name}</td
                              >
                              <!-- <td
                                class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap dark:text-white overflow-ellipsis overflow-hidden ..."
                                >{course.description}</td
                              > -->
                              <td
                                class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap dark:text-white"
                                >{course.durations}</td
                              >
                              <td
                                class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap dark:text-white"
                                >{CurrencyHandler(course.price)}</td
                              >
                              <td
                                class="py-4 px-6 text-sm font-medium text-left whitespace-nowrap pr-16"
                              >
                                <a
                                  href="/instructor/course/edit?courseId={course.id}"
                                  class="text-blue-600 dark:text-blue-500 hover:underline"
                                  >Edit</a
                                >
                              </td>
                            </tr>
                          {/each}
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- -->
      </div>
    </div>
  </div>
</div>
