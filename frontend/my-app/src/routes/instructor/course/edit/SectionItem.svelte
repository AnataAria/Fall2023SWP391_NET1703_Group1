<script lang="ts">
  import {
    Button,
    SidebarCta,
    SidebarDropdownItem,
    SidebarDropdownWrapper,
  } from "flowbite-svelte";
  import { MailBoxSolid, ShoppingCartSolid } from "flowbite-svelte-icons";
  import type { SectionDetail } from "$lib/types";
  import { onMount } from "svelte";
  export let data: SectionDetail;
  onMount(() => {

  });
</script>

<SidebarDropdownWrapper label="Introduction" isOpen={true}>
  <SidebarDropdownItem label="Before We Start" />
  <SidebarDropdownItem label="Before We Start x2" />
  <SidebarDropdownItem label="Before We Start x3" />
</SidebarDropdownWrapper>
