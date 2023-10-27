<script lang="ts">
  import SideBarAdmin from "../SideBarAdmin.svelte";

</script>
<div class="grid grid-cols-12">
    <div class="col-span-1">
        <SideBarAdmin/>
    </div>
    <div class="col-span-11">
        <slot/>
    </div>
</div>