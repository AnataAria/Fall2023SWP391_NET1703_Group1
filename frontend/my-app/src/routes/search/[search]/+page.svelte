<script lang="ts">
  import { onMount } from "svelte";
  import CourseCard from "../../CourseCard.svelte";
import Header from "../../Header.svelte";
import { page } from "$app/stores";
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
let searchValue : string;
let course:CourseTemplate[] = [];
// let course = [
//     {
//         name: "",
//         price: "",
//         description: "",
//         durations: "",
//         instructorName: ""
//     }
// ]
onMount(()=>{
    searchValue = $page.params.search;
    handleSearch();
});
async function handleSearch() {
    try {
      await axios
        .get<CourseTemplate[]>(`http://localhost:9090/api/v1/courses?name=${searchValue}&maxPage=10`)
        .then((response) => {
          console.log(response.data);
          course = response.data;
        });
    } catch (error) {
      console.log(error);
    }
}

</script>
<Header></Header>
<div class="container search-container">
  <div class="row">
      <div class="mb-6">
        <h2 class="mb-1 h1">Most Popular Courses</h2>
        <p>These are the most popular courses among Geeks Courses learners worldwide in year 2022</p>
      </div>
  </div>
  <div class="row">
    <div class="col-md-12">
       <div class="tab-content">
        <div class="item-container row">
          {#each course as c}
          <CourseCard name={c.name}
          id={c.id}
          price = {c.price}
          description = {c.description}
          duration = {c.durations}
          instructorName = {c.instructorName}
          isFetchManual={true}></CourseCard>
          {/each}
      </div>
       </div>
    </div>
  </div>
  <h2>The result with the value: {searchValue}</h2>
<div class="item-container">
    {#each course as c}
    <CourseCard 
    id={c.id}
    name={c.name}
    price = {c.price}
    description = {c.description}
    duration = {c.durations}
    instructorName = {c.instructorName}
    isFetchManual={true}></CourseCard>
    {/each}
</div>
</div>

<style>
    .search-container{
        width: 100%;
        height: 100%;
        align-items: center;
        box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.75);
        margin-top: 150px;
    }
    .item-container{
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100%;
    }
</style>