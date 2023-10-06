<script lang="ts">
  import { onMount } from "svelte";
  import {AuthenticatePage, CurrencyHandler} from "../service";
  export let id:number;
  export let prouduct_name: string;
  export let product_description: string;
  export let product_price : number;
</script>
<div class="bg-white rounded-lg shadow-md p-6 mb-4">
    <table class="w-full">
        <thead>
            <tr>
                <th class="text-left font-semibold">Product</th>
                <th class="text-left font-semibold des">Descripe</th>
                <th class="text-left font-semibold ">Price</th>
                
                <th class="text-left font-semibold rig"></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="py-4">
                    <div class="flex items-center">
                        <img class="h-16 w-16 mr-4" src="https://via.placeholder.com/150" alt="Product image">
                        <span class="font-semibold mr-8">{prouduct_name}</span>
                    </div>
                </td>
                <td class="py-4 px-20 ">{product_description}</td>
                <td class="py-4 ">{CurrencyHandler(product_price)}</td>
                <td class="py-4">
                    <div class="flex items-center ">
                        <a href="/" class="px-16 text-cyan-500">Remove</a>
                    
                    </div>
                </td>
                
            </tr>
            <!-- More product rows -->
        </tbody>
    </table>
</div>

<style>
.px-20 {

    margin-right: 15rem;
    
}
.des{
    padding-left: 16rem;
}
.rig{
    padding-left: 4.5rem;
}

</style>