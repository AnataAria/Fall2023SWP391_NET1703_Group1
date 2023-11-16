<script lang="ts">
  import axios from "axios";
  import { GetCookie, apiBaseUrl } from "../../service";
  import type { CertificationDto } from "$lib/types";
  import { onMount } from "svelte";
  import LoadingOverlay from "../LoadingOverlay.svelte";

  let certificates: CertificationDto[] = [];
  let status = false;

  async function getCustomerCertification() {
    try {
      const response = await axios.get(apiBaseUrl + "certificates/all", {
        headers: {
          Authorization: "Bearer " + GetCookie("USER"),
        },
      });

      if (response.status === 200) {
        certificates = response.data;
      }
    } catch (error) {
      // Handle the error, e.g., display an error message
    }
  }

  async function fetchData() {
    await getCustomerCertification();
    setTimeout(() => {
      status = true;
    }, 3000);
  }

  onMount(() => {
    fetchData();
  });
</script>

{#if status}
  <h2 class="text-4xl font-bold dark:text-white ml-20">Your Certificate</h2>
  {#if certificates.length == 0}
  <div class="flex flex-col items-center justify-center mb-12">
    <p class="text-4xl dark:text-white">Nothing here...Finish a course a get certified!</p>
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-1/2 h-64">
        <path stroke-linecap="round" stroke-linejoin="round" d="M4.26 10.147a60.436 60.436 0 00-.491 6.347A48.627 48.627 0 0112 20.904a48.627 48.627 0 018.232-4.41 60.46 60.46 0 00-.491-6.347m-15.482 0a50.57 50.57 0 00-2.658-.813A59.905 59.905 0 0112 3.493a59.902 59.902 0 0110.399 5.84c-.896.248-1.783.52-2.658.814m-15.482 0A50.697 50.697 0 0112 13.489a50.702 50.702 0 017.74-3.342M6.75 15a.75.75 0 100-1.5.75.75 0 000 1.5zm0 0v-3.675A55.378 55.378 0 0112 8.443m-7.007 11.55A5.981 5.981 0 006.75 15.75v-1.5" />
      </svg>
      
  </div>
  {/if}
  <div class="flex">
    {#each certificates as item}
      <div
        class="max-w-md mx-auto bg-white rounded-xl shadow-md overflow-hidden md:max-w-2xl m-5"
      >
        <div class="p-8">
          <div
            class="uppercase tracking-wide text-sm text-indigo-500 font-semibold"
          >
            {item.courseID.name}
          </div>
          <p class="block mt-1 text-lg leading-tight font-medium text-black">
            {item.lectureName}
          </p>
          <p class="mt-2 text-gray-500">{item.recieveDate}</p>
          <a
            class="mt-2 text-gray-500"
            href={item.path}
            target="_blank"
            rel="noopener noreferrer">Certificate Link</a
          >
        </div>
      </div>
      <div />
    {/each}
  </div>
{:else}
  <LoadingOverlay />
{/if}
