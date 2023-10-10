<!-- Note: This is a template file to copy and paste to wherever you want -->

<script lang="ts">
    import { Toast } from "flowbite-svelte";
    import { CheckCircleSolid, CloseCircleSolid } from "flowbite-svelte-icons";
    import { quintOut } from "svelte/easing";
    import { slide } from "svelte/transition";

    let show = false;
    let open = true;
    let counter = 6;
    let message = "";
    let errorMsg = "";
    function showMessage(value:string){
      message = "";
      errorMsg = "";
      open = true;
      counter = 6;
      timeout();
      message = value;
      }
      function showErrMessage(value:string){
      message = "";
      errorMsg = "";
      open = true;
      counter = 6;
      timeout();
      errorMsg = value;
    }
    function timeout() {
        if (--counter > 0) return setTimeout(timeout, 1000);
        open = false;
    }
</script>
{#if errorMsg != ""}
   <div>
    <Toast color="red" dismissable={false} bind:open transition={slide}>
      <svelte:fragment slot="icon">
        <CloseCircleSolid class="w-5 h-5" />
        <span class="sr-only">Error icon</span>
      </svelte:fragment>
      {errorMsg}
    </Toast>
  </div>
  {/if}
  {#if message != ""}
  <div>
    <Toast color="green" transition={slide} params={{ delay: 250, duration: 300, easing: quintOut }} dismissable={false} bind:open>
      <svelte:fragment slot="icon">
        <CheckCircleSolid class="w-5 h-5" />
        <span class="sr-only">Check icon</span>
      </svelte:fragment>
      {message}.
    </Toast>
  </div>
  {/if}