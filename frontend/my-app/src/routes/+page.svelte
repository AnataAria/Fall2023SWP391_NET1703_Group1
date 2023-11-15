<script lang="ts">
  import { onMount } from "svelte";
  import "../app.postcss";
  import UserLandingPage from "./UserLandingPage.svelte";
  import Carousel from "./Carousel.svelte";
  import CardScrollContainer from "./CardScrollContainer.svelte";
  import { GetCookie } from "../service";
  import PartnerBanner from "./PartnerBanner.svelte";
  let loginStatus = false;
  import { SpeedDial, Listgroup, ListgroupItem } from "flowbite-svelte";
  import {
    DotsHorizontalOutline,
    ShareNodesSolid,
    PrintSolid,
    DownloadSolid,
    FileCopySolid,
  } from "flowbite-svelte-icons";
  function checkLogin() {
    if (GetCookie("USER") != null) loginStatus = true;
    else loginStatus = false;
  }
  onMount(() => {
    checkLogin();
  });
</script>

{#if loginStatus}
  <Carousel />
  <div class="flex justify-center">
    <div class="w-11/12">
      <PartnerBanner />
      <CardScrollContainer />
    </div>
  </div>
{:else}
  <UserLandingPage />
{/if}
