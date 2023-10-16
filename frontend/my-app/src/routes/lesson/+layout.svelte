<script>
	import { Sidebar, SidebarGroup, SidebarItem, SidebarWrapper, SidebarDropdownItem, SidebarDropdownWrapper } from 'flowbite-svelte';
    import { ChartPieSolid, ShoppingCartSolid, ChevronDoubleUpOutline, ChevronDoubleDownOutline } from 'flowbite-svelte-icons';
    export let data;
	let spanClass = 'flex-1 ml-3 whitespace-nowrap';		
</script>

<div class="layout">
	<main>
		<slot />
	</main>

	<aside>
		<Sidebar>
			<SidebarWrapper>
			  <SidebarGroup>
				<SidebarDropdownWrapper label="Lesson">
				  {#each data.summaries as {slug, title}}
							  <SidebarItem
								  label={title}
								  href="/lesson/{slug}"
							  />
						  {/each}
				</SidebarDropdownWrapper>
			  </SidebarGroup>
			</SidebarWrapper>
		  </Sidebar>

	</aside>
</div>

<style>
	@media (min-width: 640px) {
		.layout {
			display: grid;
			gap: 2em;
			grid-template-columns: 1fr 16em;
		}
	}
</style>