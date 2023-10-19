<script lang="ts">
    import axios from "axios";
    import { onMount } from "svelte";
    import {CurrencyHandler} from "../service";
    import { GetCookie } from "../service";
    export let id: number;
    export let name: string;
    export let price: number;
    export let description: string;
    export let duration: string;
    export let instructorName: string;
    export let instructorId: number;
    export let isFetchManual: boolean;
    import { Card, Button, Rating, Badge } from 'flowbite-svelte';
    import { Toast } from "flowbite-svelte";
    import { CheckCircleSolid, CloseCircleSolid } from "flowbite-svelte-icons";
    import { quintOut } from "svelte/easing";
    import { slide } from "svelte/transition";
  import ToastShowMessage from "../templates/ToastShowMessage.svelte";
    let show = false;
    let open = true;
    let counter = 6;
    let message = "";
    let errorMsg = "";
    export function showMessage(value:string){
      message = "";
      errorMsg = "";
      open = true;
      counter = 6;
      timeout();
      message = value;
      }
     export function showErrMessage(value:string){
      message = "";
      errorMsg = "";
      open = true;
      counter = 6;
      timeout();
      errorMsg = value;
    }
    function timeout() {
        if (--counter > 0) return setTimeout(timeout, 1000);
        open = false;
    }

    let jwtToken:string | null = "";
    let course = {
        name: "",
        price: 0,
        description: "",
        durations: "",
        instructorName: "",
        instructorID: 0
    }
    async function handleAddCart(){
      jwtToken = GetCookie("USER");
      if(!jwtToken){
        window.location.href = "/login";
      }
      try{
        await axios.get(`http://localhost:9090/api/v1/cart?courseID=${id}`, {
          headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${jwtToken}`
          }
        })
        .then((response) => {
            if(response.status === 200){
              showMessage("Add Cart Successfully")
            }
            if(response.status === 405){
              showErrMessage("Add Cart Failed");
            }
         });
      }catch(error){
        console.log(error);
        showErrMessage("Add Cart Failed");
      }
    }
    async function handleGetCourse() {
    try {
      let res = await axios
        .get(`http://localhost:9090/api/v1/course?id=${id+1}`)
        .then((response) => {
          console.log(response.data);
          course = response.data;
        });
    } catch (error) {
      console.log(error);
    }
  }
  onMount(() => {
    if(!isFetchManual){
      handleGetCourse();
    }else{
      course = {
        name: name,
        price: price,
        description: description,
        durations: duration,
        instructorName: instructorName,
        instructorID: instructorId
      }
    }
  });

  async function addCart(){
    try {
      let res = await axios
      .post(`http://localhost:9090/api/v1/cart`, course)
      .then((response) => {
          console.log(response.data);
        });
    } catch (error) {
      console.log(error);
    }
  }
</script>
<Card padding="none" class="w-64 h-auto">
  <a href="/course/{id}">
    <img class="p-11 rounded-t-sm" src="https://static.miraheze.org/bluearchivewiki/0/0f/Arisu.png?version=8fe2ae44d97dabab9a4d147a3bbd158c" alt="product 1" />
  </a>
  <div class="px-5 pb-5">
    <a href="/course/{id}">
      <h5 class="text-xl font-semibold tracking-tight text-gray-900 dark:text-white whitespace-nowrap w-50 overflow-hidden truncate">{course.name}</h5>
    </a>
    <a href="/instructor/{1}">
      <h5 class="text-sm font-semibold tracking-tight text-gray-900 dark:text-white">By {course.instructorName}</h5>
    </a>
    <Rating rating={4} size={24} class="mt-2.5 mb-5">
      <Badge slot="text" class="ml-3">4</Badge>
    </Rating>
    <div class="flex justify-between items-center">
      <span class="text-3xl font-bold text-gray-900 dark:text-white">{CurrencyHandler(course.price)}</span>
      <Button on:click={handleAddCart}>Add Cart</Button>
    </div>
  </div>
</Card>

<!-- {#if errorMsg != ""}
   <div>
    <Toast color="red" dismissable={false} bind:open transition={slide}>
      <svelte:fragment slot="icon">
        <CloseCircleSolid class="w-5 h-5" />
        <span class="sr-only">Error icon</span>
      </svelte:fragment>
      {errorMsg}
    </Toast>
  </div>
  {/if}
  {#if message != ""}
  <div>
    <Toast color="green" transition={slide} params={{ delay: 250, duration: 300, easing: quintOut }} dismissable={false} bind:open>
      <svelte:fragment slot="icon">
        <CheckCircleSolid class="w-5 h-5" />
        <span class="sr-only">Check icon</span>
      </svelte:fragment>
      {message}.
    </Toast>
    
  </div>
  {/if} -->
  <ToastShowMessage></ToastShowMessage>