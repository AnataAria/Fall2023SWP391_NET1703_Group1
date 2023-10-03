<script>
  import CartItem from "./CartItem.svelte";
  import TotalCart from "./TotalCart.svelte";
</script>

<div class="bg-gray-100 h-screen py-8 mt-20 ">
  <div class="container mx-auto px-4 ">
      <h1 class="text-3xl font-semibold mb-4 text-rose-400">Shopping Cart</h1>
      <div class="flex flex-col md:flex-row gap-4">
          <div class="md:w-3/4">
             <CartItem />
          </div>
          <div class="md:w-1/4">
              <TotalCart />
          </div>
      </div>
  </div>
</div>

<style>
  .container {
  padding-left: 3rem;
  }
</style>

