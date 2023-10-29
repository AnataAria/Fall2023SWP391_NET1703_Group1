<script lang="ts">
  import { onMount } from "svelte";
  import "../app.postcss";
  import UserLandingPage from "./UserLandingPage.svelte";
  import Carousel from "./Carousel.svelte";
  import CardScrollContainer from "./CardScrollContainer.svelte";
  import { GetCookie } from "../service";
  import TextEditor from "./TextEditor.svelte";
  let loginStatus = false;
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
      <CardScrollContainer />
    </div>
  </div>
{:else}
  <UserLandingPage />
{/if}

