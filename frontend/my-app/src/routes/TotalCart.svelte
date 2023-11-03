<script lang="ts">
    export let sub:number;
    export let taxes:number;
    export let total:number;
    import {Button} from "flowbite-svelte";
    function checkOut(){
        window.location.href="/pay"
    }
    import {CurrencyHandler} from "../service";
</script>

<div class="bg-white rounded-lg shadow-md p-6">
    <h2 class="text-lg font-semibold mb-4">Summary</h2>
    <div class="flex justify-between mb-2">
        <span>Subtotal</span>
        <span>{CurrencyHandler(sub)}</span>
    </div>
    <div class="flex justify-between mb-2">
        <span>Taxes</span>
        <span>{CurrencyHandler(taxes)}</span>
    </div>
    <hr class="my-2">
    <div class="flex justify-between mb-2">
        <span class="font-semibold">Total</span>
        <span class="font-semibold">{CurrencyHandler(total)}</span>
    </div>
    <Button class="bg-blue-500 text-white py-2 px-4 rounded-lg mt-4 w-full" on:click={()=>{
        checkOut();
    }}>Check out</Button>
</div>