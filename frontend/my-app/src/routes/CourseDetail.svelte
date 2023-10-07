<script lang="ts">
  import { Rating, AdvancedRating, ScoreRating } from 'flowbite-svelte';
</script>

<section class="text-gray-700 body-font overflow-hidden bg-white">
  <div class="container px-5 py-24 mx-auto">
    <div class="lg:w-4/5 mx-auto flex flex-wrap">
      <img
        alt="ecommerce"
        class="h-64 lg:w-3/10 object-cover object-center rounded border border-gray-200"
        src="https://ss-images.saostar.vn/w800/2020/01/03/6750639/page1.jpg"
      />
      <div class="lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0">
        <h2 class="text-sm title-font text-gray-500 tracking-widest">
          BRAND NAME
        </h2>
        <h1 class="text-gray-900 text-3xl title-font font-medium mb-1">
          The Catcher in the Rye
        </h1>
        <div class="flex mb-4">
          <span class="flex items-center">
            <Rating id="example-1" total={5} size={50} rating={1.4} />
            <span class="text-gray-600 ml-3">4 Reviews</span>
          </span>
        </div>
        <div class="min-h-[50%] ">
          <p >
            Fam locavore kickstarter distillery. taximy chia microdosing tilde
            DIY. XOXO fam indxgo juiceramps cornhole raw denim forage brooklyn.
            
          </p>
        </div>
        <div class="flex">
          <span class="title-font font-medium text-2xl text-gray-900"
            >$58.00</span
          >
          <br />
          <button
            class="flex ml-auto text-white bg-rose-400 bottom-1 border-0 py-0 px-6 focus:outline-none hover:bg-red-600 rounded"
            ><svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
              stroke-width="1.0"
              stroke="currentColor"
              class="file: mt-2 h-6 w-6"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                d="M2.25 3h1.386c.51 0 .955.343 1.087.835l.383 1.437M7.5 14.25a3 3 0 00-3 3h15.75m-12.75-3h11.218c1.121-2.3 2.1-4.684 2.924-7.138a60.114 60.114 0 00-16.536-1.84M7.5 14.25L5.106 5.272M6 20.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm12.75 0a.75.75 0 11-1.5 0 .75.75 0 011.5 0z"
              />
            </svg></button
          >
          <button
            class="rounded-full w-10 h-10 bg-gray-200 border-0 inline-flex items-center justify-center text-gray-500 hover:text-rose-400 ml-4"
          >
            <svg
              fill="currentColor"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              class="w-5 h-5"
              viewBox="0 0 24 24"
            >
              <path
                d="M20.84 4.61a5.5 5.5 0 00-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 00-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 000-7.78z"
              />
            </svg>
          </button>
        </div>
      </div>
    </div>
  </div>
</section>
