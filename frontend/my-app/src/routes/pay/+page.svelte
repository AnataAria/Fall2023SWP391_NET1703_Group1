<script lang="ts">
    import { Button, Dropdown, DropdownItem } from 'flowbite-svelte';
    import { ChevronDownSolid } from 'flowbite-svelte-icons';
    import { Select, Label } from 'flowbite-svelte';
    import headerImage from "$lib/assets/Header.jpg";
    import axios, { Axios, AxiosError, type AxiosResponse } from 'axios';
    import { GetCookie, apiBaseUrl } from '../../service';
  import { onMount } from 'svelte';
                    let countries = [
                      { value: 'USD', name: 'USD' },
                    ];
    let paypal = true;
    let other = false;
    interface IOrder{
        price: number
        currency: string
        method: string
        intent: string
        description: string
    }
    let jwt:string|null;
    let order = {
        price: "",
        currency: "",
        method: "PayPal",
        intent: "SALE",
        description: ""
    }

    onMount(()=>{
        jwt = GetCookie("USER");
    })
    async function PaypalCheckout() {
        let res;
        console.log(order)
        console.log(jwt);
        res = await axios.post(apiBaseUrl +"pay", order, {
            headers: {
                    Authorization: `Bearer ${GetCookie("USER")}`,
            },
        })
        .then ((response: AxiosResponse) => {
            console.log(response.data)
            window.location.href = response.data
        })
        .catch ((error:AxiosError) => {
            console.log(error)
        })
    }

    function PayPalMethod(){
        paypal = true;
        other = false;
    }

    function OtherMethod(){
        paypal = false;
        other = true;
    }
    async function GetTotalPriceMethod(){
        try{
            await axios.get(apiBaseUrl + "carts/total",
            {
                headers: {
                    "Content-Type": "application/json",
                    "Authorization": `Bearer ${GetCookie("USER")}`,
                }
            }).then((response)=>{
                order.price = response.data;
                order.currency = "USD";
            })
        }catch(e){

        }
    }
    onMount(()=>{
        GetTotalPriceMethod();
    })
</script>

<div class="min-w-screen min-h-screen bg-gray-200 flex items-center justify-center px-5 pb-10 pt-16 mt-20">
    <div class="w-full mx-auto rounded-lg bg-white shadow-lg p-5 text-gray-700" style="max-width: 600px">
        <div class="w-full pt-1 pb-5">
            <div class="bg-indigo-400 text-white overflow-hidden rounded-full w-20 h-20 -mt-16 mx-auto shadow-lg flex justify-center items-center">
                <i class="mdi mdi-credit-card-outline text-3xl">
                    <img src={headerImage}/>
                </i>
            </div>
        </div>
        <div class="mb-10">
            <h1 class="text-center font-bold text-xl uppercase">Secure payment info</h1>
        </div>
        <div class="mb-3 flex -mx-2">
            <div class="px-2">
                <label for="type1" class="flex items-center cursor-pointer">
                    <input type="radio" class="form-radio h-5 w-5 text-indigo-500" name="type" id="type1" on:change={OtherMethod}>
                    <img src="https://leadershipmemphis.org/wp-content/uploads/2020/08/780370.png" class="h-8 ml-3">
                </label>
            </div>
            <div class="px-2">
                <label for="type2" class="flex items-center cursor-pointer">
                    <input type="radio" class="form-radio h-5 w-5 text-indigo-500" name="type" id="type2" on:change={PayPalMethod} checked>
                    <img src="https://www.sketchappsources.com/resources/source-image/PayPalCard.png" class="h-8 ml-3">
                </label>
            </div>
        </div>
        {#if other}
            <div class="mb-3">
            <label class="font-bold text-sm mb-2 ml-1">Name on card</label>
            <div>
                <input class="w-full px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors" placeholder="John Smith" type="text"/>
            </div>
        </div>
        <div class="mb-3">
            <label class="font-bold text-sm mb-2 ml-1">Card number</label>
            <div>
                <input class="w-full px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors" placeholder="0000 0000 0000 0000" type="text"/>
            </div>
        </div>
        <div class="mb-3 -mx-2 flex items-end">
            <div class="px-2 w-1/2">
                <label class="font-bold text-sm mb-2 ml-1">Expiration date</label>
                <div>
                    <select class="form-select w-full px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors cursor-pointer">
                        <option value="01">01 - January</option>
                        <option value="02">02 - February</option>
                        <option value="03">03 - March</option>
                        <option value="04">04 - April</option>
                        <option value="05">05 - May</option>
                        <option value="06">06 - June</option>
                        <option value="07">07 - July</option>
                        <option value="08">08 - August</option>
                        <option value="09">09 - September</option>
                        <option value="10">10 - October</option>
                        <option value="11">11 - November</option>
                        <option value="12">12 - December</option>
                    </select>
                </div>
            </div>
            <div class="px-2 w-1/2">
                <select class="form-select w-full px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors cursor-pointer">
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                    <option value="2027">2027</option>
                    <option value="2028">2028</option>
                    <option value="2029">2029</option>
                </select>
            </div>
        </div>
        <div class="mb-10">
            <label class="font-bold text-sm mb-2 ml-1">Security code</label>
            <div>
                <input class="w-32 px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors" placeholder="000" type="text"/>
            </div>
        </div>
        {/if}

        {#if paypal}
        <div class="mb-3">
            <label for="total" class="font-bold text-sm mb-2 ml-1">Total</label>
            <div>
                <input bind:value={order.price} class="w-full px-3 py-2 mb-1 border-2 border-gray-200 rounded-md focus:outline-none focus:border-indigo-500 transition-colors" type="number" readonly/>
            </div>
        </div>
        <div class="mb-3">
            <div>o
                <Label class="font-bold text-sm mb-2 ml-1" for="currency">
                    Currency
                    <Select class="mt-2" items={countries} bind:value={order.currency} />
                </Label>
            </div>
        </div>
        <div class="mb-3">
            <div>
                <div>
                    <label for="default-input" class="font-bold text-sm mb-2 ml-1">Payment Method</label>
                    <input bind:value={order.method} readonly type="text" id="default-input" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                </div>
            </div>
        </div>
        <!-- <div class="mb-3">
            <div>
                <div>
                    <label for="default-input" class="font-bold text-sm mb-2 ml-1">Intent</label>
                    <input bind:value={order.intent} type="text" id="default-input" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                </div>
            </div>
        </div> -->
        <div class="mb-3">
            <div>
                <div>
                    <label for="default-input" class="font-bold text-sm mb-2 ml-1">Description</label>
                    <input bind:value={order.description} type="text" id="default-input" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                </div>
            </div>
        </div>
        {/if}
        <div>
            <button on:click={PaypalCheckout} class="block w-full max-w-xs mx-auto bg-indigo-500 hover:bg-indigo-700 focus:bg-indigo-700 text-white rounded-lg px-3 py-3 font-semibold"><i class="mdi mdi-lock-outline mr-1"></i>{order.price} đ</button>
        </div>
    </div>
</div>

