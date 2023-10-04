<script lang="ts">
  import { onMount } from "svelte";
  import SearchBar from "./SearchBar.svelte";
  import Header from "./Header.svelte";
  import "../app.postcss";
  import Footer from "./Footer.svelte";
  import CourseCard from "./CourseCard.svelte";
  import Cart from "./Cart.svelte";
  import Profile from "./Profile.svelte";
  import CartItem from "./CartItem.svelte";
  import Star from "./Star.svelte";
  
  export const images = [
    {
      alt: 'Cosmic timetraveler',
      src: 'https://static.miraheze.org/bluearchivewiki/0/0f/Arisu.png?version=8fe2ae44d97dabab9a4d147a3bbd158c',
      title: 'cosmic-timetraveler-pYyOZ8q7AII-unsplash.com'
    },
    {
      alt: 'Cristina Gottardi',
      src: 'https://static.miraheze.org/bluearchivewiki/0/0f/Arisu.png?version=8fe2ae44d97dabab9a4d147a3bbd158c',
      title: 'cristina-gottardi-CSpjU6hYo_0-unsplash.com'
    }
  ];
  import Banner from "./Banner.svelte";
  // import { images } from './imageData/+server.js';
  onMount(() => {});
  const scaleAnimation = (x) => scale(x, { duration: 500, easing: quintOut });
</script>

<!-- fix container for fixed footer height -->
<!-- 
<body class="flex flex-col min-h-screen">
  <Profile />
</body> -->

<body class="flex flex-col min-h-screen"><Profile /></body>
