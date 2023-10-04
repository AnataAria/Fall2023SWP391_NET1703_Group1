<script lang="ts">
    export let sub:number;
    export let taxes:number;
    export let shipping: number;
    export let total:number;
</script>

<div class="bg-white rounded-lg shadow-md p-6">
    <h2 class="text-lg font-semibold mb-4">Summary</h2>
    <div class="flex justify-between mb-2">
        <span>Subtotal</span>
        <span>${sub}</span>
    </div>
    <div class="flex justify-between mb-2">
        <span>Taxes</span>
        <span>${taxes}</span>
    </div>
    <div class="flex justify-between mb-2">
        <span>Shipping</span>
        <span>${shipping}</span>
    </div>
    <hr class="my-2">
    <div class="flex justify-between mb-2">
        <span class="font-semibold">Total</span>
        <span class="font-semibold">${total}</span>
    </div>
    <button class="bg-blue-500 text-white py-2 px-4 rounded-lg mt-4 w-full">Checkout</button>
</div>