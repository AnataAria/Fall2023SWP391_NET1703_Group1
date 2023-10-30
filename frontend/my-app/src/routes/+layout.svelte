<script>
  import "../app.postcss";
  import Footer from "./Footer.svelte";
  import Header from "./Header.svelte";
</script>

<header>
  <Header />
</header>

<body class="flex flex-col min-h-screen mb-10" style="margin-top: 5em;">
  <slot />
</body>
<footer>
  <Footer />
</footer>
