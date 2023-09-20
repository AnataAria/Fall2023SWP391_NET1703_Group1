<script>
    import { onMount } from 'svelte';
    
  
    // Add this to initialize the Bootstrap tooltip
    onMount(() => {
     
    });
  </script>
  
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <a class="navbar-brand" href="">My SvelteKit App</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>


  <ul class="nav nav-pills nav-fill gap-2 p-1 small bg-primary rounded-5 shadow-sm" id="pillNav2" role="tablist" style="--bs-nav-link-color: var(--bs-white); --bs-nav-pills-link-active-color: var(--bs-primary); --bs-nav-pills-link-active-bg: var(--bs-white);">
    <li class="nav-item" role="presentation">
      <button class="nav-link active rounded-5" id="home-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="true">Home</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link rounded-5" id="profile-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Profile</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link rounded-5" id="contact-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Contact</button>
    </li>
  </ul>
  <style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
html{
    font-size: 62.5%;
    font-family: sans-serif;
}
body{
    font-size: 1.6rem;
}
  </style>