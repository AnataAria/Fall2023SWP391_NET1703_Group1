<script lang="ts">
import { page } from "$app/stores";
import axios from "axios";
  import { onMount } from "svelte";
 
    let Couseraid = $page.params.Couseraid
    let Cousera ='';
    let name = '';
	let price = '';
	let description='';
	let durations='';
	let instructorID='';
	let instructorName='';
    let token='';

    async function handleGetCousera(){
                try {
                    let res = await axios.get(`http://localhost:3000/CouseraId/${Couseraid}`)
                    Cousera = res.data.data;
                    console.log(Cousera);
                    
                } catch (error) {
                    console.log(error)
                }
        }
        onMount(()=>{
            handleGetCousera()

    })
</script>
<h1>detail about cousera {Couseraid}</h1>

<h2>List cousera</h2>




<style >
    p{
        display: inline;
    }
    .cousera-item{
        position: relative;
        border: 1px solid black;
        margin: 5px;
        padding: 5px;
        width: 300px;
        border-radius: 10px;
    }
    .cousera-author{
        color: red;
    }

    .cousera-control{
        position: absolute;
        bottom: 5px;
    }
    
</style>
