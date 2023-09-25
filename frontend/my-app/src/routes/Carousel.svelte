<script>
	// Props
	export let items = [...Array(16).keys()];
	export let scrollBy = 3;
  
	const paginationFactor = 350;
	const totalPaginationPixels = scrollBy * paginationFactor;
  
	$: offset = 0;
	$: atStart = offset === 0;
	$: atEnd = offset <= paginationFactor * (items.length - scrollBy*2) * -1;
  
	const move = direction => {
	  if (direction > 0 && !atEnd) {
		offset -= totalPaginationPixels;
	  } else if (direction < 0 && !atStart) {
		offset += totalPaginationPixels;
	  }
	};
  </script>
  
  <main>
	<div class="items" style="transform: translateX({offset}px);">
	  {#each items as item, i}
	  <div class="item" style="background-color: hsla({i * 50}deg, 75%, 55%);">{item}</div>
	  {/each}
	</div>
  </main>
  <br/>
  <button disabled={atStart} on:click="{() => move(-1)}">&lsaquo; </button>
  <button disabled={atEnd} on:click="{() => move(1)}"> &rsaquo;</button>
  
  
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
	  background-color: #ef4322;
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