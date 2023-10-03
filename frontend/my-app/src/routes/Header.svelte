<script lang="ts">
  import SearchBar from "./SearchBar.svelte";
  import { onMount } from "svelte";
  import {
    Navbar,
    NavBrand,
    NavLi,
    NavUl,
    NavHamburger,
    Button,
    Input,
    Avatar,
    Dropdown,
    DropdownHeader,
    DropdownItem,
    DropdownDivider,
  } from "flowbite-svelte";
  import { SearchOutline } from "flowbite-svelte-icons";
  let status = "";
  import headerImage from "$lib/assets/Header.jpg";
  let jwts;
  function getUserCookie() {
    const name = "USER";
    const cookies = document.cookie.split(";");
    for (let i = 0; i < cookies.length; i++) {
      const cookie = cookies[i].trim();
      const cookieParts = cookie.split("=");
      const cookieName = cookieParts[0];
      if (cookieName === name) {
        return cookieParts[1];
      }
    }
    return null; // Cookie not found
  }
  function removeUserCookies(name: string) {
    const pastDate = new Date("Thu, 01 Jan 1970 00:00:00 UTC");
    document.cookie = `${name}=; expires=${pastDate.toUTCString()}; path=/;`;
  }
  function loginLogoutHandler() {
    const jwt = getUserCookie();
    if (jwt) {
      removeUserCookies("USER");
      window.location.reload();
    } else {
      window.location.href = "/login";
    }
  }
  let input = "";
  import { ShowMessage } from "../service";
  function handleSearch() {
    if (!input) {
      ShowMessage("You should enter at least 3 word for search", 3000, 1);
    } else {
      window.location.href = "/search/" + input;
    }
  }
  // onMount(() => {
  //   const jwt = getUserCookie();
  //   if (jwt) {
  //     status = "Logout";
  //   } else status = "Login";
  // });
</script>

<!-- ======= Header ======= -->
<Navbar class="px-2 sm:px-4 py-2.5 fixed w-full z-20 top-0 left-0 border-b">
  <NavBrand href="/">
    <img
      src="{headerImage}"
      class="mr-3 h-6 lg:h-20"
      alt="Ademy Logo"
    />
  </NavBrand>
  <div class="flex md:order-2">
    <Button
      color="blue"
      data-collapse-toggle="mobile-menu-3"
      aria-controls="mobile-menu-3"
      aria-expanded="false"
      class="md:hidden text-gray-500 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-700 focus:outline-none focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 rounded-lg text-sm p-2.5 mr-1"
    >
      <SearchOutline class="w-5 h-5" />
    </Button>
    <div class="hidden relative md:block">
      <div
        class="flex absolute inset-y-0 left-0 items-center pl-3 pointer-events-none"
      >
        <SearchOutline class="w-4 h-4" />
      </div>
      <form on:submit={handleSearch}>
        <Input
          id="search-navbar"
          class="pl-10"
          placeholder="Let's search..."
          bind:value={input}
        />
      </form>
    </div>
    <div class="ml-20 w-1">
      <Avatar
      id="user-drop"
      src=""
      class="cursor-pointer"
    />
    <Dropdown triggeredBy="#user-drop">
      <DropdownHeader>
        <span class="block text-sm">Bonnie Green</span>
        <span class="block truncate text-sm font-medium">name@flowbite.com</span>
      </DropdownHeader>
      <DropdownItem on:click={loginLogoutHandler}>Login</DropdownItem>
      <DropdownDivider />
      <DropdownItem>Profile</DropdownItem>
      <DropdownItem>Settings</DropdownItem>
      <DropdownItem>Earnings</DropdownItem>
      <DropdownItem>Cart</DropdownItem>
      <DropdownItem>My Learning</DropdownItem>
      <DropdownDivider />
      <DropdownItem>Sign out</DropdownItem>
    </Dropdown>
    </div>
    
    <NavHamburger />
  </div>
  <NavUl>
    <NavLi href="/">Home</NavLi>
    <NavLi href="/about">About</NavLi>
    <NavLi href="/docs/components/navbar">Navbar</NavLi>
    <NavLi href="/contact">Contact</NavLi>
  </NavUl>
</Navbar>
<!-- End Header -->
