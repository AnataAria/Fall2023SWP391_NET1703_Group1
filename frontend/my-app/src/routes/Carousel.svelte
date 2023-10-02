<script lang="ts">
  // Props
  export let items = [...Array(16).keys()];
  export let scrollBy = 3;
  const paginationFactor = 350;
  const totalPaginationPixels = scrollBy * paginationFactor;
  import CourseCard from "./CourseCard.svelte";

  $: offset = 0;
  $: atStart = offset === 0;
  $: atEnd = offset <= paginationFactor * (items.length - scrollBy * 2) * -1;

  const move = (direction:number) => {
    if (direction > 0 && !atEnd) {
      offset -= totalPaginationPixels;
    } else if (direction < 0 && !atStart) {
      offset += totalPaginationPixels;
    }
  };
</script>

<h1>Recommended for you</h1>
<center>
  <main>
    <div class="items" style="transform: translateX({offset}px);">
      {#each items as item}
        <!-- <a
          href="/course/{item}"
          class="item"
          style="background-color: hsla({i * 50}deg, 75%, 55%);">{item}
        </a> -->
        <CourseCard id={item+1} isFetchManual={false}></CourseCard>
      {/each}
    </div>
  </main>
  <br />
  <button disabled={atStart} on:click={() => move(-1)}>&lsaquo; </button>
  <button disabled={atEnd} on:click={() => move(1)}> &rsaquo;</button>
</center>

<!--Style-->
<style>
  main {
    width: 1400px;
    overflow: hidden;
  }

  .items {
    display: flex;
    transition: transform 0.4s ease-in-out;
    transform: translateX(0px);
  }

  .item {
    min-width: 334px;
    height: 200px;
    margin: 0 8px;
    background-color: #2222ef;
    border-radius: 1.4rem;
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: bold;
    font-size: 10rem;
    user-select: none;
    overflow: hidden;
  }
  .item:hover {
    box-shadow: 3px 3px 8px 1px #464545;
  }

  .items .item:first-child {
    margin-left: 0;
  }

  .items .item:last-child {
    margin-right: 0;
  }

  .details {
    margin-top: 20px;
    font-style: italic;
    color: #9f9f9f;
  }
</style>
