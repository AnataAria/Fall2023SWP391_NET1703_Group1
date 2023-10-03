<script lang="ts">
  import { onMount } from "svelte";
  import SearchBar from "./SearchBar.svelte";
  import Header from "./Header.svelte";
  import Banner from "./Banner.svelte";
  import Carousel from "./Carousel.svelte";
  import CustomerProfile from "./CustomerProfile.svelte";
  import "../app.postcss";
  import ChangePassword from "./ChangePassword.svelte";
  import MyLearning from "./MyLearning.svelte";
  // import Footer from "./Footer.svelte";
  // import { Card } from "flowbite-svelte";
  import {
    Navbar,
    NavBrand,
    NavLi,
    NavUl,
    NavHamburger,
    Button,
    Input,
  } from "flowbite-svelte";
  import { Footer, FooterCopyright, FooterLinkGroup, FooterLink, FooterBrand, FooterIcon } from 'flowbite-svelte';
  import { FacebookSolid, GithubSolid, DiscordSolid, TwitterSolid } from 'flowbite-svelte-icons';
  // import Dribble from '../../utils/icons/Dribble.svelte';
  import { SearchOutline } from "flowbite-svelte-icons";
  // Add this to initialize the Bootstrap tooltip
  onMount(() => {});
</script>

<!-- <Header /> -->

<Navbar>
  <NavBrand href="/">
    <img
      src="/src/lib/assets/Header.jpg"
      class="mr-3 h-6 sm:h-9"
      alt="Flowbite Logo"
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
      <Input id="search-navbar" class="pl-10" placeholder="Search..." />
    </div>
    <NavHamburger />
  </div>
  <NavUl>
    <NavLi href="/" active={true}>Home</NavLi>
    <NavLi href="/about">About</NavLi>
    <NavLi href="/docs/components/navbar">Navbar</NavLi>
  </NavUl>
</Navbar>
<!-- <Banner /> -->
<Carousel />
<!-- <Footer /> -->
<Footer footerType="socialmedia">
  <div class="md:flex md:justify-between">
    <div class="mb-6 md:mb-0">
      <FooterBrand href="https://flowbite.com" src="/src/lib/assets/Header.jpg" alt="Ademy" name="Flowbite" />
    </div>
    <div class="grid grid-cols-2 gap-8 sm:gap-6 sm:grid-cols-3">
      <div>
        <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-white">Resources</h2>
        <FooterLinkGroup>
          <FooterLink liClass="mb-4" href="/">Flowbite</FooterLink>
          <FooterLink liClass="mb-4" href="/">Tailwind CSS</FooterLink>
        </FooterLinkGroup>
      </div>
      <div>
        <h2 class="mb-6 text-sm font-semibold uppercase text-gray-900 dark:text-white">Follow us</h2>
        <FooterLinkGroup>
          <FooterLink liClass="mb-4" href="/">GitHub</FooterLink>
          <FooterLink liClass="mb-4" href="/">Discord</FooterLink>
        </FooterLinkGroup>
      </div>
      <div>
        <h2 class="mb-6 text-sm font-semibold uppercase text-gray-900 dark:text-white">Legal</h2>
        <FooterLinkGroup>
          <FooterLink liClass="mb-4" href="/">Privacy Policy</FooterLink>
          <FooterLink liClass="mb-4" href="/">Terms & Conditions</FooterLink>
        </FooterLinkGroup>
      </div>
    </div>
  </div>
  <hr class="my-6 border-gray-200 sm:mx-auto dark:border-gray-700 lg:my-8" />
  <div class="sm:flex sm:items-center sm:justify-between">
    <FooterCopyright href="/" by="Flowbite™" />
    <div class="flex mt-4 space-x-6 sm:justify-center sm:mt-0">
      <FooterIcon href="/">
        <FacebookSolid class="w-4 h-4 text-gray-500 dark:text-gray-500 hover:text-gray-900 dark:hover:text-white" />
      </FooterIcon>
      <FooterIcon href="/">
        <DiscordSolid class="w-4 h-4 text-gray-500 dark:text-gray-500 hover:text-gray-900 dark:hover:text-white" />
      </FooterIcon>
      <FooterIcon href="/">
        <TwitterSolid class="w-4 h-4 text-gray-500 dark:text-gray-500 hover:text-gray-900 dark:hover:text-white" />
      </FooterIcon>
      <FooterIcon href="/">
        <GithubSolid class="w-4 h-4 text-gray-500 dark:text-gray-500 hover:text-gray-900 dark:hover:text-white" />
      </FooterIcon>
      <FooterIcon href="/">
        <!-- <Dribble /> -->
      </FooterIcon>
    </div>
  </div>
</Footer>