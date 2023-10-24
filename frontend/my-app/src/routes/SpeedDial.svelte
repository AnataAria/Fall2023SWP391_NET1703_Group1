<script lang="ts">
    import CreateCourseSection from "./CreateCourseSection.svelte";
    import {
        SpeedDial,
        Listgroup,
        ListgroupItem,
        SpeedDialButton,
    } from "flowbite-svelte";
    import {
        PenSolid,
        ShareNodesSolid,
        PrintSolid,
        DownloadSolid,
        FileCopySolid,
        PlusSolid,
    } from "flowbite-svelte-icons";
</script>

<SpeedDial
    color="purpleToPink"
    gradient
    defaultClass="absolute right-0 bottom-6 text-left"
>
    <SpeedDialButton
        name="Add"
        class="rounded-full border-4 border-gray-300 text-left"
    >
        <CreateCourseSection />
    </SpeedDialButton>
</SpeedDial>
