<script lang="ts">
  import type { SectionMinDetail} from '$lib/types';
    import { Sidebar, SidebarGroup, SidebarItem, SidebarWrapper, SidebarDropdownItem, SidebarDropdownWrapper } from 'flowbite-svelte';
    import { ChartPieSolid, ShoppingCartSolid, ChevronDoubleUpOutline, ChevronDoubleDownOutline, BagSolid } from 'flowbite-svelte-icons';
  import { onMount } from 'svelte';
    export let instructorCourseList:SectionMinDetail[];
</script>
<div class="flex justify-center">
    <Sidebar class="w-full" >
      {#each instructorCourseList  as item}
        <SidebarWrapper>
        <SidebarGroup>
          <SidebarDropdownWrapper label="{item.sectionName}" isOpen={true} ulClass="bg-slate-200" spanClass="font-bold">
            {#each item.courseContentNames  as content}
              <SidebarItem label={content} spanClass="ml-12 font" activeClass="">
                <svelte:fragment slot="icon">
          <BagSolid class="w-5 h-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" />
        </svelte:fragment>
              </SidebarItem>
            {/each}
          </SidebarDropdownWrapper>
        </SidebarGroup>
      </SidebarWrapper>
      {/each}
    </Sidebar>
</div>