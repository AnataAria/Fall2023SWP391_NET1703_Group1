<script>
  import "../app.postcss";
  import Footer from "./Footer.svelte";
  import Header from "./Header.svelte";
</script>

<header>
  <Header />
</header>
<body class="flex flex-col min-h-screen mt-20 mb-10">
  <slot />
</body>
<footer>
  <Footer />
</footer>
