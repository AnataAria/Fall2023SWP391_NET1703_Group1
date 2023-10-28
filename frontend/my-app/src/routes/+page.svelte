<script lang="ts">
  import { onMount } from "svelte";
  import "../app.postcss";
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
  import Carousel from "./Carousel.svelte";
  import CourseCard from "./CourseCard.svelte";
  import CardScrollContainer from "./CardScrollContainer.svelte";
  import PartnerBanner from "./PartnerBanner.svelte";
    import CreateCourse from "./CreateCourse.svelte";
    import CreateCourseSection from "./CreateCourseSection.svelte";
    import CustomerLandingPage from "./UserLandingPage.svelte";
    import UserLandingPage from "./UserLandingPage.svelte";
</script>
<Carousel/>
<div class="flex justify-center">
  <div class="w-11/12">
    <PartnerBanner/>
    <CardScrollContainer></CardScrollContainer>
  </div>
</div>
<UserLandingPage/>