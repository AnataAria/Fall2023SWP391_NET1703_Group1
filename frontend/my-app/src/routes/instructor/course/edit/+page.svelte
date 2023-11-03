<script lang="ts">
  import { page } from "$app/stores";
  const id: number = $page.url.searchParams.get("courseId");
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
    Label,
    Input,
    Modal,
    Select,
  } from "flowbite-svelte";
  import SpeedDial from "../../../SpeedDial.svelte";
  import Editor from "@tinymce/tinymce-svelte";

  import type { LayoutData } from "../../../$types";
  import { ExclamationCircleOutline } from "flowbite-svelte-icons";
  import axios, { AxiosError, type AxiosResponse } from "axios";
  import { GetCookie, ShowMessage, apiBaseUrl } from "../../../../service";
  import type {
    Course,
    CourseAllInfo,
    CourseContent,
    EditCourse,
    EditCourseContent,
    Section,
    SectionDetail,
  } from "$lib/types";
  import { onMount } from "svelte";
  import CreateCourseSection from "../../../CreateCourseSection.svelte";
  let editCourse = false;
  let deleteSectionModal = false;
  let deleteCourseContentModal = false;
  let sectionList: SectionDetail[] = [];
  let section: SectionDetail = {
    sectionInfo: {
      id: 0,
      sectionOrder: 0,
      title: "",
    },
    lessons: [],
  };
  let courseContent: EditCourseContent = {
    id: 0,
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
  let sections: Section = {
    id: 1,
    sectionOrder: 1,
    title: "",
  };
  let sectionDetail: SectionDetail[];
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

  let courseInfo: CourseAllInfo;

  function fetchCourseContentToUI(
    sectionData: Section,
    courseContentIn: CourseContent
  ) {
    sections.sectionOrder = sectionData.sectionOrder;
    sections.id = sectionData.id;
    sections.title = sectionData.title;
    courseContent.id = courseContentIn.id;
    courseContent.title = courseContentIn.title;
    courseContent.description = courseContentIn.description;
    courseContent.videoLink = courseContentIn.videoLink;
  }

  function fetchSectionInfo(data: SectionDetail[]) {
    data.forEach((element) => {
      sectionDetail.push(element);
    });
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
            courseInfo = response.data;
            fetchCourseInfo(response.data.courseInfo);
            sectionList = response.data.sections;
            console.log(sectionList);
            fetchSectionInfo(response.data.sections);
          }
        });
    } catch (e) {
      console.log(e);
    }
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
  async function ChangeSessionInfo() {
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
  async function ChangeCourseDetailsInfo() {
    console.log(courseContent);
    try {
      axios
        .put(apiBaseUrl + "course-content/edit", courseContent, {
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
  async function DeleteSection() {
    let res;
    let id = section.sectionInfo.id;
    console.log("section id: " + id);
    res = axios
      .delete(apiBaseUrl + "section/delete", {
        headers: {
          Authorization: `Bearer ${GetCookie("USER")}`,
        },
        params: {
          id,
        },
      })
      .then((response: AxiosResponse) => {
        if (response.status === 200) {
          ShowMessage("Delete successfully!", 3000, 2, 1);
          window.location.reload();
        }
      })
      .catch((error: AxiosError) => {
        console.log(error);
        if(error.response?.status === 404){
          ShowMessage("Please select a section to delete", 3000, 1, 1);
        }
        if(error.response?.status === 500){
          ShowMessage("There are more than 1 course content existing in this section", 3000, 1, 1);
        }
      });
  }
  async function DeleteCourseContent() {
    let res;
    let id = courseContent.id
    res = axios
      .delete(apiBaseUrl + "course-content/delete", {
        params: {
          id
        },
        headers: {
          Authorization: `Bearer ${GetCookie("USER")}`,
        }
      })
      .then((response: AxiosResponse) => {
        if (response.status === 200) {
          ShowMessage("Delete successfully!", 3000, 2, 1);
          window.location.reload();
        }
      })
      .catch((error: AxiosError) => {
        console.log(error);
        ShowMessage(`Error code: ${error.response?.status}`, 3000, 2, 1);

      });
  }
  function fetchValue() {
    const result = splitString(sectionChoice);
    if (result !== null) {
      const [sectionID, sectionName] = result;
      section.sectionInfo.id = sectionID;
      sectionChoice = sectionName;
    }
    // if (sectionChoice) {
    //     section.sectionInfo.id = sectionChoice;
    //     selectionTitle =
    //         sectionList.find((item) => {
    //             return item.sectionInfo.id === sectionChoice;
    //         })?.sectionInfo.title || "";
    // }
    console.log(section.sectionInfo.id);
  }
  let sectionChoice: string;
  let selectionTitle: string;
  function splitString(inputString: string): [number, string] | null {
    const parts = inputString.split("|");

    if (parts.length === 2) {
      return [parts[0], parts[1]];
    } else {
      return null; // Return null if the input doesn't contain exactly one '|' character
    }
  }
  export let data: LayoutData;
  let status = false;
  function On() {
    status = true;
  }
  onMount(() => {
    GetAllCourseData();
    setTimeout(() => {
      On();
    }, 2000);
  });
</script>

{#if status}
  <div class="grid grid-cols-4 gap-4 mt-10">
    <div class="col-span-1 bg-gray-400">
      <Sidebar asideClass="w-full list-none h-12">
        <SidebarWrapper>
          {#each courseInfo.sections as section}
            <SidebarDropdownWrapper
              label={section.sectionInfo.title}
              isOpen={true}
            >
              {#each section.lessons as content}
                <SidebarDropdownItem
                  label={content.title}
                  on:click={() => {
                    fetchCourseContentToUI(section.sectionInfo, content);
                  }}
                />
              {/each}
            </SidebarDropdownWrapper>
          {/each}
          <SidebarGroup />
        </SidebarWrapper>
      </Sidebar>
    </div>
    <div class="p-4 col-span-3">
      <div class="w-full">
        <div class="bg-slate-600">
          <div
            class="grid grid-cols-4 sm:grid-cols-12 gap-6 px-4 w-full h-12/12"
          >
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
                      ><Button
                        color="alternative"
                        class="border-none"
                        size="xs"
                        on:click={ChangeMode}
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
                            d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"
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
                      ><Button
                        color="alternative"
                        class="border-none"
                        size="xs"
                        on:click={ChangeView}
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
                            d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10"
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
          <div class="grid grid-cols-12">
            <div class="col-span-11">
              <h1 class="text-2xl font-bold mb-4">
                Section Information <span
                  ><Button
                    on:click={() => (deleteSectionModal = true)}
                    color="red"
                    size="xs"
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
                        d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0"
                      />
                    </svg>
                  </Button>
                  <Modal bind:open={deleteSectionModal} size="xs" autoclose>
                    <div class="text-center">
                      <ExclamationCircleOutline
                        class="mx-auto mb-4 text-gray-400 w-12 h-12 dark:text-gray-200"
                      />
                      <h3
                        class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400"
                      >
                        Are you sure you want to delete this session?
                      </h3>
                      <Button color="red" class="mr-2" on:click={DeleteSection}
                        >Yes, I'm sure</Button
                      >
                      <Button color="alternative">No, cancel</Button>
                    </div>
                  </Modal></span
                >
              </h1>
            </div>
            <div class="col-span-1">
              <CreateCourseSection {id} />
            </div>
          </div>

          <div class="w-full max-w-sm">
            <div>Section Name</div>
            <Select on:change={fetchValue} bind:value={sectionChoice}>
              <option selected>
              </option>
              {#each sectionList as sectionItem}
                <option
                  value="{sectionItem.sectionInfo.id}|{sectionItem.sectionInfo
                    .title}">{sectionItem.sectionInfo.title}</option
                >
              {/each}
            </Select>
            <div class="flex items-center border-b border-teal-500 py-2">
              <input
                class="appearance-none bg-transparent border-none w-full text-gray-700 mr-3 py-1 px-2 leading-tight focus:outline-none"
                type="text"
                placeholder=" "
                aria-label="Full name"
                bind:value={sectionChoice}
              />
              <button
                class="flex-shrink-0 bg-teal-500 hover:bg-teal-700 border-teal-500 hover:border-teal-700 text-sm border-4 text-white py-1 px-2 rounded"
                type="button"
                on:click={ChangeSessionInfo}
              >
                Save
              </button>
              <button
                class="flex-shrink-0 border-transparent border-4 text-teal-500 hover:text-teal-800 text-sm py-1 px-2 rounded"
                type="reset"
              >
                Cancel
              </button>
            </div>
          </div>
          <br />
          <h1 class="text-2xl font-bold mb-4">
            Content Information <span
              ><Button
                on:click={() => (deleteCourseContentModal = true)}
                color="red"
                size="xs"
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
                    d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0"
                  />
                </svg>
              </Button>

              <Modal bind:open={deleteCourseContentModal} size="xs" autoclose>
                <div class="text-center">
                  <ExclamationCircleOutline
                    class="mx-auto mb-4 text-gray-400 w-12 h-12 dark:text-gray-200"
                  />
                  <h3
                    class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400"
                  >
                    Are you sure you want to delete this course content? (Course
                    ID: {courseContent.id})
                  </h3>
                  <Button
                    color="red"
                    class="mr-2"
                    on:click={DeleteCourseContent}>Yes, I'm sure</Button
                  >
                  <Button color="alternative">No, cancel</Button>
                </div>
              </Modal></span
            >
          </h1>
          <div>
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
            <button
              on:click={ChangeCourseDetailsInfo}
              type="submit"
              class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
              >Submit</button
            >
          </div>
        </div>
      </div>
    </div>
  </div>
{/if}
