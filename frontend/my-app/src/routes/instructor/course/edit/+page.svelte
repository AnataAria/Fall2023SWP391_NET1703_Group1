<script lang="ts">
  import { page } from "$app/stores";
  const id = $page.url.searchParams.get("courseId");
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
  } from "flowbite-svelte";

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
  import { apiBaseUrl } from "../../../../service";
  async function GetAllCourseData() {
    try {
      await axios
        .get(apiBaseUrl + `course/all?id=${id}`)
        .then((response) => {});
    } catch (e) {}
  }
  export let data: LayoutData;
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
        <div class="grid grid-cols-4 sm:grid-cols-12 gap-6 px-4 w-full h-96">
          <!--Left-->
          <div class="col-span-1 sm:col-span-3 h-56">
            <img
              class="items-center w-full"
              alt=""
              src="data:image/jpeg;base64,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"
            />
          </div>
          <!--Right-->
          <div class="col-span-4 sm:col-span-9 h-full">
            <div class="bg-white shadow rounded-lg p-6 h-full">
              <h1 class="text-2xl font-bold mb-4">Course Information</h1>
              <br />
              <!--1-->
              <div class="grid grid-cols-2 gap-4">
                <div>
                  <div>Course ID</div>
                  <div class="font-medium">01</div>
                </div>
                <div>
                  <div>Course Name</div>
                  <div class="font-medium">Loli Course For Beginner</div>
                </div>
                <div>
                  <div>Create Date</div>
                  <input
                    type="date"
                    value="01-12-2003"
                    class="font-medium border-none"
                  />
                </div>
                <div>
                  <div>Last Update</div>
                  <input
                    type="date"
                    value="01-12-2003"
                    class="font-medium border-none pl-0 ml-0"
                  />
                </div>
              </div>
              <div>
                <div>Description</div>
              </div>
              <div />
            </div>

            <!-- -->
          </div>
        </div>
      </div>
      <div class="h-screen w-full border-spacing-1 mt-10">
        <form>
          <div class="relative z-0 w-full mb-6 group">
            <input
              type="email"
              name="floating_email"
              id="floating_email"
              class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              required
            />
            <label
              for="floating_email"
              class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
              >Email address</label
            >
          </div>
          <div class="relative z-0 w-full mb-6 group">
            <input
              type="password"
              name="floating_password"
              id="floating_password"
              class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              required
            />
            <label
              for="floating_password"
              class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
              >Password</label
            >
          </div>
          <div class="relative z-0 w-full mb-6 group">
            <input
              type="password"
              name="repeat_password"
              id="floating_repeat_password"
              class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              required
            />
            <label
              for="floating_repeat_password"
              class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
              >Confirm password</label
            >
          </div>
          <div class="grid md:grid-cols-2 md:gap-6">
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
          </div>
          <button
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
  <SpeedDialButton name="Download">
    <DownloadSolid class="w-5 h-5" />
  </SpeedDialButton>
  <SpeedDialButton name="Copy">
    <FileCopySolid class="w-5 h-5" />
  </SpeedDialButton>
</SpeedDial>
