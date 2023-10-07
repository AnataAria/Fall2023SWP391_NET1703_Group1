<script lang="ts">
  import { onMount } from "svelte";
  import CourseCard from "../../CourseCard.svelte";
  import Header from "../../Header.svelte";
  import { page } from "$app/stores";
  import { Gallery } from "flowbite-svelte";
  import axios from "axios";
  import { Button, Dropdown, DropdownItem } from "flowbite-svelte";
  import { ChevronDownOutline, ChevronDownSolid } from "flowbite-svelte-icons";
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
  let course: CourseTemplate[] = [];
  // let course = [
  //     {
  //         name: "",
  //         price: "",
  //         description: "",
  //         durations: "",
  //         instructorName: ""
  //     }
  // ]
  onMount(() => {
    searchValue = $page.params.search;
    handleSearch();
  });
  async function handleSearch() {
    try {
      await axios
        .get<CourseTemplate[]>(
          `http://localhost:9090/api/v1/courses?name=${searchValue}&maxPage=10`
        )
        .then((response) => {
          console.log(response.data);
          course = response.data;
        });
    } catch (error) {
      console.log(error);
    }
  }
</script>

<div class="bg-white">
  <div>
    <main class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
      <div
        class="flex items-baseline justify-between border-b border-gray-200 pb-6 pt-24"
      >
        <h1 class="text-4xl font-bold tracking-tight text-gray-900">
          Searching for 'Paint'
        </h1>

        <div class="flex items-center">
          <div class="relative inline-block text-left">
            <div>
              <Button>Sort<ChevronDownOutline class="group inline-flex justify-center text-sm font-medium text-gray-700 hover:text-gray-900"/></Button
              >
              <Dropdown>
                <DropdownItem>Dashboard</DropdownItem>
                <DropdownItem>Settings</DropdownItem>
                <DropdownItem>Earnings</DropdownItem>
                <DropdownItem>Sign out</DropdownItem>
              </Dropdown>
            </div>

            <!--
              Dropdown menu, show/hide based on menu state.

              Entering: "transition ease-out duration-100"
                From: "transform opacity-0 scale-95"
                To: "transform opacity-100 scale-100"
              Leaving: "transition ease-in duration-75"
                From: "transform opacity-100 scale-100"
                To: "transform opacity-0 scale-95"
            -->
          </div>

          <button
            type="button"
            class="-m-2 ml-5 p-2 text-gray-400 hover:text-gray-500 sm:ml-7"
          >
            <span class="sr-only">View grid</span>
            <svg
              class="h-5 w-5"
              aria-hidden="true"
              viewBox="0 0 20 20"
              fill="currentColor"
            >
              <path
                fill-rule="evenodd"
                d="M4.25 2A2.25 2.25 0 002 4.25v2.5A2.25 2.25 0 004.25 9h2.5A2.25 2.25 0 009 6.75v-2.5A2.25 2.25 0 006.75 2h-2.5zm0 9A2.25 2.25 0 002 13.25v2.5A2.25 2.25 0 004.25 18h2.5A2.25 2.25 0 009 15.75v-2.5A2.25 2.25 0 006.75 11h-2.5zm9-9A2.25 2.25 0 0011 4.25v2.5A2.25 2.25 0 0013.25 9h2.5A2.25 2.25 0 0018 6.75v-2.5A2.25 2.25 0 0015.75 2h-2.5zm0 9A2.25 2.25 0 0011 13.25v2.5A2.25 2.25 0 0013.25 18h2.5A2.25 2.25 0 0018 15.75v-2.5A2.25 2.25 0 0015.75 11h-2.5z"
                clip-rule="evenodd"
              />
            </svg>
          </button>
          <button
            type="button"
            class="-m-2 ml-4 p-2 text-gray-400 hover:text-gray-500 sm:ml-6 lg:hidden"
          >
            <span class="sr-only">Filters</span>
            <svg
              class="h-5 w-5"
              aria-hidden="true"
              viewBox="0 0 20 20"
              fill="currentColor"
            >
              <path
                fill-rule="evenodd"
                d="M2.628 1.601C5.028 1.206 7.49 1 10 1s4.973.206 7.372.601a.75.75 0 01.628.74v2.288a2.25 2.25 0 01-.659 1.59l-4.682 4.683a2.25 2.25 0 00-.659 1.59v3.037c0 .684-.31 1.33-.844 1.757l-1.937 1.55A.75.75 0 018 18.25v-5.757a2.25 2.25 0 00-.659-1.591L2.659 6.22A2.25 2.25 0 012 4.629V2.34a.75.75 0 01.628-.74z"
                clip-rule="evenodd"
              />
            </svg>
          </button>
        </div>
      </div>

      <section aria-labelledby="products-heading" class="pb-24 pt-6">
        <h2 id="products-heading" class="sr-only">Products</h2>

        <div class="grid grid-cols-1 gap-x-8 gap-y-10 lg:grid-cols-4">
          <!-- Filters -->
          <form class="hidden lg:block">
            <h3 class="sr-only">Categories</h3>
            <ul
              role="list"
              class="space-y-4 border-b border-gray-200 pb-6 text-sm font-medium text-gray-900"
            >
              <li>
                <a href="/">Totes</a>
              </li>
              <li>
                <a href="/">Backpacks</a>
              </li>
              <li>
                <a href="/">Travel Bags</a>
              </li>
              <li>
                <a href="/">Hip Bags</a>
              </li>
              <li>
                <a href="/">Laptop Sleeves</a>
              </li>
            </ul>
            <div class="border-b border-gray-200 py-6">
              <h3 class="-my-3 flow-root">
                <!-- Expand/collapse section button -->
                <button
                  type="button"
                  class="flex w-full items-center justify-between bg-white py-3 text-sm text-gray-400 hover:text-gray-500"
                  aria-controls="filter-section-1"
                  aria-expanded="false"
                >
                  <span class="font-medium text-gray-900">Category</span>
                  <span class="ml-6 flex items-center">
                    <!-- Expand icon, show/hide based on section open state. -->
                    <svg
                      class="h-5 w-5"
                      viewBox="0 0 20 20"
                      fill="currentColor"
                      aria-hidden="true"
                    >
                      <path
                        d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z"
                      />
                    </svg>
                    <!-- Collapse icon, show/hide based on section open state. -->
                    <svg
                      class="h-5 w-5"
                      viewBox="0 0 20 20"
                      fill="currentColor"
                      aria-hidden="true"
                    >
                      <path
                        fill-rule="evenodd"
                        d="M4 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H4.75A.75.75 0 014 10z"
                        clip-rule="evenodd"
                      />
                    </svg>
                  </span>
                </button>
              </h3>
              <!-- Filter section, show/hide based on section state. -->
              <div class="pt-6" id="filter-section-1">
                <div class="space-y-4">
                  <div class="flex items-center">
                    <input
                      id="filter-category-0"
                      name="category[]"
                      value="new-arrivals"
                      type="checkbox"
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-category-0"
                      class="ml-3 text-sm text-gray-600">New Arrivals</label
                    >
                  </div>
                  <div class="flex items-center">
                    <input
                      id="filter-category-1"
                      name="category[]"
                      value="sale"
                      type="checkbox"
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-category-1"
                      class="ml-3 text-sm text-gray-600">Sale</label
                    >
                  </div>
                  <div class="flex items-center">
                    <input
                      id="filter-category-2"
                      name="category[]"
                      value="travel"
                      type="checkbox"
                      checked
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-category-2"
                      class="ml-3 text-sm text-gray-600">Travel</label
                    >
                  </div>
                  <div class="flex items-center">
                    <input
                      id="filter-category-3"
                      name="category[]"
                      value="organization"
                      type="checkbox"
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-category-3"
                      class="ml-3 text-sm text-gray-600">Organization</label
                    >
                  </div>
                  <div class="flex items-center">
                    <input
                      id="filter-category-4"
                      name="category[]"
                      value="accessories"
                      type="checkbox"
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-category-4"
                      class="ml-3 text-sm text-gray-600">Accessories</label
                    >
                  </div>
                </div>
              </div>
            </div>
            <div class="border-b border-gray-200 py-6">
              <h3 class="-my-3 flow-root">
                <!-- Expand/collapse section button -->
                <button
                  type="button"
                  class="flex w-full items-center justify-between bg-white py-3 text-sm text-gray-400 hover:text-gray-500"
                  aria-controls="filter-section-2"
                  aria-expanded="false"
                >
                  <span class="font-medium text-gray-900">Size</span>
                  <span class="ml-6 flex items-center">
                    <!-- Expand icon, show/hide based on section open state. -->
                    <svg
                      class="h-5 w-5"
                      viewBox="0 0 20 20"
                      fill="currentColor"
                      aria-hidden="true"
                    >
                      <path
                        d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z"
                      />
                    </svg>
                    <!-- Collapse icon, show/hide based on section open state. -->
                    <svg
                      class="h-5 w-5"
                      viewBox="0 0 20 20"
                      fill="currentColor"
                      aria-hidden="true"
                    >
                      <path
                        fill-rule="evenodd"
                        d="M4 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H4.75A.75.75 0 014 10z"
                        clip-rule="evenodd"
                      />
                    </svg>
                  </span>
                </button>
              </h3>
              <!-- Filter section, show/hide based on section state. -->
              <div class="pt-6" id="filter-section-2">
                <div class="space-y-4">
                  <div class="flex items-center">
                    <input
                      id="filter-size-0"
                      name="size[]"
                      value="2l"
                      type="checkbox"
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-size-0"
                      class="ml-3 text-sm text-gray-600">2L</label
                    >
                  </div>
                  <div class="flex items-center">
                    <input
                      id="filter-size-1"
                      name="size[]"
                      value="6l"
                      type="checkbox"
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-size-1"
                      class="ml-3 text-sm text-gray-600">6L</label
                    >
                  </div>
                  <div class="flex items-center">
                    <input
                      id="filter-size-2"
                      name="size[]"
                      value="12l"
                      type="checkbox"
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-size-2"
                      class="ml-3 text-sm text-gray-600">12L</label
                    >
                  </div>
                  <div class="flex items-center">
                    <input
                      id="filter-size-3"
                      name="size[]"
                      value="18l"
                      type="checkbox"
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-size-3"
                      class="ml-3 text-sm text-gray-600">18L</label
                    >
                  </div>
                  <div class="flex items-center">
                    <input
                      id="filter-size-4"
                      name="size[]"
                      value="20l"
                      type="checkbox"
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-size-4"
                      class="ml-3 text-sm text-gray-600">20L</label
                    >
                  </div>
                  <div class="flex items-center">
                    <input
                      id="filter-size-5"
                      name="size[]"
                      value="40l"
                      type="checkbox"
                      checked
                      class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                    />
                    <label
                      for="filter-size-5"
                      class="ml-3 text-sm text-gray-600">40L</label
                    >
                  </div>
                </div>
              </div>
            </div>
          </form>

          <!-- Product grid -->
          <div class="lg:col-span-3">
            <div class="flex flex-wrap space-x-3 space-y-3">
              {#each course as item}
                <CourseCard
                  id={item.id}
                  name={item.name}
                  description={item.description}
                  price={item.price}
                  instructorName={item.instructorName}
                  isFetchManual={true}
                  duration={item.durations}
                  instructorId={item.instructorID}
                />
              {/each}
            </div>
          </div>
        </div>
      </section>
    </main>
  </div>
</div>
