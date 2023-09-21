<script>
	let imageLinks = [
		"https://i.pinimg.com/originals/01/13/76/01137626b8a23d30a3ccf9837667bac9.jpg",
		"https://donglaoshopping.com/wp-content/uploads/2021/07/free-fire-song-sot-la-toi-thuong.jpg"
	];
	let hereKitty = false;

	const handleMouseenter = () => (hereKitty = true);
	const handleMouseleave = () => (hereKitty = false);
  </script> 
  <svelte:body on:mouseenter={handleMouseenter} on:mouseleave={handleMouseleave} />
  <main>
	<h1>Login </h1>
	<h3>See the cutest images of cats from the internet</h3>
<!-- creative commons BY-NC http://www.pngall.com/kitten-png/download/7247 -->
<img
	class:curious={hereKitty}
	alt="Kitten wants to know what's going on"
	src="https://i.pinimg.com/564x/e2/fb/08/e2fb08e6b5d81c842bdbf7ab402e53da.jpg"
/>
  </main>
  <style>
	img {
		position: absolute;
		left: 0;
		bottom: -60px;
		transform: translate(-80%, 0) rotate(-30deg);
		transform-origin: 100% 100%;
		transition: transform 0.4s;
	}

	.curious {
		transform: translate(-15%, 0) rotate(0deg);
	}

	:global(body) {
		overflow: hidden;
	}
</style>