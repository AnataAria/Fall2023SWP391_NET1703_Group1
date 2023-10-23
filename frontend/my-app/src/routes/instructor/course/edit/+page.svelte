<script lang="ts">
  import { page } from "$app/stores";
  const id = $page.url.searchParams.get("courseId");
  let apiKey = "7gq4en8n7fdu1f8nqawf1uqup1tx0smi6v7dc3v1tf3dnhwa";
  let conf = {
    plugins: [
      "a11ychecker",
      "advlist",
      "advcode",
      "advtable",
      "autolink",
      "checklist",
      "export",
      "lists",
      "link",
      "image",
      "charmap",
      "preview",
      "anchor",
      "searchreplace",
      "visualblocks",
      "powerpaste",
      "fullscreen",
      "formatpainter",
      "insertdatetime",
      "media",
      "table",
      "help",
      "wordcount",
    ],
    toolbar:
      "undo redo | a11ycheck casechange blocks | bold italic backcolor | alignleft aligncenter alignright alignjustify | " +
      "bullist numlist checklist outdent indent | removeformat | code table help",
  };
  import {
    Button,
    SidebarWrapper,
    Sidebar,
    SidebarGroup,
    SidebarItem,
    SidebarDropdownWrapper,
    SidebarDropdownItem,
    SpeedDial,
    SpeedDialButton,
    Label,
    Input,
  } from "flowbite-svelte";
  import Editor from "@tinymce/tinymce-svelte";

  import type { LayoutData } from "../../../$types";
  import {
    ChartPieSolid,
    ChevronDoubleDownOutline,
    ChevronDoubleUpOutline,
    DownloadSolid,
    FileCopySolid,
    PrintSolid,
    ShareNodesSolid,
    ShoppingCartSolid,
  } from "flowbite-svelte-icons";
  import SectionItem from "./SectionItem.svelte";
  import axios from "axios";
  import { GetCookie, apiBaseUrl } from "../../../../service";
  import type { Course, EditCourse, EditCourseContent } from "$lib/types";
  import { onMount } from "svelte";
  let editCourse = false;
  let sessionName = "";
  let courseContent: EditCourseContent = {
    id: 1,
    description: "",
    title: "",
    videoLink: "",
  };
  let course: EditCourse = {
    id: 1,
    description: "",
    durations: "3 weeks",
    name: "Nahida",
    price: 500,
  };
  function ChangeMode() {
    editCourse = true;
  }
  function ChangeView() {
    editCourse = false;
  }
  if (editCourse) {
  }
  function fetchCourseInfo(data: Course) {
    course.id = data.id;
    course.description = data.description;
    course.durations = data.durations;
    course.name = data.name;
    course.price = data.price;
  }
  async function GetAllCourseData() {
    try {
      await axios
        .get(apiBaseUrl + `course/all?id=${id}`, {
          headers: {
            Authorization: `Bearer ${GetCookie("USER")}`,
          },
        })
        .then((response) => {
          if (response.status === 200) {
            fetchCourseInfo(response.data.courseInfo);
          }
        });
    } catch (e) {}
  }
  async function ChangeCourseInfo() {
    try {
      await axios
        .put(apiBaseUrl + "course/edit", course, {
          headers: {
            Authorization: `Bearer ${GetCookie("USER")}`,
          },
        })
        .then((response) => {
          if (response.status === 200) {
            alert("Course updated");
            ChangeView();
          }
        });
    } catch (e) {}
  }
  async function ChangeSessionInfo() {}
  async function ChangeCourseDetailsInfo() {
    try {
      axios
        .put(apiBaseUrl + "/course-content/edit", courseContent, {
          headers: {
            Authorization: `Bearer ${GetCookie("USER")}`,
          },
        })
        .then((response) => {
          if (response.status === 200) {
            alert("Course Content updated");
            ChangeView();
          }
        });
    } catch (e) {}
  }
  export let data: LayoutData;
  onMount(() => {
    GetAllCourseData();
  });
</script>

