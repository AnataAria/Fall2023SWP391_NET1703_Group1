<script lang="ts">
  import { onMount } from 'svelte';
  import { Table, TableBody, TableBodyCell, TableBodyRow, TableHead, TableHeadCell, TableSearch, Button, Dropdown, DropdownItem, Checkbox, ButtonGroup } from 'flowbite-svelte';
  import { Section } from 'flowbite-svelte-blocks';
  import { PlusSolid, ChevronDownSolid, FilterSolid, ChevronRightOutline, ChevronLeftOutline } from 'flowbite-svelte-icons';
  import { derived, writable } from 'svelte/store';

  let paginationData  =[
    {"id":1,"Email":"eeee","role":"Staff","Status":true,"Account Status":true,"Last Login":"10/11/2023"},
    {"id":2,"Email":"aaaa","role":"Customer","Status":false,"Account Status":true,"Last Login":"10/11/2023"},
    {"id":3,"Email":"aaaa","role":"Staff","Status":true,"Account Status":false,"Last Login":"10/11/2023"},
    {"id":4,"Email":"cccc","role":"Instructor","Status":true,"Account Status":true,"Last Login":"10/11/2023"},
    {"id":5,"Email":"bbbb","role":"Customer","Status":false,"Account Status":false,"Last Login":"10/11/2023"},
    {"id":6,"Email":"dddd","role":"Staff","Status":true,"Account Status":true,"Last Login":"10/11/2023"},
    {"id":7,"Email":"eeee","role":"Staff","Status":true,"Account Status":true,"Last Login":"10/11/2023"},
    {"id":8,"Email":"aaaa","role":"Customer","Status":false,"Account Status":true,"Last Login":"10/11/2023"},
    {"id":9,"Email":"aaaa","role":"Staff","Status":true,"Account Status":false,"Last Login":"10/11/2023"},
    {"id":10,"Email":"cccc","role":"Instructor","Status":true,"Account Status":true,"Last Login":"10/11/2023"},
    {"id":11,"Email":"bbbb","role":"Customer","Status":false,"Account Status":false,"Last Login":"10/11/2023"},
    {"id":12,"Email":"dddd","role":"Staff","Status":true,"Account Status":true,"Last Login":"10/11/2023"},
    {"id":13,"Email":"eeee","role":"Staff","Status":true,"Account Status":true,"Last Login":"10/11/2023"},
    {"id":14,"Email":"aaaa","role":"Customer","Status":false,"Account Status":true,"Last Login":"10/11/2023"},
    {"id":15,"Email":"aaaa","role":"Staff","Status":true,"Account Status":false,"Last Login":"10/11/2023"},
  ]


  let divClass='bg-white dark:bg-gray-800 relative shadow-md sm:rounded-lg overflow-hidden';
  let innerDivClass='flex flex-col md:flex-row items-center justify-between space-y-3 md:space-y-0 md:space-x-4 p-4';
  let searchClass='w-full md:w-1/2 relative';
  let svgDivClass='absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none';
  let classInput="text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2  pl-10";

  let categorys = [{"role":"All",},{"role":"Staff",},{"role":"Customer"},{"role":"Instructor"}]
  let searchTerm = '';
  let currentPosition = 0;
  const itemsPerPage = 10;
  const showPage = 5;
  let totalPages = 0;
  let pagesToShow: any[] = [];
  let totalItems = paginationData.length;
  let startPage=0;
  let endPage=0;
  
  const updateDataAndPagination = () => {
    const currentPageItems = paginationData.slice(currentPosition, currentPosition + itemsPerPage);
    renderPagination(currentPageItems.length);
  }

  const loadNextPage = () => {
    if (currentPosition + itemsPerPage < paginationData.length) {
      currentPosition += itemsPerPage;
      updateDataAndPagination();
    }
  }

  const loadPreviousPage = () => {
    if (currentPosition - itemsPerPage >= 0) {
      currentPosition -= itemsPerPage;
      updateDataAndPagination();
    }
  }

  const renderPagination = (totalItems: number) => {
    totalPages = Math.ceil(paginationData.length / itemsPerPage);
    const currentPage = Math.ceil((currentPosition + 1) / itemsPerPage);

    startPage = currentPage - Math.floor(showPage / 2);
    startPage = Math.max(1, startPage);
    endPage = Math.min(startPage + showPage - 1, totalPages);

    pagesToShow = Array.from({ length: endPage - startPage + 1 }, (_, i) => startPage + i);
  }

  const goToPage = (pageNumber:  number) => {
    currentPosition = (pageNumber - 1) * itemsPerPage;
    updateDataAndPagination();
  }

  $: startRange = currentPosition + 1;
  $: endRange = Math.min(currentPosition + itemsPerPage, totalItems);

  onMount(() => {
    
    // Call renderPagination when the component initially mounts
    renderPagination(paginationData.length);

  });
  
  $: currentPageItems = paginationData.slice(currentPosition, currentPosition + itemsPerPage);
  $: filteredItems = paginationData.filter((item) => item.Email.toLowerCase().indexOf(searchTerm.toLowerCase()) !== -1);
  


