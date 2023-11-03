<script lang="ts">
  import { onMount } from "svelte";
  import { DarkMode } from "flowbite-svelte";

  let btnClass =
    "text-gray-500 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-lg text-xl p-2";
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
  import { IsLogin, apiBaseUrl } from "../service";
  import { GetCookie, Logout } from "../service";
  import headerImage from "$lib/assets/Header.jpg";
  let jwts;
  let loginStatus = false;
  let status: boolean = false;
  function removeUserCookies(name: string) {
    const pastDate = new Date("Thu, 01 Jan 1970 00:00:00 UTC");
    document.cookie = `${name}=; expires=${pastDate.toUTCString()}; path=/;`;
  }
  function loginLogoutHandler() {
    const jwt = GetCookie("USER");
    if (jwt) {
      removeUserCookies("USER");
      window.location.reload();
    } else {
      window.location.href = "/login";
    }
  }
  let input = "";
  import { ShowMessage } from "../service";
  import axios from "axios";
  // import LoginModal from "./LoginModal.svelte";
  function handleSearch() {
    if (!input) {
      ShowMessage("You should enter at least 3 word for search", 3000, 1, 1);
    } else {
      window.location.href = "/search/" + input;
    }
  }
  onMount(() => {
    if (IsLogin()) {
      status = true;
    }
    UserInfo();
  });
  let jwtData = {
    email: "",
    role: "",
    createDate: "",
    isActive: false,
  };

  async function UserInfo() {
    const token = GetCookie("USER");
    if (token != null) {
      let header = {
        "Content-Type": "application/json",
        Accept: "application/json",
        Authorization: `Bearer ${token}`,
      };
      await axios
        .get(apiBaseUrl + "account", {
          headers: header,
        })
        .then((res) => {
          if (res.status === 200) {
            jwtData = res.data;
            console.log(jwtData);
            console.log(jwtData.role);
          }
        });
    }
  }
</script>

<!-- ======= Header ======= -->
<Navbar
  class="px-2 sm:px-4 py-2.5 fixed  z-20 top-0 left-0 border-b md:flex md:justify-start"
>
  <NavBrand href="/">
    <img src={headerImage} class="mr-3 h-6 lg:h-20" alt="Ademy Logo" />
  </NavBrand>
  <div class="flex">
    <div class="hidden relative md:block">
      <div
        class="flex absolute inset-y-0 left-0 items-center pl-3 pointer-events-none"
      >
        <SearchOutline class="w-4 h-4" />
      </div>
      <form on:submit={handleSearch}>
        <Input
          id="search-navbar"
          class="pl-10 border-spacing-1 rounded-3xl h-12"
          style="width: 650px"
          placeholder="Let's search..."
          bind:value={input}
        />
      </form>
    </div>
    <NavHamburger />
  </div>
  <NavUl>
    <NavLi href="/teaching">Assign Instructor</NavLi>
    <NavLi href="/mylearning">My Learning</NavLi>
    <NavLi href="/cart">Your Cart</NavLi>
  </NavUl>
  <div class="ml-20 w-20">
    {#if status === true}
      <Avatar id="user-drop" src="" class="cursor-pointer" />
      <Dropdown triggeredBy="#user-drop">
        <DropdownHeader>
          <span class="block text-sm">User</span>
          <span class="block truncate text-sm font-medium">{jwtData.email}</span
          >
        </DropdownHeader>
        {#if jwtData.role === "INSTRUCTOR"}
          <DropdownItem
            on:click={() => {
              window.location.href = "/instructor";
            }}>Profile</DropdownItem
          >
        {:else}
          <DropdownItem
            on:click={() => {
              window.location.href = "/profile";
            }}>Profile</DropdownItem
          >
        {/if}
        <DropdownItem>Settings</DropdownItem>
        <DropdownItem>Earnings</DropdownItem>
        <DropdownItem
          on:click={() => {
            window.location.href = "/cart";
          }}>Cart</DropdownItem
        >
        <DropdownItem
          on:click={() => {
            window.location.href = "/mylearning";
          }}>My Learning</DropdownItem
        >
        <DropdownItem
          on:click={() => {
            window.location.href = "/certificate";
          }}>My Certificates</DropdownItem
        >
        <DropdownDivider />
        <DropdownItem
          on:click={() => {
            Logout();
            window.location.reload();
          }}>Sign out</DropdownItem
        >
      </Dropdown>
    {:else}
      <div class="flex justify-center space-x-10 w-full">
        <Button
          color="red"
          class="w-20"
          on:click={() => {
            loginLogoutHandler();
          }}>Login</Button
        >
        <Button
          color="alternative"
          on:click={() => {
            window.location.href = "/register";
          }}>Sign Up</Button
        >
      </div>
    {/if}
  </div>
</Navbar>
<!-- <LoginModal formModal={loginStatus}></LoginModal> -->
<!-- End Header -->
