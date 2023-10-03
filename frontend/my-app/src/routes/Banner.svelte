 <!-- ======= Hero Section ======= -->
<!-- <section id="hero" class="d-flex align-items-center">
  <div class="container" data-aos="zoom-out" data-aos-delay="100">
    <div class="row">
      <div class="col-xl-6">
        <h1>Bettter design experience for children with Ademy </h1>
        <h2>We are team of talented graphic instructors teaching drawing for everyone</h2>
        <a href="#about" class="btn-get-started scrollto">Get Started</a>
      </div>
    </div>
</section> -->
<!-- End Hero -->
 
<script lang="ts">
  import { Carousel } from 'flowbite-svelte';
  const images = [
    {
      alt: 'Cosmic timetraveler',
      src: 'https://c4.wallpaperflare.com/wallpaper/826/810/502/3-316-16-9-aspect-ratio-s-sfw-wallpaper-preview.jpg',
      title: 'cosmic-timetraveler-pYyOZ8q7AII-unsplash.com'
    },
    {
      alt: 'Cristina Gottardi',
      src: 'https://wallpapersmug.com/download/2560x1440/ba661d/anime-girl-drawing-art.jpg',
      title: 'cristina-gottardi-CSpjU6hYo_0-unsplash.com'
    }
  ]
</script>
<div class="max-w">
  <Carousel {images} duration="3000" />
</div>
