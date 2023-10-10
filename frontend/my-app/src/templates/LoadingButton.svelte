<script>

    import { Button, Spinner } from "flowbite-svelte";

</script>

<!-- Note: This is a template file to copy and paste to wherever you want -->
<div id="loader" hidden>
    <Button color="red" class='flex flex-wrap items-center gap-2 w-full'>
      <Spinner class="mr-3" size="4" color="white" />
      Loading ...
    </Button>
  </div>