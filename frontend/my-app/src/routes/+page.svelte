<script>
    import { onMount } from 'svelte';  
    import SearchBar from './SearchBar.svelte';
    import Header from './Header.svelte';
    import Banner from './Banner.svelte';
  import Carousel from './Carousel.svelte';
  
  
    // Add this to initialize the Bootstrap tooltip
    onMount(() => {
    });
  </script>
  <Header />
  <SearchBar />
  <Banner />
  <br/>
  <br/>
  <Carousel />

  
  

