<script lang="ts">
  import { onMount } from "svelte";
  import CourseCard from "../../CourseCard.svelte";
import Header from "../../Header.svelte";
import { page } from "$app/stores";
import { Gallery } from 'flowbite-svelte';
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

<div class="grid grid-cols-2 md:grid-cols-6 gap-4">
  {#each course as item}
  <div class="h-auto max-w-full">
    <CourseCard
    id={item.id}
    name={item.name}
    description={item.description}
    price={item.price}
    instructorName={item.instructorName}
    isFetchManual={true}
    duration={item.durations}
    instructorId={item.instructorID}></CourseCard>
  </div>
  {/each}
</div>