</script>


<Section  classSection='bg-gray-50 dark:bg-gray-900 p-3 sm:p-5'>
    <TableSearch placeholder="Search" hoverable={true} bind:inputValue={searchTerm} {divClass} {innerDivClass} {searchClass} {classInput} >

      <TableHead>
        <TableHeadCell padding="px-4 py-3" class="text-lg" scope="col">ID</TableHeadCell>
        <TableHeadCell padding="px-4 py-3" class="text-lg" scope="col">Email</TableHeadCell>
        <TableHeadCell padding="px-4 py-3" class="text-lg" scope="col">Role</TableHeadCell>
        <TableHeadCell padding="px-4 py-3" class="text-lg" scope="col">Status</TableHeadCell>
        <TableHeadCell padding="px-4 py-3" class="text-lg" scope="col">Last Login</TableHeadCell>
        <TableHeadCell padding="px-4 py-3" class="text-lg" scope="col">Acount status</TableHeadCell>
        <TableHeadCell padding="px-4 py-3" class="text-lg" scope="col">Action</TableHeadCell>

      </TableHead>
      <TableBody  >
        {#if searchTerm !== ''}
          {#each filteredItems as item (item.id)}
          <TableBodyRow>
            <TableBodyCell tdClass="px-4 py-3" class="text-lg">{item.id}</TableBodyCell>
            <TableBodyCell tdClass="px-4 py-3" class="text-lg">{item.Email}</TableBodyCell>
            <TableBodyCell tdClass="px-4 py-3" class="text-lg">{item.role}</TableBodyCell>
            
            {#if item.Status==true}
              <TableBodyCell tdClass="px-4 py-3" class="text-emerald-400 text-lg">Online</TableBodyCell>
            {:else}
              <TableBodyCell tdClass="px-4 py-3" class="text-red-600 text-lg">Offline</TableBodyCell>
            {/if} 
            <TableBodyCell tdClass="px-4 py-3">{item['Last Login']}</TableBodyCell>
            {#if item['Account Status']==true}
            <TableBodyCell tdClass="px-4 py-3" class="text-lg">enable</TableBodyCell>
            <TableBodyCell tdClass="px-4 py-3"><Button color="red" pill>Delete</Button></TableBodyCell>
          {:else}
            <TableBodyCell tdClass="px-4 py-3" class="text-lg">disable</TableBodyCell>
            <TableBodyCell tdClass="px-4 py-3"><Button color="green" pill>Enable</Button></TableBodyCell>
          {/if} 
          </TableBodyRow>
          {/each}
        {:else}
          {#each currentPageItems as item (item.id)}
            <TableBodyRow>
              <TableBodyCell tdClass="px-4 py-3" class="text-lg">{item.id}</TableBodyCell>
              <TableBodyCell tdClass="px-4 py-3" class="text-lg">{item.Email}</TableBodyCell>
              <TableBodyCell tdClass="px-4 py-3" class="text-lg">{item.role}</TableBodyCell>
              
              {#if item.Status==true}
                <TableBodyCell tdClass="px-4 py-3" class="text-emerald-400 text-lg">Online</TableBodyCell>
              {:else}
                <TableBodyCell tdClass="px-4 py-3" class="text-red-600 text-lg">Offline</TableBodyCell>
              {/if} 
              <TableBodyCell tdClass="px-4 py-3">{item['Last Login']}</TableBodyCell>
              {#if item['Account Status']==true}
              <TableBodyCell tdClass="px-4 py-3" class="text-lg">enable</TableBodyCell>
              <TableBodyCell tdClass="px-4 py-3"><Button color="red" pill on:click>Delete</Button></TableBodyCell>
            {:else}
              <TableBodyCell tdClass="px-4 py-3" class="text-lg">disable</TableBodyCell>
              <TableBodyCell tdClass="px-4 py-3"><Button color="green" pill on:click>Enable</Button></TableBodyCell>
            {/if} 
            </TableBodyRow>
          {/each}
        {/if}
      </TableBody>
      <div slot="footer" class="flex flex-col md:flex-row justify-between items-start md:items-center space-y-3 md:space-y-0 p-4" aria-label="Table navigation">
      <span class="text-sm font-normal text-gray-500 dark:text-gray-400">
        Showing
        <span class="font-semibold text-gray-900 dark:text-white">{startRange}-{endRange}</span>
        of
        <span class="font-semibold text-gray-900 dark:text-white">{totalItems}</span>
      </span>
        <ButtonGroup>
          <Button on:click={loadPreviousPage} disabled={currentPosition === 0}><ChevronLeftOutline size='xs' class='m-1.5'/></Button>
          {#each pagesToShow as pageNumber}
            <Button on:click={() => goToPage(pageNumber)}>{pageNumber}</Button>
          {/each}
          <Button on:click={loadNextPage} disabled={ totalPages === endPage }><ChevronRightOutline size='xs' class='m-1.5'/></Button>
        </ButtonGroup>
      </div>
    </TableSearch>
</Section>