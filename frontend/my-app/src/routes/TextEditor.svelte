<script lang="ts">
  import Editor from "@tinymce/tinymce-svelte";
  import { Button } from "flowbite-svelte";
</script>

<main>
  <Editor
    apiKey="7gq4en8n7fdu1f8nqawf1uqup1tx0smi6v7dc3v1tf3dnhwa"
    channel="5-dev"
    modelEvents="input change undo redo"
    text="readonly-text-output"
  />
</main>
