<script lang="ts">
    import axios from "axios";
    import Star from "./Star.svelte";
    import { onMount } from "svelte";
    import {CurrencyHandler} from "../service";
    import { GetUserCookie } from "../service";
    export let id: number;
    export let name: string;
    export let price: number;
    export let description: string;
    export let duration: string;
    export let instructorName: string;
    export let isFetchManual: boolean;
    import { Card, Button, Rating, Badge } from 'flowbite-svelte';
    let jwtToken:string = "";
    let course = {
        name: "",
        price: 0,
        description: "",
        durations: "",
        instructorName: ""
    }
    async function handleAddCart(){
      jwtToken = GetUserCookie();
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
          
            if(response.data.status === 200){
              alert("Add cart successfully")
            }
            else{
              alert("Already in cart");
            }
         });
      }catch(error){
        console.log(error);
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
        instructorName: instructorName
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
<Card padding="none" class="w-64 h-auto" href="/course/{id}">
  <a href="/">
    <img class="p-11 rounded-t-sm" src="https://static.miraheze.org/bluearchivewiki/0/0f/Arisu.png?version=8fe2ae44d97dabab9a4d147a3bbd158c" alt="product 1" />
  </a>
  <div class="px-5 pb-5">
    <a href="/">
      <h5 class="text-xl font-semibold tracking-tight text-gray-900 dark:text-white overflow-x-hidden">{course.name}</h5>
    </a>
    <a href="/">
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