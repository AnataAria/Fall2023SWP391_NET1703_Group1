<script lang="ts">
  import axios from "axios";
  import CourseCard from "./CourseCard.svelte";
  import { onMount } from "svelte";
  import { page } from "$app/stores";
  import { apiBaseUrl } from "../service";

  interface CourseTemplate {
    id: number;
    name: string;
    price: number;
    description: string;
    durations: string;
    instructorID: number;
    instructorName: string;
    thumbnail_path: string;
  }
  let searchValue: string;
  let course: CourseTemplate[] = [];
  onMount(() => {
    handlePull();
  });
  async function handlePull() {
    try {
      await axios
        .get<CourseTemplate[]>(apiBaseUrl + `courses?maxPage=20`)
        .then((response) => {
          console.log(response.data);
          course = response.data;
        });
    } catch (error) {
      console.log(error);
    }
  }
</script>

<div class="mt-32 mt-10 mb-10">
  <h1 class="mb-2 mt-0 text-5xl font-medium leading-tight text-primary">
    Course Most Choices
  </h1>
  <div class="media-scroller snaps-inline">
    {#each course as item}
      <div class="media-element">
        <CourseCard
          id={item.id}
          name={item.name}
          description={item.description}
          price={item.price}
          instructorId={item.instructorID}
          instructorName={item.instructorName}
          duration={item.durations}
          image_card={item.thumbnail_path}
          isFetchManual={true}
        />
      </div>
    {/each}
  </div>
</div>

<style>
  /* @import "https://unpkg.com/open-props";
  @import "https://unpkg.com/open-props/normalize.min.css"; */

  .media-scroller {
    --_spacer: var(--size-3);
    display: grid;
    gap: var(--_spacer);
    grid-auto-flow: column;
    grid-auto-columns: 21%;

    padding: 0 var(--_spacer) var(--_spacer);

    overflow-x: auto;
    overscroll-behavior-inline: contain;
  }

  .media-scroller--with-groups {
    grid-auto-columns: 80%;
  }

  .media-group {
    display: grid;
    gap: var(--_spacer);
    grid-auto-flow: column;
  }

  .media-element {
    display: grid;
    grid-template-rows: min-content;
    gap: var(--_spacer);
    padding: var(--_spacer);
    /* background: var(--surface-2); */
    border-radius: var(--radius-2);
    box-shadow: var(--shadow-2);
  }

  .media-element > img {
    inline-size: 100%;
    aspect-ratio: 16 / 9;
    object-fit: cover;
  }

  .snaps-inline {
    scroll-snap-type: inline mandatory;
    scroll-padding-inline: var(--_spacer, 1rem);
  }

  .snaps-inline > * {
    scroll-snap-align: start;
  }

  /* general styling */

  .container {
    inline-size: min(100% - 4rem, 70rem);
    margin-inline: auto;
  }

  .flow {
    display: grid;
    gap: var(--size-3);
  }

  .page-header {
    padding-block: var(--size-9);
    margin-block-end: var(--size-9);
    /* background: var(--gradient-16); */
    color: var(--gray-0);
    box-shadow: var(--shadow-2);
  }

  .page-title {
    font-size: var(--font-size-fluid-3);
  }

  .page-subtitle {
    font-size: var(--font-size-fluid-1);
  }

  .section-title {
    padding-inline-start: var(--size-6);
    margin-block: var(--size-9) var(--size-3);
  }
</style>
