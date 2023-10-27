<script lang="ts">
  import type { CourseAllInfo, CourseContent, SectionDetail } from "$lib/types";
  import axios, { Axios } from "axios";
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
  import { GetCookie, apiBaseUrl } from "../../../../service";
  import { onMount } from "svelte";
  let spanClass = "flex-1 ml-3 whitespace-nowrap";
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
  };
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
  onMount(() => {
    jwt = GetCookie("USER");
    GetAllCourseInfo();
    setTimeout(() => {
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
          <div class="col-span-2">
            <Fileupload />
          </div>
          <div class="col-span-2 flex flex-row-reverse mr-20">
            <Button
              outline
              color="red"
              on:click={() => {
                MarkCompleted();
              }}>Mark As Completed</Button
            >
            <Button outline color="green">Completed</Button>
          </div>
        </div>
        <div class="text-2xl font-bold my-8">{currenCourseContent.title}</div>
        <div class="w-12/12">
          <div class="w-11/12 h-96 bg-gray-50 border rounded-md pl-6 pt-5">
            {@html currenCourseContent.description}
          </div>
        </div>
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
                    <SidebarItem
                      label={content.title}
                      spanClass="ml-12 font"
                      activeClass=""
                      on:click={() => {
                        currenCourseContent = content;
                      }}
                    >
                      <svelte:fragment>
                        <Checkbox />
                      </svelte:fragment>
                    </SidebarItem>
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
  <Skeleton size="xxl" class="mt-8 mb-2.5" />
  <Skeleton size="xxl" class="mt-8 mb-2.5" />
  <Skeleton size="xxl" class="mt-8 mb-2.5" />
  <Skeleton size="xxl" class="mt-8 mb-2.5" />
  <Skeleton size="xxl" class="mt-8 mb-2.5" />
  <Skeleton size="xxl" class="mt-8 mb-2.5" />
  <Skeleton size="xxl" class="mt-8 mb-2.5" />
  <Skeleton size="xxl" class="mt-8 mb-2.5" />
{/if}

<style>
  .left {
    border-left: solid;
  }
</style>
