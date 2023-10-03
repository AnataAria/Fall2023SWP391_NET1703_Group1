<script lang="ts">
  import Header from "./Header.svelte";

    import {
        Card,
        Button,
        Rating,
        Badge,
        Progressbar,
        CardPlaceholder,
    } from "flowbite-svelte";
    var i = 0;
    let percent: number;
    var rating = 5;
    var title = 'My Wife'
    var url = '/'
    var img_url = 'https://gameranx.com/wp-content/uploads/2022/10/Screenshot-1249.png'
    var instructor = 'Thang'
    percent = 90;
</script>
<head
    ><link
        href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap"
        rel="stylesheet"
    />
</head>
<div class="container mx-auto mt-24 mb-10">
    <h1 class="mb-4 text-3xl font-extrabold text-gray-900 dark:text-white md:text-5xl lg:text-6xl"><span class="text-transparent bg-clip-text bg-gradient-to-r to-emerald-600 from-sky-400">My</span> Learning</h1>
</div>
    

<!-- <div class="grid grid-flow-row-dense grid-cols-3 grid-rows-3 hover:grid-flow-row ml-24 mr-auto">
    <div>
        <a href="#" class="flex flex-col items-center bg-white border border-gray-200 rounded-lg shadow md:flex-row md:max-w-xl hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700">
            <img class="object-cover w-full rounded-t-lg h-96 md:h-auto md:w-48 md:rounded-none md:rounded-l-lg" src="{img_url}" alt="">
            <div class="flex flex-col justify-between p-4 leading-normal">
                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">{title}</h5>
                <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">{instructor}</p>
                <Rating {rating} size="24" class="mt-2.5 mb-5">
                    <Badge slot="text" class="ml-3">{rating}</Badge>
                </Rating>
                <Progressbar progress={percent} size="h-4" color="red" labelInside />
            </div>
        </a>
    </div>
</div> -->
<div class="p-10 ml-20 mr-auto px-48">
    <a href="https://www.youtube.com/watch?v=v1POP-m76ac" class="bg-white rounded-lg shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">

    <div class=" w-full lg:max-w lg:flex">
      <div class="h-48 lg:h-auto lg:w-2/4 flex-none bg-cover rounded-t lg:rounded-t-none lg:rounded-l text-center overflow-hidden" style="background-image: url('{img_url}')" title="Mountain">
      </div>
      <div class="border-r border-b border-l border-gray-400 lg:border-l-0 lg:border-t lg:border-gray-400 bg-white rounded-b lg:rounded-b-none lg:rounded-r p-4 flex flex-col justify-between leading-normal">
        <div class="mb-8">
          
          <div class="text-gray-900 font-bold text-xl mb-2">{title}</div>
          <p class="text-gray-700 text-base">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus quia, Nonea! Maiores et perferendis eaque, exercitationem praesentium nihil.</p>
        </div>
        <div class="text-sm">
            <p class="text-gray-900 leading-none">John Smith</p>
          </div>
        <Rating {rating} size="24" class="mt-2.5 mb-5">
            <Badge slot="text" class="ml-3">{rating}</Badge>
        </Rating>
        <Progressbar progress={percent} size="h-4" color="red" labelInside />

      </div>
    </div>
    </a>
  </div>

<style>
    * {
        box-sizing: border-box;
    }
    body {
        font-size: 14px;
    }
    .v1_4 {
        width: 100%;
        /* height: 1024px; */
        background: rgba(255, 255, 255, 1);
        opacity: 1;
        position: relative;
        top: 0px;
        left: 0px;
        overflow: hidden;
    }
    .v1_5 {
        width: 100%;
        height: 188px;
        background: rgba(45, 47, 49, 1);
        opacity: 1;
        position: relative;
        top: 0px;
        left: 0px;
        overflow: hidden;
    }
    .v1_10 {
        width: 178px;
        color: rgba(255, 255, 255, 1);
        position: absolute;
        top: 158px;
        left: 277px;
        text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        font-family: Black Han Sans;
        font-weight: Regular;
        font-size: 14px;
        opacity: 1;
        text-align: left;
    }
    .v1_9 {
        width: 464px;
        color: rgba(255, 255, 255, 1);
        position: absolute;
        top: 81px;
        left: 277px;
        font-family: Black Han Sans;
        font-weight: Regular;
        font-size: 40px;
        opacity: 1;
        text-align: left;
    }
    .name {
        color: #fff;
    }
    /* .card {
        margin-top: 80px;
        width: 464px;
        position: absolute;
        left: 277px;
        font-weight: Regular;
        opacity: 1;
        text-align: left;
    } */
    .card-title {
        font-weight: bold;
        color: #2d2f31;
        font-size: 20px;
    }
    .card-text {
        color: #6a6f73;
        font-size: 14px;
    }
    #myProgress {
        width: 100%;
        background-color: #d1d7dc;
        transition: visibility 0s, opacity 0.5s linear;
    }

    #myBar {
        transition: visibility 0s, opacity 0.5s linear;
        width: 0%;
        height: 5px;
        background-color: #5624d0;
        text-align: center; /* To center it horizontally (if you want) */
        line-height: 30px; /* To center it vertically */
        color: white;
    }
</style>