<div class="grid grid-cols-4 gap-4 mt-10">
  <div class="col-span-1 bg-pink-500">
    <Sidebar asideClass="w-full">
      <SidebarWrapper>
        <SidebarGroup>
          <SectionItem />
        </SidebarGroup>
      </SidebarWrapper>
    </Sidebar>
  </div>
  <div class="p-4 col-span-3">
    <div class="w-full">
      <div class="bg-slate-600">
        <div class="grid grid-cols-4 sm:grid-cols-12 gap-6 px-4 w-full h-12/12">
          <!--Left-->
          <div class="col-span-1 sm:col-span-3 h-56">
            <img class="items-center w-full" alt="" src="" />
          </div>
          <!--Right-->
          {#if !editCourse}
            <div class="col-span-4 sm:col-span-9 h-full">
              <div class="bg-white shadow rounded-lg p-6 h-full">
                <h1 class="text-2xl font-bold mb-4">
                  Course Information <span
                    ><Button color="alternative" size="xs" on:click={ChangeMode}
                      ><svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke-width="1.5"
                        stroke="currentColor"
                        class="w-6 h-6"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125"
                        />
                      </svg>
                    </Button></span
                  >
                </h1>
                <br />
                <!--1-->
                <div class="grid grid-cols-2 gap-4">
                  <div id="viewmode">
                    <div>Course ID</div>
                    <div class="font-medium">{course.id}</div>
                  </div>
                  <div id="editmode" hidden>
                    <Label class="space-y-2">
                      <span>Course ID</span>
                      <Input type="text" bind:value={course.id} size="sm" />
                    </Label>
                  </div>
                  <div id="viewmode">
                    <div>Course Name</div>
                    <div class="font-medium">{course.name}</div>
                  </div>
                  <div id="editmode" hidden>
                    <Label class="space-y-2">
                      <span>Course Name</span>
                      <Input type="text" bind:value={course.name} size="sm" />
                    </Label>
                  </div>
                  <div>
                    <div>Price</div>
                    <input
                      disabled
                      id="editinput"
                      type="number"
                      bind:value={course.price}
                      class="font-medium border-none"
                    />
                  </div>
                  <div>
                    <div>Duration</div>
                    <div class="font-medium">{course.durations}</div>
                    <!-- <input
                      disabled
                      id="editinput"
                      type="text"
                      bind:value={course.durations}
                      class="font-medium border-none pl-0 ml-0"
                    /> -->
                  </div>
                </div>
                <div>
                  <div>Description</div>
                  <Editor
                    {apiKey}
                    channel="5"
                    {conf}
                    bind:value={course.description}
                    disabled
                  />
                  <!-- <textarea
                    disabled
                    bind:value={course.description}
                    id="editinput"
                    rows="4"
                    class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    placeholder="Write your thoughts here..."
                  /> -->
                </div>
                <div />
              </div>

              <!-- -->
            </div>
          {/if}

          {#if editCourse}
            <div class="col-span-4 sm:col-span-9 h-full">
              <div class="bg-white shadow rounded-lg p-6 h-full">
                <h1 class="text-2xl font-bold mb-4">
                  Course Information <span
                    ><Button color="alternative" size="xs" on:click={ChangeView}
                      ><svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke-width="1.5"
                        stroke="currentColor"
                        class="w-6 h-6"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L6.832 19.82a4.5 4.5 0 01-1.897 1.13l-2.685.8.8-2.685a4.5 4.5 0 011.13-1.897L16.863 4.487zm0 0L19.5 7.125"
                        />
                      </svg>
                    </Button></span
                  >
                </h1>
                <br />
                <!--1-->
                <div class="grid grid-cols-2 gap-4">
                  <div id="editmode">
                    <Label class="space-y-2">
                      <span>Course ID</span>
                      <Input type="text" bind:value={course.id} size="sm" />
                    </Label>
                  </div>
                  <div id="editmode">
                    <Label class="space-y-2">
                      <span>Course Name</span>
                      <Input type="text" bind:value={course.name} size="sm" />
                    </Label>
                  </div>
                  <div>
                    <div>Price</div>
                    <input
                      id="editinput"
                      type="number"
                      bind:value={course.price}
                      class="font-medium border-none"
                    />
                  </div>
                  <div>
                    <div>Duration</div>
                    <input
                      id="editinput"
                      type="text"
                      bind:value={course.durations}
                      class="font-medium border-none pl-0 ml-0"
                    />
                  </div>
                </div>
                <div>
                  <div>Description</div>
                  <Editor
                    {apiKey}
                    channel="5"
                    {conf}
                    bind:value={course.description}
                  />
                  <!-- <textarea
                    bind:value={course.description}
                    id="editinput"
                    rows="4"
                    class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    placeholder="Write your thoughts here..."
                  /> -->
                </div>
                <Button pill color="red" on:click={ChangeCourseInfo}
                  >Save</Button
                >
                <div />
              </div>
              <!-- -->
            </div>
          {/if}
        </div>
      </div>
      <div class="h-screen w-full border-spacing-1 mt-10">
        <h1 class="text-2xl font-bold mb-4">Content Information</h1>
        <form class="w-full max-w-sm">
          <div>Session Name</div>
          <div class="flex items-center border-b border-teal-500 py-2">
            <input
              class="appearance-none bg-transparent border-none w-full text-gray-700 mr-3 py-1 px-2 leading-tight focus:outline-none"
              type="text"
              placeholder=" "
              aria-label="Full name"
            />
            <button
              class="flex-shrink-0 bg-teal-500 hover:bg-teal-700 border-teal-500 hover:border-teal-700 text-sm border-4 text-white py-1 px-2 rounded"
              type="button"
            >
              Save
            </button>
            <button
              on:submit={ChangeSessionInfo}
              class="flex-shrink-0 border-transparent border-4 text-teal-500 hover:text-teal-800 text-sm py-1 px-2 rounded"
              type="reset"
            >
              Cancel
            </button>
          </div>
        </form>
        <br />
        <form>
          <div class="relative z-0 w-full mb-6 group">
            <input
              type="text"
              name="floating_text"
              id="floating_text"
              class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              required
              bind:value={courseContent.title}
            />
            <label
              for="floating_email"
              class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
              >Title</label
            >
          </div>
          <div class="relative z-0 w-full mb-6 group">
            <div>
              <div>Description</div>
              <Editor
                {apiKey}
                channel="5"
                {conf}
                bind:value={courseContent.description}
              />
              <!-- <textarea
                bind:value={courseContent.description}
                id="editinput"
                rows="4"
                class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="Write your thoughts here..."
              /> -->
            </div>
          </div>
          <div class="relative z-0 w-full mb-6 group">
            <input
              type="url"
              name="video_url"
              id="floating_video_url"
              class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              required
              bind:value={courseContent.videoLink}
            />
            <label
              for="floating_repeat_password"
              class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
              >Video URL</label
            >
          </div>
          <!-- <div class="grid md:grid-cols-2 md:gap-6">
            <div class="relative z-0 w-full mb-6 group">
              <input
                type="text"
                name="floating_first_name"
                id="floating_first_name"
                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                placeholder=" "
                required
              />
              <label
                for="floating_first_name"
                class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                >First name</label
              >
            </div>
            <div class="relative z-0 w-full mb-6 group">
              <input
                type="text"
                name="floating_last_name"
                id="floating_last_name"
                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                placeholder=" "
                required
              />
              <label
                for="floating_last_name"
                class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                >Last name</label
              >
            </div>
          </div>
          <div class="grid md:grid-cols-2 md:gap-6">
            <div class="relative z-0 w-full mb-6 group">
              <input
                type="tel"
                pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
                name="floating_phone"
                id="floating_phone"
                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                placeholder=" "
                required
              />
              <label
                for="floating_phone"
                class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                >Phone number (123-456-7890)</label
              >
            </div>
            <div class="relative z-0 w-full mb-6 group">
              <input
                type="text"
                name="floating_company"
                id="floating_company"
                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                placeholder=" "
                required
              />
              <label
                for="floating_company"
                class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                >Company (Ex. Google)</label
              >
            </div>
          </div> -->
          <button
            on:submit={ChangeCourseDetailsInfo}
            type="submit"
            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
            >Submit</button
          >
        </form>
      </div>
    </div>
  </div>
</div>
<SpeedDial defaultClass="absolute right-6 bottom-6">
  <SpeedDialButton name="Add Section">
    <ShareNodesSolid class="w-5 h-5" />
  </SpeedDialButton>
  <SpeedDialButton name="Add Course Content">
    <PrintSolid class="w-5 h-5" />
  </SpeedDialButton>
</SpeedDial>
