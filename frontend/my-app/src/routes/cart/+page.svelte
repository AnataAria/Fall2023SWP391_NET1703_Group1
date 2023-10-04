<script lang="ts">
  import { onMount } from "svelte";
  import CartItem from "../CartItem.svelte";
  import TotalCart from "../TotalCart.svelte";
  import {apiBaseUrl, GetCookie} from "../../service"
  import axios from "axios";

  interface CourseTemplate{
    id:number;
    name:string;
    price:number;
    description:string;
    durations:string;
    instructorID:number;
    instructorName:string;
  }
  let jwt:string|null;
  function carculatePrice(price: number){
    cartTotal.subtotal = cartTotal.subtotal + price;
  }
  let cartTotal= {
    subtotal:19.99,
    taxes: 1.99,
    shipping: 0.00,
    total: 0
  }
let courses:CourseTemplate[] = [];
  async function GetCartList(){
    try {
      await axios
        .get(apiBaseUrl+'carts', {
          headers: {
            Authorization: `Bearer ${jwt}`,
          },
        })
        .then((response) => {
          console.log(response.data);
          courses = response.data.courseList;
        });
    } catch (error) {
      console.log(error);
      console.log(jwt)
    }
  }
  onMount(()=>{
    jwt = GetCookie("USER");
    GetCartList();
  })
</script>

<div class="bg-gray-100 h-screen py-8 mt-20 ">
  <div class="container mx-auto px-4 ">
      <h1 class="text-3xl font-semibold mb-4 text-rose-400">Shopping Cart</h1>
      <div class="flex flex-col md:flex-row gap-4">
          <div class="md:w-3/4">
            {#each courses as item}
            <CartItem id={item.id}
            prouduct_name={item.name}
            product_description={item.description}
            product_price={item.price}
            />
            <!-- {carculatePrice(item.price)} -->
            {/each}
            
          </div>
          <div class="md:w-1/4">
              <TotalCart 
              sub={cartTotal.subtotal}
              taxes={cartTotal.taxes}
              shipping={cartTotal.shipping}
              total={cartTotal.total + cartTotal.taxes + cartTotal.shipping}
              />
          </div>
      </div>
  </div>
</div>

<style>
  .container {
  padding-left: 3rem;
  }
</style>

