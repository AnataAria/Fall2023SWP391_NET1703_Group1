<script lang="ts">
  import { page } from "$app/stores";
  import axios from "axios";
  import { onMount } from "svelte";
  let course = $page.params.course;
  let Cousera = "";
  let name = "";
  let price = "";
  let description = "";
  let durations = "";
  let instructorID = "";
  let instructorName = "";
  let token = "";

  async function handleGetCourse() {
    try {
      let res = await axios
        .get(`http://localhost:9090/api/v1/course?id=1`)
        .then((response) => {
          console.log(response.data);
          Cousera = response.data;
        });
    } catch (error) {
      console.log(error);
    }
  }
  onMount(() => {
    handleGetCourse();
  });
</script>

<h1>Detail about course {course}</h1>
<input value={Cousera} />
<h2>List course</h2>

<style>
  p {
    display: inline;
  }
  .cousera-item {
    position: relative;
    border: 1px solid black;
    margin: 5px;
    padding: 5px;
    width: 300px;
    border-radius: 10px;
  }
  .cousera-author {
    color: red;
  }

  .cousera-control {
    position: absolute;
    bottom: 5px;
  }
</style>
