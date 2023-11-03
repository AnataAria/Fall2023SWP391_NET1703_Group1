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
  {/each}
{:else}
  <LoadingOverlay />
{/if}
