<style>
    .form-gap {
      padding-top: 70px;
  }
  </style>
  
  <script lang="ts">
      import axios, { AxiosError, type AxiosResponse } from "axios";
      import { BaseUrl, ShowMessage, apiBaseUrl, emailRegex } from "../service";
      import { slide } from 'svelte/transition';
      import { quintOut } from 'svelte/easing';
      import { Spinner, Button, Toast } from 'flowbite-svelte';
      import { CheckCircleSolid, CloseCircleSolid } from 'flowbite-svelte-icons';
      let email:string = "";
      let message:string = "";
      let errorMsg:string = "";

      let open = true;
      let counter = 6;

      function CheckInput(){
        if (email === ""){
          showMessage();
          errorMsg = "Email cannot be empty"
        }
        if(!emailRegex.test(email)){
            showMessage();
            errorMsg = "Email is not in correct format"
        }
        else{
          GenerateOTP();
        }
      }

      async function GenerateOTP() {
        errorMsg = ""
        message = ""
        disableSubmitButton();
        let res;
            res = await axios.get(apiBaseUrl + 'auth/resetpassword',{
              params:{
                email,
                url:BaseUrl+"changepassword?email="+email +"&otp="
              }
            })
            .then ((response : AxiosResponse) => {
              showMessage();
              if (response.status === 200){
                enableSubmitButton();
                message = "We have sent a link to your (spam) inbox!"
              }
            })
            .catch((reason : AxiosError) =>{
              showMessage();
              enableSubmitButton();
              if(reason.response?.status === 404){
                errorMsg = "Email not found!"
              }
              else{
                errorMsg = "There's some error, please try again"
              }
            })
      } 

      function showMessage(){
        open = true;
        counter = 6;
        timeout();
    }
  
      function disableSubmitButton() {
          (document.getElementById('submitButton') as HTMLButtonElement).hidden = true;
          (document.getElementById('loader') as HTMLElement).hidden = false;
          // (document.getElementById('resetpassword') as HTMLElement).hidden = true;
  
      }
      function enableSubmitButton(){
          (document.getElementById('submitButton') as HTMLButtonElement).hidden = false;
          (document.getElementById('loader') as HTMLElement).hidden = true;
          // (document.getElementById('resetpassword') as HTMLElement).hidden = false;
      }
      function timeout() {
        if (--counter > 0) return setTimeout(timeout, 1000);
        open = false;
      }
  </script>

<div class="flex flex-col items-center justify-center mb-12">
  <div class="w-auto max-w-sm p-4 bg-white border border-gray-200 rounded-lg shadow sm:p-6 md:p-8 dark:bg-gray-800 dark:border-gray-700 mt-28">
    <div class="space-y-6">
        <h5 class="text-xl font-medium text-gray-900 dark:text-white">Reset Password</h5>
        <div>
            <label for="email" class="peer block mb-2 text-sm font-medium text-gray-900 dark:text-white after:content-['*'] after:ml-0.5 after:text-red-500">Your email</label>
            <input type="email" bind:value={email} required name="email" id="email" class="peer-invalid bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" placeholder="name@gmail.com">
          </div>
        <div id="submitButton">
          <Button color="red" type="submit" class="w-full" on:click={CheckInput}>Reset Password</Button>
        </div>
        <div id="loader" hidden>
          <Button color="red" class='flex flex-wrap items-center gap-2 w-full'>
            <Spinner class="mr-3" size="4" color="white" />
            Loading ...
          </Button>
        </div>
      </div>
  </div>
  {#if errorMsg !== ""}
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
  {#if message !== ""}
  <div>
    <Toast color="green" transition={slide} params={{ delay: 250, duration: 300, easing: quintOut }} dismissable={false} bind:open>
      <svelte:fragment slot="icon">
        <CheckCircleSolid class="w-5 h-5" />
        <span class="sr-only">Check icon</span>
      </svelte:fragment>
      {message}.
    </Toast>
  </div>
  {/if}
</div>

