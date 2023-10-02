<script lang="ts">
    import axios from "axios";
    import Star from "./Star.svelte";
    import { onMount } from "svelte";
    export let id: number;
    export let name: string;
    export let price: number;
    export let description: string;
    export let duration: string;
    export let instructorName: string;
    export let isFetchManual: boolean;
    let course = {
        name: "",
        price: "",
        description: "",
        durations: "",
        instructorName: ""
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
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <div class="course-card">
      <div class="course-image-container">
        <a href="/course/{id}">
          <img class="thumbnail" src="https://static.miraheze.org/bluearchivewiki/0/0f/Arisu.png?version=8fe2ae44d97dabab9a4d147a3bbd158c" alt=""/>
        </a>
      </div>
      <div class="course-info-container">
        <h3><a href="/course/{id}">{course.name}</a></h3>
        <small class="author">By: {course.instructorName}</small>
        <p class="disc">
            {course.description}
        </p>
        <div class="score-container">
          <Star score={4.2}/>
          <span>4.2</span>
          <span>(5000)</span>
        </div>
      </div>
        <div class="card-footer row">
          <div class="col-md-6">
            <span style="margin:20px ;">{course.price} VND</span>
          </div>
          <div class="col-md-6 cart-btn">
            <button  style="border: none; background-color: white;"><svg xmlns="http://www.w3.org/2000/svg" style="margin-bottom: 10px;margin-left: 10px;"  width="25" height="25" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
              <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
            </svg></button>
          </div>
        </div>
    </div>
<style>
    
    .course-card
    {
        width: 300px;
        height: 400px;
        margin: 1%;
        vertical-align: top;
        display: inline-block;
        box-shadow: 2px 2px 4px #ccc;
        border-radius: 5px;
        font-family: "Raleway";
    }

    .course-image-container a {
      margin-top: 10px;
    }

    .thumbnail
    {
        width: 280px;
        height: 200px;
        border-top-right-radius: 8px;
        border-top-left-radius: 8px;
    }
    .course-image-container{
      width: 100%;
      display: flex;
      justify-content: center;
    }
    
    .course-info-container{
      width: 100%;
      margin-top: 5px;
      border-bottom: gray 1px solid;
      padding-bottom: 5px;
    }

    .course-info-container a{
      text-decoration: none;
      color: black;
    }

    h3
    {
        padding-left: 24px;
        padding-top: 5px;
        color: #000;
        font-size: 18px;
        text-align: left;
        margin: 0;
        font-weight: 600;
    }

    .author
    {
        padding-top: 2px;
        padding-left: 24px;
        margin: 0;
        font-size: .9em;
        font-weight: 500;
        line-height: 2;
        color: #64748B;
        text-align: left;
        font-family: sans-serif;
        font-size: 13px;
    }

    .date
    {
        
        padding-top: 4px;
        font-family: 'Roboto', sans-serif;
        font-size: 14px;
        font-weight: 300;
        font-style: normal;
        color: #000;
    }
    .disc
    {
        padding: 0 24px;
        opacity: .5;
        font-size: 14px;
        font-weight: 400;
        font-style: normal;
        font-stretch: normal;
        line-height: 1.43;
        letter-spacing: .35px;
        text-align: left;
        color: rgba(0,0,0.6);
        margin:4px 0;
    }
    .card-footer{
      display: flex;
      flex-direction: row;
    }
    .cart-btn{
      display: flex;
      flex-direction: row-reverse;
    }

    .score-container{
      display: flexbox;
      flex-direction: row;
      align-items: space-between;
    }
    .score-container span {
      color: orange;
      font-style: none;
    }
</style>