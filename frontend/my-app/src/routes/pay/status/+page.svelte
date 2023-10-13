<script lang="ts">
    import { page } from '$app/stores';
    const status = $page.url.searchParams.get('status');
    const paymentID = $page.url.searchParams.get('paymentID');
    let formStatus = {
        transactionID: "",
        status: "",
        title:"",
        statusTitle:""
    }
    if(status === 'success' && paymentID != null){
        formStatus.transactionID = paymentID;
        formStatus.status = "success";
        formStatus.title = "Payment Success";
        formStatus.statusTitle="Thank you for completing your secure online payment."
    }else{
        formStatus.transactionID = "";
        formStatus.status = "failed";
        formStatus.title = "Payment Failed";
        formStatus.statusTitle = "Failed to complete your secure online payment"
    }
    
</script>
<div class="w-full h-full">
    <div class="bg-white p-6  md:mx-auto">
        {#if formStatus.status === "success"}
        <svg viewBox="0 0 24 24" class="text-green-600 w-16 h-16 mx-auto my-6">
            <path fill="currentColor"
                d="M12,0A12,12,0,1,0,24,12,12.014,12.014,0,0,0,12,0Zm6.927,8.2-6.845,9.289a1.011,1.011,0,0,1-1.43.188L5.764,13.769a1,1,0,1,1,1.25-1.562l4.076,3.261,6.227-8.451A1,1,0,1,1,18.927,8.2Z">
            </path>
        </svg>
        {:else}
        <svg style="color: red" xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="mx-auto my-6 w-32 h-32" viewBox="0 0 24 24">
             <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z" fill="red"></path> 
            </svg>
        {/if}
      
      <div class="text-center">
          <h3 class="md:text-2xl text-base text-gray-900 font-semibold text-center">{formStatus.title}</h3>
          <p class="text-gray-600 my-2">{formStatus.statusTitle}</p>
          <p> Have a great day!</p>
          <div class="py-10 text-center">
              <a href="/" class="px-12 bg-indigo-600 hover:bg-indigo-500 text-white font-semibold py-3">
                  GO BACK 
             </a>
          </div>
      </div>
  </div>
</div>