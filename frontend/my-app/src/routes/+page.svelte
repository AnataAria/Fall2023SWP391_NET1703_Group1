<script>
    import { onMount } from 'svelte';  
    import SearchBar from './SearchBar.svelte';
    import Header from './Header.svelte';
    import Banner from './Banner.svelte';
  import Carousel from './Carousel.svelte';
  import Footer from './Footer.svelte';
  import CourseCarousel from './CourseCarousel.svelte';
  
    // Add this to initialize the Bootstrap tooltip
    onMount(() => {
    });
  </script>
  <Header />
  <Banner />
  <br/>
  <br/>
  <!-- <Carousel /> -->
<CourseCarousel></CourseCarousel>
  <Footer></Footer>
