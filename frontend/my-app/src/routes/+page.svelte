<script>
  import { onMount } from 'svelte';
  import Nested from './Nested.svelte';
  import Top from './Top.svelte';
  import LandingPage from './LandingPage.svelte';

  // Add this to initialize the Bootstrap tooltip
  onMount(() => {
   
  });
</script>


<LandingPage />
<style>
	p {
		color: purple;
		font-family: 'Comic Sans MS', cursive;
		font-size: 2em;
	}
</style>
