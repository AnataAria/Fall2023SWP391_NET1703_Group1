<script>
    import { onMount } from 'svelte';
    import Top from './Top.svelte';
    export const ssr = false;
    import { Router, Route } from 'svelte-routing';
    import CourseCard from './CourseCard.svelte';
    import Star from './Star.svelte';
    import SearchBar from './SearchBar.svelte';
    import LandingPage from './LandingPage.svelte';
    import SubLanding from './SubLanding.svelte';
    import Header from './Header.svelte';
    import Banner from './Banner.svelte';
  import Carousel from './Carousel.svelte';
  import Course from './course/+page.svelte'
  
    // Add this to initialize the Bootstrap tooltip
    onMount(() => {
     
    });
  </script>
  
  
  <Header></Header>
  <SearchBar/>
  <!-- <Carousel></Carousel> -->
  

