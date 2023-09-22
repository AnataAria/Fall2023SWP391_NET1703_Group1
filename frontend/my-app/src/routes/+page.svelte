<script>
  import { onMount } from 'svelte';
  import Nested from './Nested.svelte';
  import Top from './Top.svelte';

  // Add this to initialize the Bootstrap tooltip
  onMount(() => {
   
  });
</script>
<Top />
<p>These styles...</p>
<Nested />

<style>
	p {
		color: purple;
		font-family: 'Comic Sans MS', cursive;
		font-size: 2em;
	}
</style>
