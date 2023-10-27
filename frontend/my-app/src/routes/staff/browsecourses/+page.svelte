<script lang="ts">
  import BrowseCourses from "../../BrowseCourses.svelte";
  import SideBarAdmin from "../../SideBarAdmin.svelte";
  import { page } from "$app/stores";
  const courseID: number | null = $page.url.searchParams.get("courseID");
</script>

<BrowseCourses {courseID} />
